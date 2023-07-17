<?php
require_once("../db_connect.php");
$type = $_GET["type"] ?? 1;
$page = $_GET["page"] ?? 1;
$perPage = 10;

$startItem = ($page - 1) * $perPage;


// 排序
if ($type == 1) {
    $orderBy = "ORDER BY product_id ASC";
} elseif ($type == 2) {
    $orderBy = "ORDER BY product_id DESC";
} elseif ($type == 3) {
    $orderBy = "ORDER BY product_price ASC";
} elseif ($type == 4) {
    $orderBy = "ORDER BY product_price DESC";
} elseif ($type == 5) {
    $orderBy = "ORDER BY updated_at ASC";
} elseif ($type == 6) {
    $orderBy = "ORDER BY updated_at DESC";
} else {
    header("location: ../../404php");
    exit();
}

// 查詢商品總數
$sqlTotal = "SELECT COUNT(*) AS total FROM product WHERE product_valid = 1";
$resultTotal = $conn->query($sqlTotal);
$rowTotal = $resultTotal->fetch_assoc();
$totalProduct = $rowTotal['total'];

// 計算總頁數
$totalPage = ceil($totalProduct / $perPage);

// 查詢商品列表
$sql = "SELECT product_id, product_category, product_brand, product_name, product_amount, product_price, product_description,product_image, created_at, updated_at, product_valid FROM product WHERE product_valid = 1 $orderBy LIMIT $startItem, $perPage";

