<?php
    $con = new mysqli('localhost', 'root', '', 'production_automation');
    $id=$_GET['id'];
    $con->query("DELETE FROM category WHERE id=$id");
    $con->close();
    header("location: category_list.php");
    

?>