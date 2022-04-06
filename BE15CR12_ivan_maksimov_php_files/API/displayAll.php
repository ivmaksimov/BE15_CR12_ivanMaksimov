 <?php
    require_once "../actions/db_connect.php";

    if ($_SERVER["REQUEST_METHOD"] == "GET") {
        $sql = "SELECT * FROM destin";
        $result = mysqli_query($connect, $sql);
        $row = mysqli_fetch_all($result, MYSQLI_ASSOC);

        mysqli_close($connect);

        if (count($row) == 0) {
            response(200, "No Data found", $row);
        } else {
            response(200, "Data Found", $row);
        }
    } else {
        response(400, "Invalid Request", null);
    }

    function response($status, $status_message, $row)
    {


        $response['status'] = $status;
        $response['status_message'] = $status_message;

        $response = $row;


        $json_response = json_encode($response);


        echo $json_response;
    }


    ?>