<?php
// Access Control paramaters
header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept, Authorization");
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json");
header("Access-Control-Allow-Credentials", "true");
header("Access-Control-Allow-Methods", "GET,HEAD,OPTIONS,POST,PUT");

include("./connect.php");

$request = $_SERVER["REQUEST_METHOD"];

// getAllArticles : function that retrieves data from the database
function getAllArticles($con){
    $articles=[];
    $sql = "SELECT * from article";
    if($result = $con->query($sql)){
        $k =0;
        while($row = $result->fetch_assoc()){
            $articles[$k] = $row;
            $k++;
        }
    }
    echo json_encode($articles);
}
if($request === "GET"){
    getAllArticles($con);
}

?>