<?php

if (isset($_GET["coupon_name"])) {
    $name = $_GET["coupon_name"];

    require_once("../db_connect.php");

    if (!empty($_GET["coupon_name"])) {
        $sql = "SELECT coupon_id, coupon_name, coupon_code,coupon_valid,  discount_type, discount_value, created_at, expries_at, updated_at, max_usage, usage_restriction FROM coupon WHERE coupon_name LIKE '%$name%' AND coupon_valid";
        $result = $conn->query($sql);
        $rows = $result->fetch_all(MYSQLI_ASSOC);
        $coupon_count = $result->num_rows;
    } else {
        $coupon_count = 0;
    }
} else {
    $coupon_count = 0;
}

?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Coupon Search</title>

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

                <h1 class="text-center">Coupon Search</h1>

                <div class="container">
                    <div class="py-2">
                        <a class="btn btn-warning" href="coupon-list.php">回優惠卷列表</a>
                    </div>
                    <div class="py-2">
                        <form action="coupon-search.php">
                            <div class="row gx-2">
                                <div class="col">
                                    <input type="text" class="form-control" placeholder="搜尋優惠卷" name="coupon_name">
                                </div>
                                <div class="col-auto">
                                    <button class="btn btn-warning" type="submit">搜尋</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="py-2 d-flex justify-content-between align-items-center">
                        <?php if (isset($_GET["coupon_name"])) : ?>
                            <div>
                                搜尋 <?= $name ?> 的結果, 共有 <?= $coupon_count ?> 筆符合的資料
                            </div>
                        <?php endif; ?>
                    </div>
                    <?php if ($coupon_count != 0) : ?>
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>優惠卷名稱</th>
                                    <th>優惠卷代碼</th>
                                    <th>優惠卷狀態</th>
                                    <th>優惠卷種類</th>
                                    <th>優惠卷面額</th>
                                    <th>登錄時間</th>
                                    <th>到期日</th>
                                    <th>最後更新</th>
                                    <th>可使用次數</th>
                                    <th>優惠卷使用條件</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($rows as $row) : ?>
                                    <tr>
                                        <td><?= $row["coupon_id"] ?></td>
                                        <td><?= $row["coupon_name"] ?></td>
                                        <td><?= $row["coupon_code"] ?></td>
                                        <td><?= $row["coupon_valid"] ?></td>
                                        <td><?= $row["discount_type"] ?></td>
                                        <td><?= $row["discount_value"] ?></td>
                                        <td><?= $row["created_at"] ?></td>
                                        <td><?= $row["expries_at"] ?></td>
                                        <td><?= $row["updated_at"] ?></td>
                                        <td><?= $row["max_usage"] ?></td>
                                        <td><?= $row["usage_restriction"] ?></td>
                                        <td>
                                            <a href="Coupon.php?coupon_id=<?= $row["coupon_id"] ?>" class="btn btn-warning">顯示</a>
                                        </td>
                                    </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                    <?php endif; ?>
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