<?php
require_once 'db_connect.php';
require_once 'file_upload.php';

if ($_POST) {
    $place = $_POST['place'];
    $country = $_POST['country'];
    $des = $_POST['des'];
    $lon = $_POST['lon'];
    $lat = $_POST['lat'];
    $price = $_POST['price'];
    $sect = $_POST['sect'];
    $uploadError = '';
    //this function exists in the service file upload.
    $picture = file_upload($_FILES['picture']);

    $sql = "INSERT INTO destin (place, country, des, lon, lat, price, sect, picture) VALUES ('$place', '$country', '$des', '$lon', '$lat', $price, '$sect', '$picture->fileName')";

    if (mysqli_query($connect, $sql) === true) {
        $class = "success";
        $message = "The entry was successfully created ";
        $uploadError = ($picture->error != 0) ? $picture->ErrorMessage : '';
    } else {
        $class = "danger";
        $message = "Error while creating record. Try again: <br>" . $connect->error;
        $uploadError = ($picture->error != 0) ? $picture->ErrorMessage : '';
    }
    mysqli_close($connect);
} else {
    header("location: ../error.php");
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Update</title>
    <?php require_once '../components/boot.php' ?>
</head>

<body>
    <div class="container">
        <div class="mt-3 mb-3">
            <h1>Create request response</h1>
        </div>
        <div class="alert alert-<?= $class; ?>" role="alert">
            <p><?php echo ($message) ?? ''; ?></p>
            <p><?php echo ($uploadError) ?? ''; ?></p>
            <a href='../index.php'><button class="btn btn-primary" type='button'>Home</button></a>
        </div>
    </div>
</body>

</html>