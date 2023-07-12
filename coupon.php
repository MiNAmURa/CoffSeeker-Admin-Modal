<?php
if(!isset($_GET["coupon_id"])){
    // die("資料不存在");
    header("location: 404.php");
}
$id=$_GET["coupon_id"];

require_once("../db_connect.php");
$sql="SELECT * FROM coupon WHERE coupon_id=$id";
$result = $conn->query($sql);
$row = $result->fetch_assoc();


// $sqlLike="SELECT user_like.*, product.name AS product_name FROM user_like 
// JOIN product ON user_like.product_id = product.id
// WHERE user_like.user_id = $id";
// $resultLike = $conn->query($sqlLike);
// $rowsLike = $resultLike->fetch_all(MYSQLI_ASSOC);

?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Coupon</title>

    <?php include("modal/template.php") ?>
</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <?php include("modal/sidebar.php") ?>

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <?php include("modal/topbar.php") ?>

                <!-- ↓↓放置內容↓↓-->

                <h1 class="text-center">Coupon</h1>

                <div class="container">
        <div class="py-2">
            <a class="btn btn-success" href="Coupon-list.php">回優惠卷列表</a>
        </div>
        <table class="table table-bordered ">
            <tr>
                <th>優惠卷名稱</th>
                <td><?=$row["coupon_name"]?></td>
            </tr>
            <tr>
                <th>優惠卷代碼</th>
                <td><?=$row["coupon_code"]?></td>
            </tr>
            <tr>
                <th>優惠卷狀態</th>
                <td><?=$row["coupon_valid"]?></td>
            </tr>
            <tr>
                <th>優惠卷種類</th>
                <td><?=$row["discount_type"]?></td>
            </tr>
            <tr>
                <th>優惠卷面額</th>
                <td><?=$row["discount_value"]?></td>
            </tr>
            <tr>
                <th>登錄時間</th>
                <td><?=$row["created_at"]?></td>
            </tr>
            <tr>
                <th>到期日</th>
                <td><?=$row["expries_at"]?></td>
            </tr>
            <tr>
                <th>最後更新</th>
                <td><?=$row["updated_at"]?></td>
            </tr>
            <tr>
                <th>可使用次數</th>
                <td><?=$row["max_usage"]?></td>
            </tr>
            <tr>
                <th>優惠券使用條件</th>
                <td><?=$row["usage_restriction"]?></td>
            </tr>
        </table>
        <div class="py-2">
            <a class="btn btn-success" href="Coupon-edit.php?coupon_id=<?=$row["coupon_id"]?>">編輯</a>
        </div>
       
    </div>

                <!-- ↑↑放置內容↑↑ -->
            </div>
            <!-- End of Main Content -->

            <?php include("modal/footer.php") ?>

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>



</body>

</html>