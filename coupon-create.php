<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Creat Coupon</title>

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

                <h1 class="text-center">Creat Coupon</h1>

                <div class="container">
                    <div class="py-2">
                        <a class="btn btn-success" href="coupon-list.php">回優惠卷列表</a>
                    </div>
                    <form action="action/coupon/doCreate.php" method="post">
                        <div class="mb-3">
                            <label for="">優惠卷名稱：</label>
                            <input type="text" class="form-control" name="coupon_name" placeholder="例：炎炎夏日 外送免運卷" Required>
                        </div>
                        <div class="mb-3">
                            <label for="">優惠卷代碼：</label>
                            <input id="randomString" type="text" class="form-control" name="coupon_code" placeholder="例：Eda8F4s87Q" required>
                            <p>(可自定義10位大小寫英文、數字混雜字元)</p>
                            <button class="btn btn-success" type="button" onclick="generateCouponCode()">隨機生成一組代碼</button>
                        </div>
                        <div class="mb-3">
                            <label for="">優惠卷狀態：</label>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="coupon_valid" id="coupon_valid1" value="1" checked>
                                <label class="form-check-label" for="exampleRadios1">
                                    可使用
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="coupon_valid" id="coupon_valid2" value="-1">
                                <label class="form-check-label" for="exampleRadios2">
                                    停用
                                </label>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="">優惠卷類型：</label>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="discount_type" id="discount_type1" value="百分比" checked>
                                <label class="form-check-label" for="exampleRadios1">
                                    依售價百分比折價
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="discount_type" id="discount_type2" value="金額">
                                <label class="form-check-label" for="exampleRadios2">
                                    依優惠金額折價
                                </label>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="">優惠卷折價百分比 / 優惠卷面額大小：</label>
                            <input type="text" class="form-control" name="discount_value" placeholder="請填入折價% (5%) 或 折價面額 (100)" Required>
                        </div>
                        <div class="mb-3">
                            <label for="">可使用次數：</label>
                            <input type="text" class="form-control" name="max_usage" placeholder="請填入數字" Required>
                        </div>

                        <div class="mb-3">
                            <label for="">優惠卷到期日：</label>
                            <input type="date" name="expries_at" Required>
                        </div>

                        <div class="mb-3">
                            <label for="">優惠卷使用條件：</label>
                            <input type="text" class="form-control" name="usage_restriction" placeholder="例：炎炎夏日專案">
                        </div>

                        <button class="btn btn-success" type="submit">送出</button>
                    </form>
                </div>

                <script>
                    function generateCouponCode() {
                        var randomStringInput = document.getElementById('randomString');
                        var characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
                        var charactersLength = characters.length;
                        var randomString = '';
                        var length = 10;

                        for (var i = 0; i < length; i++) {
                            randomString += characters.charAt(Math.floor(Math.random() * charactersLength));
                        }

                        randomStringInput.value = randomString;
                    }
                </script>



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