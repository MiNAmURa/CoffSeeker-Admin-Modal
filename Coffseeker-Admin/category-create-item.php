<?php
require_once("../db_connect.php");

$type = $_GET["type"] ?? 1;
$page = $_GET["page"] ?? 1;
$detail = $_GET["id"] ?? "";
//var_dump($detail);


$sql = "SELECT * FROM categories WHERE valid=1";
$result = $conn->query($sql);
$rows = $result->fetch_all(MYSQLI_ASSOC);

$lastIdSql = "SELECT MAX(items_id) AS lastId FROM categories_item";
$lastIdResult = $conn->query($lastIdSql);
$lastRow = $lastIdResult->fetch_assoc();
$lastId = $lastRow['lastId'];

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    header("location: category.php");
    exit();
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

    <title>新增小分類</title>

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

                <h1 class="text-center">新增分類</h1>
                <div class="container">
                    <form action="action/category/doCreate-item.php" method="post" class="py-2">
                        <div class="mb-3 row">
                            <label for="" class="col-sm-2 col-form-label">選擇大分類</label>
                            <div class="col-sm-10">
                                <select class="form-select" aria-label="Default select example" name="categories_id">
                                    <?php foreach ($rows as $row) : ?>
                                        <option value="<?= $row["categories_id"] ?>"><?= $row["categories_name"] ?></option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="" class="col-sm-2 col-form-label">分類名稱</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="name">
                            </div>

                        </div>

                        <div class="d-flex justify-content-end">
                            <a class="btn btn-secondary mx-3" href="category-item.php?id=<?= $detail ?>">取消</a>
                            <button class="btn btn-warning" type="submit">新增</button>
                        </div>

                </div>
                </form>


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


    <!-- j-query -->
    <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous">
    </script>

    <!-- Bootstrap JavaScript Libraries -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js" integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
    </script>

</body>

</html>