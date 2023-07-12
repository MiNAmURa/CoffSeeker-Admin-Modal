<?php
require_once("../db_connect.php");

$coffsql = "SELECT users.* ,

user_grade.grade AS user_grade FROM users 

JOIN user_grade ON user_grade.grade_id = users.user_grade_id

WHERE user_valid = 1 ORDER BY id ASC";

$getuser = $conn->query($coffsql);
$coffusers = $getuser->fetch_all(MYSQLI_ASSOC);
?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>User-List</title>

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

                <div class="container">
                    <h1 class="text-center py-4">會員清單</h1>
                    <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>名稱</th>
                            <th>性別</th>
                            <th>電話</th>
                            <th>信箱</th>
                            <th>生日</th>
                            <th>加入日期</th>
                            <th>會員等級</th>
                            <th></th>
                        </tr>
                    </thead>

                    <tbody>
                        <?php foreach ($coffusers as $user) : ?>
                            <tr>
                                <td>
                                    <?= $user["id"]; ?>
                                </td>
                                <td>
                                    <?= $user["user_name"]; ?>
                                </td>
                                <td>
                                    <?= $user["user_gender"]; ?>
                                </td>
                                <td>
                                    <?= $user["user_phone"]; ?>
                                </td>
                                <td>
                                    <?= $user["user_email"]; ?>
                                </td>
                                <td>
                                    <?= $user["user_birthday"]; ?>
                                </td>
                                <td>
                                    <?= $user["user_created_at"]; ?>
                                </td>
                                <td>
                                    <?= $user["user_grade"]; ?>
                                </td>
                                <td>
                                    <a class="btn btn-warning" href="user-detail.php?id=<?= $user["id"] ?>">詳細</a>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                    </table>

                </div>



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