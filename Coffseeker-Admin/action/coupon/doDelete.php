<?php
if (!isset($_GET["coupon_id"])) {
    die("無法作業");
}
require_once("../../../db_connect.php");

$id = $_GET["coupon_id"];

$sql = "UPDATE coupon SET coupon_valid = 0 , valid_description='已刪除' WHERE coupon_id = $id";

if ($conn->query($sql) === TRUE) {
    header("location: ../../coupon-list.php");
} else {
    echo "刪除資料錯誤: " . $conn->error;
}
