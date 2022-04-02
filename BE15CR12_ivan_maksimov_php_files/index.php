<?php
require_once 'actions/db_connect.php';

$sql = "SELECT * FROM destin WHERE sect = 'summer'";
$result = mysqli_query($connect, $sql);
$tbody = ''; //this variable will hold the body for the table
if (mysqli_num_rows($result)  > 0) {
    while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
        $tbody .= "<div style='background-image:url(./pictures/" . $row['picture'] . ");' class='box1'><a href='details.php?id=" . $row['id'] . "'
          ><h1 class='dest'>" . $row['place'] . " <span class='h3'>  " . $row['country'] . "</span></h1></a
        >
      </div>";
    };
} else {
    $tbody =  "<h1>No Data Available </h1>";
}

$sqla = "SELECT * FROM destin WHERE sect = 'winter'";
$resulta = mysqli_query($connect, $sqla);
$wbody = ''; //this variable will hold the body for the table
if (mysqli_num_rows($resulta)  > 0) {
    while ($rows = mysqli_fetch_array($resulta, MYSQLI_ASSOC)) {
        $wbody .= "<div style='background-image:url(./pictures/" . $rows['picture'] . ");' class='box1'><a href='details.php?id=" . $rows['id'] . "'
          ><h1 class='dest'>" . $rows['place'] . " <span class='h3'>  " . $rows['country'] . "</span></h1></a
        >
      </div>";
    };
} else {
    $wbody =  "<h1>No Data Available </h1>";
}

$sqlb = "SELECT * FROM destin WHERE sect = 'special'";
$resultb = mysqli_query($connect, $sqlb);
$sbody = ''; //this variable will hold the body for the table
if (mysqli_num_rows($resultb)  > 0) {
    while ($rowb = mysqli_fetch_array($resultb, MYSQLI_ASSOC)) {
        $sbody .= "<div style='background-image:url(./pictures/" . $rowb['picture'] . ");' class='box1'><a href='details.php?id=" . $rowb['id'] . "'
          ><h1 class='dest'>" . $rowb['place'] . " <span class='h3'>  " . $rowb['country'] . "</span></h1></a
        >
      </div>";
    };
} else {
    $sbody =  "<h1>No Data Available </h1>";
}

mysqli_close($connect);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Agency</title>
    <link rel="stylesheet" href="./componentss/xxx.css" />
</head>

<body class="home grid-container ">
    <div class="head">
        <h1 class="name">Welcome to MOUNT EVEREST Travel Agency</h1>
    </div>
    <div class="be1">
        <a href="create.php"><button class="btn">Add New Destination</button></a>
        <a href="Api/displayAll.php"><button class="btn back">API</button></a>
    </div>
    <div>
        <h1 class="price shadow">SUMMER DESTINATIONS</h1>
    </div>
    <div class="image-grid1">
        <?= $tbody; ?>
    </div>
    </div>
    <div>
        <h1 class="price shadow">WINTER DESTINATONS</h1>
    </div>
    <div class="image-grid2">
        <?= $wbody; ?>
    </div>
    <div>
        <h1 class="price shadow">SPECIAL DESTINATIONS</h1>
    </div>
    <div class="image-grid3">
        <?= $sbody; ?>
    </div>
</body>

</html>