<?php

require "config.php";

$get_id = $_GET['id'];
$data = "DELETE FROM Trading WHERE id=:id";
$statement = $connection->prepare($data);

if ($statement->execute([":id" => $get_id])){
    header("Location: http://localhost/PJCT/PRT3/show.php");
}
