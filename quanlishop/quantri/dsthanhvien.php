<?php
if (isset($_GET['page'])) {
    $page = $_GET['page'];
} else {
    $page = 1;
}
$rowperpage = 5;
$startrow = $page * $rowperpage - $rowperpage;

ob_start();
$sql = "SELECT * FROM thanhvien LIMIT $startrow, $rowperpage";
$query = mysqli_query($conn, $sql);
$totalrow = mysqli_num_rows(mysqli_query($conn, "SELECT * FROM thanhvien"));
$totalpage = ceil($totalrow / $rowperpage);
$listpage = "";
for ($i = 1; $i <= $totalpage; $i++) {
    if ($listpage == $i) {
        $listpage .= '<li class="page-item active"><a class="page-link" href="admin.php?page_layout=user&page=' . $i . '">' . $i . '</a></li>';
    } else {
        $listpage .= '<li class="page-item"><a class="page-link" href="admin.php?page_layout=user&page=' . $i . '">' . $i . '</a></li>';
    }
}
?>
<div class="row">
    <ol class="breadcrumb">
        <li><a href="quantri.php"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
        <li class="active"></li>
    </ol>
</div><!--/.row-->

<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Quản lý thành viên</h1>
    </div>
</div><!--/.row-->


<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">

            <div class="panel-body" style="position: relative;">
                <table data-toggle="table" data-show-refresh="true" data-show-toggle="true" data-show-columns="true" data-search="true" data-select-item-name="toolbar1" data-sort-name="name" data-sort-order="desc">
                    <thead>
                        <tr>						        
                            <th data-sortable="true">ID</th>
                            <th data-sortable="true">Họ và tên</th>
                            <th data-sortable="true">Email</th>
                            <th data-sortable="true">Quyền</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            while ($row = (mysqli_fetch_array($query))) {
                                ?>
                                <tr>
                                    <td style=""><?php echo $row['id_thanhvien']; ?></td>
                                    <td style=""><?php echo $row['Name']; ?></td>
                                    <td style=""><?php echo $row['tai_khoan']; ?></td>
                                    <td><span class="label label-danger">
                                            <?php
                                            if ($row['quyen_truy_cap'] == 1) {
                                                echo "Member";
                                            } else {
                                                echo "Admin";
                                            }
                                            ?>                                            
                                        </span></td>   
                        <?php
                        }
                        ?>
                    </tbody>
                </table>
                <ul class="pagination" style="float: right;">
                    <?php
                        echo $listpage;
                    ?>
                </ul>
            </div>
        </div>
    </div>
</div><!--/.row-->	



