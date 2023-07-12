<?php

if (!isset($_POST["coupon_name"])) {
    header("location: /404.php");
}

require_once("../db_connect.php");

$id = $_POST["coupon_id"];
$name = $_POST["coupon_name"];
$type = $_POST["discount_type"];
$valid =$_POST["coupon_valid"];
$value = $_POST["discount_value"];
$max = $_POST["max_usage"];
$now = date('Y-m-d H:i:s');
$expries = $_POST["expries_at"];
$restrict = $_POST["usage_restriction"];

$sql = "UPDATE coupon SET coupon_name='$name',coupon_valid='$valid', discount_type='$type', discount_value='$value', max_usage='$max', expries_at='$expries' ,updated_at='$now',usage_restriction='$restrict' WHERE coupon_id=$id";

if ($conn->query($sql) === TRUE) {

    header("location: Coupon-list.php");
} else {
    echo "修改增資料錯誤: " . $conn->error;
}
