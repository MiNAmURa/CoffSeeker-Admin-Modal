<?php
require_once("../db_connect.php");

$whereClause = "WHERE ";


//顯示下架課程
if (isset($_GET["valid"])) {
    $whereClause .= " course.course_valid = 0";
} else {
    $whereClause .= " course.course_valid = 1";
}
//篩選
if (isset($_GET["search"])) {
    $search = $_GET["search"];
    $whereClause .= " AND course.course_name LIKE '%$search%'";
}

if (isset($_GET["type"])) {
    $type = $_GET["type"];
    $whereClause .= " AND course.course_type_id = $type";
}

if (isset($_GET["level"])) {
    $level = $_GET["level"];
    $whereClause .= " AND course.course_level_id = $level";
}
if (isset($_GET["location"])) {
    $location = $_GET["location"];
    $whereClause .= " AND course.course_location_id = $location";
}



if (isset($_GET["dateFrom"]) && isset($_GET["dateTo"])) {
    $dateFrom = $_GET["dateFrom"];
    $dateTo = $_GET["dateTo"];
    $whereClause .= " AND course.course_start_date >= '$dateFrom' AND course.course_start_date <= '$dateTo'";
} elseif (isset($_GET["dateFrom"]) && $_GET["dateFrom"] != "") {
    $dateFrom = $_GET["dateFrom"];
    $whereClause .= " AND course.course_start_date >= '$dateFrom'";
} elseif (isset($_GET["dateTo"]) && $_GET["dateTo"] != "") {
    $dateTo = $_GET["dateTo"];
    $whereClause .= " AND course.course_start_date <= '$dateTo'";
}

$orderClause = "ORDER BY ";
// 排序
if (isset($_GET["orderby"])) {
    $orderby = $_GET["orderby"];

    switch ($orderby) {
        case 1:
            $orderClause .= " course_created_at DESC";
            break;
        case 2:
            $orderClause .= "sign_start_date DESC";
            break;
        case 3:
            $orderClause .= "sign_start_date ASC";
            break;
        case 4:
            $orderClause .= "course_start_date DESC";
            break;
        case 5:
            $orderClause .= "course_start_date ASC";
            break;

        default:
            $orderClause .= " course_created_at DESC";
            break;
    }
} else {
    $orderClause .= " course_created_at DESC";
}


// 總筆數
$sqlTotal = "SELECT * FROM course 
JOIN course_type ON  course_type.course_type_id=course.course_type_id 
JOIN course_level ON  course_level.course_level_id=course.course_level_id 
JOIN course_location ON course.course_location_id = course_location.course_location_id
$whereClause 
$orderClause

";

// 分頁定義

$page = $_GET["page"] ?? 1;

if (isset($_GET["perPage"])) {
    $perPage = $_GET["perPage"];
} else {

    $perPage = 6;
}






$startItem = ($page - 1) * $perPage;

$resultTotal = $conn->query($sqlTotal);
$rowsTotal = $resultTotal->fetch_all(MYSQLI_ASSOC);

//計算總筆數
$totalResult = $resultTotal->num_rows;
//計算總頁數
$totalPage = ceil($totalResult / $perPage);
$limitClause = "LIMIT $startItem, $perPage";


$sql = "SELECT * FROM course 
JOIN course_type ON  course_type.course_type_id=course.course_type_id 
JOIN course_level ON  course_level.course_level_id=course.course_level_id 
JOIN course_location ON course.course_location_id = course_location.course_location_id
JOIN coffseeker_teachers ON coffseeker_teachers.teacher_id = course.teacher_id
$whereClause 
$orderClause
$limitClause
";



$result = $conn->query($sql);
$rows = $result->fetch_all(MYSQLI_ASSOC);




$sqlType = "SELECT * FROM course_type ";
$resultType = $conn->query($sqlType);
$typeRows = $resultType->fetch_all(MYSQLI_ASSOC);

$sqlLevel = "SELECT * FROM course_level ";
$resultLevel = $conn->query($sqlLevel);
$levelRows = $resultLevel->fetch_all(MYSQLI_ASSOC);

$sqlLocation = "SELECT * FROM course_location";
$resultLocation = $conn->query($sqlLocation);
$locationRows = $resultLocation->fetch_all(MYSQLI_ASSOC);

$sqlTeacher = "SELECT * FROM  coffseeker_teachers WHERE valid='1'";
$resultTeacher = $conn->query($sqlTeacher);
$teacherRows = $resultTeacher->fetch_all(MYSQLI_ASSOC);

//統整網址GET參數
$allGet = [
    'search' => isset($_GET["search"]) ? $_GET["search"] : null,
    'type' => isset($_GET["type"]) ? $_GET["type"] : null,
    'level' => isset($_GET["level"]) ? $_GET["level"] : null,
    'location' => isset($_GET["location"]) ? $_GET["location"] : null,
    'valid' => isset($_GET["valid"]) ? $_GET["valid"] : null,
    'orderby' => isset($_GET["orderby"]) ? $_GET["orderby"] : null,
    'dateFrom' => isset($_GET["dateFrom"]) ? $_GET["dateFrom"] : null,
    'dateTo' => isset($_GET["dateTo"]) ? $_GET["dateTo"] : null,
    'perPage' => isset($_GET["perPage"]) ? $_GET["perPage"] : null,

];

$allGetString = http_build_query(array_filter($allGet));
// var_dump($allGetString);

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

                <h1 class="text-center">Course-List</h1>
            <!-- ↓↓放置內容↓↓-->

           
           

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