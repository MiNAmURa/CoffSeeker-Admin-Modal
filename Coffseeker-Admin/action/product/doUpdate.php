<?php
require_once("../../../db_connect.php");

if (isset($_POST["product_id"])) {
    $product_id = $_POST["product_id"];
    $product_name = $_POST["product_name"];
    $product_brand = $_POST["product_brand"];
    $product_price = $_POST["product_price"];
    $product_valid = $_POST["product_valid"];
    // $product_category = implode(", ", $_POST["product_category"]);
    $product_amount = $_POST["product_amount"];
    $product_description = $_POST["product_description"];
    $current_time = date("Y-m-d H:i:s");

    // 執行更新
    $sql = "UPDATE product SET product_name='$product_name', product_brand='$product_brand', product_price='$product_price', product_category='$product_category', product_amount ='$product_amount', product_description='$product_description', product_valid = '$product_valid',updated_at='$current_time' WHERE product_id='$product_id' ";

    if ($conn->query($sql) === TRUE) {
        header("location: ../../product-list.php?id=" . $product_id);
        exit();
    } else {
        echo "更新資料錯誤: " . $conn->error;
    }
} else {
    header("location: ../../404.php");
    exit();
}
?>