$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>標題</title>

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

            <h1 class="text-center" >Product-List</h1>
            <div class="container">
        <div class="row mb-4 mt-4">
            <form class="form-inline mb-3 me-4" role="search" action="product-search.php" method="get">
                <div class="form-group mr-3">
                    <div class="input-group">
                        <input class="form-control" type="text" placeholder="請輸入關鍵字" name="name">
                        <div class="input-group-append">
                            <button class="btn btn-outline-warning" type="submit">
                                <i class="fa-solid fa-magnifying-glass"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </form>
            <div class="d-flex align-items-center justify-content-between">
                <div class="btn-group ">
                    <a href="product-list.php?page=<?= $page ?>&type=1" class="btn btn-warning <?php if ($type == 1) echo "active"; ?>">編號 <i class="fa-solid fa-arrow-down-short-wide"></i></a>
                    <a href="product-list.php?page=<?= $page ?>&type=2" class="btn btn-warning <?php if ($type == 2) echo "active"; ?>">編號 <i class="fa-solid fa-arrow-down-wide-short"></i></a>
                    <a href="product-list.php?page=<?= $page ?>&type=3" class="btn btn-warning <?php if ($type == 3) echo "active"; ?>">價格<i class="fa-solid fa-arrow-down-short-wide"></i></a>
                    <a href="product-list.php?page=<?= $page ?>&type=4" class="btn btn-warning <?php if ($type == 4) echo "active"; ?>">價格<i class="fa-solid fa-arrow-down-wide-short"></i></a>
                    <a href="product-list.php?page=<?= $page ?>&type=5" class="btn btn-warning <?php if ($type == 5) echo "active"; ?>">更新時間<i class="fa-solid fa-arrow-down-short-wide"></i></a>
                    <a href="product-list.php?page=<?= $page ?>&type=6" class="btn btn-warning <?php if ($type == 6) echo "active"; ?>">更新時間<i class="fa-solid fa-arrow-down-wide-short"></i></a>
                </div>

                <div class="totalpage d-flex align-items-center">
                    共 <?= $totalProduct ?> 件商品，第 <?= $page ?> 頁
                    <!-- 新增商品icon -->
                    <!-- <a href="product-managing.php" class="ml-3 ms-3 ">
                        <button class="btn btn-outline-warning">管理下架商品</button>
                    </a> -->
                    <a href="product-create.php" class="ml-3 ms-3 ">
                        <button class="btn btn-outline-warning">新增商品</i></button>
                    </a>
                </div>
            </div>
        </div>
        <table class="table table-bordered ">
            <thead class="">
                <tr class="text-center">
                    <th class="text-nowrap text-center">編號</th>
                    <th class="text-center">圖片</th>
                    <th class="text-center">商品名稱</th>
                    <th>品牌</th>
                    <!-- <th>類別</th> -->
                    <th>價格</th>
                    <th class="text-nowrap">最後更新時間</th>
                    <th>狀態</th>
                    <th class="text-nowrap">動作</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $counter = 0;
                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                        // 取得商品資訊
                        $product_id = $row['product_id'];
                        // $product_category = $row['product_category'];
                        $product_brand = $row['product_brand'];
                        $product_name = $row['product_name'];
                        $product_amount = $row['product_amount'];
                        $product_price = $row['product_price'];
                        $product_description = $row['product_description'];
                        $product_image = $row['product_image'];
                        $created_at = $row['created_at'];
                        $updated_at = $row['updated_at'];
                        $product_valid = $row['product_valid'];
                        $status = ($product_valid == 1) ? '上架' : '下架';
                ?>
                        <tr class="<?= $row_class ?> align-middle">
                            <td class="text-center "><?= $product_id ?></td>
                            <td><img src="<?= $product_image ?>" alt="商品圖片" style="max-width: 60px;"></td>
                            <td>
                                <span class="fw-bold product_name"><?= $product_name ?></span>
                                <ul class="product_description mt-2 text-left">
                                    <li><i class="fa-regular fa-message me-2"></i><?= $product_description ?></li>
                                </ul>
                            </td>
                            <td class="text-nowrap text-center"><?= $product_brand ?></td>
                            <!-- <td class="text-nowrap text-center"><?= $product_category ?></td> -->
                            <td class="text-nowrap text-center">$ <?= $product_price ?></td>
                            <td class="text-center"><?= $updated_at ?></td>
                            <td class="text-nowrap"><?= $status ?></td>

                            <td class="text-nowrap">
                                <!-- 編輯icon -->
                                <a href="product-edit.php?id=<?= $product_id ?>"> <button class="btn btn-outline-warning "><i class="fa-solid fa-pencil"></i></button></a>
                                <!-- 刪除icon -->
                                <a href="action/product/doDelete.php?id=<?= $product_id ?>" class="" data-bs-toggle="modal" data-bs-target="#deleteModal<?= $product_id ?>"><button class="btn btn-outline-warning ms-2"><i class="fa-solid fa-trash-can"></i></button>
                                </a>

                                <!-- 刪除確認框 -->
                                <div class="modal fade" id="deleteModal<?= $product_id ?>" tabindex="-1" aria-labelledby="deleteModalLabel<?= $product_id ?>" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="deleteModalLabel<?= $product_id ?>">刪除</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                確定要刪除這個商品嗎？
                                            </div>
                                            <div class="modal-footer">
                                                <a href="action/product/doDelete.php?id=<?= $product_id ?>" class="btn btn-danger">刪除</a>
                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">取消</button>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                <?php
                        $counter++;
                    }
                } else {
                    echo "<tr><td colspan='8'>目前沒有商品資料</td></tr>";
                }
                ?>
            </tbody>
        </table>
        <!-- 最下面的頁數顯示 -->
        <footer>
            <nav aria-label="Page navigation example">
                <ul class="pagination ms-3 justify-content-center">
                    <?php for ($i = 1; $i <= $totalPage; $i++) : ?>
                        <li class="page-item <?php if ($i == $page) echo "active"; ?>">
                            <a class="page-link bg-warning border-0" href="product-list.php?page=<?= $i ?>&type=<?= $type ?>"><?= $i ?></a>
                        </li>
                    <?php endfor; ?>
                </ul>
            </nav>
        </footer>
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

    

</body>

</html>