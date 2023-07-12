<?php

if (!isset($_POST["coupon_name"])) {
    header("location: /404.php");
}

require_once("../db_connect.php");

$name = $_POST["coupon_name"];
$code = $_POST["coupon_code"];
$type = $_POST["discount_type"];
$valid = $_POST["coupon_valid"];
$value = $_POST["discount_value"];
$max = $_POST["max_usage"];
$times = $_POST["used_times"];
$now = date('Y-m-d H:i:s');
$expries = $_POST["expries_at"];
$restrict = $_POST["usage_restriction"];


$sql = "INSERT INTO coupon (coupon_name, coupon_code, discount_type, discount_value, coupon_valid ,created_at, expries_at,updated_at, max_usage, used_times, usage_restriction) VALUES ('$name', '$code', '$type','$value','$valid','$now','$expries','$now','$max', 0, '$restrict')";

// echo $sql;


if ($conn->query($sql) === TRUE) {

    $latestId = $conn->insert_id;
    // echo "優惠卷 新增完成, ID 為 $latestId";
    header("location: Coupon-list.php");
} else {
    echo "新增資料錯誤: " . $conn->error;
}

$conn->close();
