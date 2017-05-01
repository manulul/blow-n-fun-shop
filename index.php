<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="description" content="Blow 'n' Fun">
    <title>Blow 'n' Fun</title>
    <link rel="stylesheet" href="style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    </head>

    <body>
    <h1 class="w3-center">Blow 'n' Fun Baby!</h1>	

    <?php
$servername = "localhost";
$username = "root";
$password = "";
 
try {
    $conn = new PDO("mysql:host=$servername;dbname=blownfun", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    //echo "Connected successfully";
    }
catch(PDOException $e)
    {
    echo "Connection failed: " . $e->getMessage();
    }
 
 
$stmt = $conn->prepare("SELECT * FROM products");
$stmt->execute();
//var_dump($stmt);
$results = $stmt->fetchAll(PDO::FETCH_ASSOC);
//var_dump($results);
 
 
 
?>
<section class="w3-container w3-center w3-teal">
<?php
	foreach ($results as $result) { ?>
<article class="product">
	<h3>
		<?php echo $result["name"]; ?>
	
	</h3>
	
	<img class="product__img" src="images/<?php echo $result["img"]; ?>">
	<h3>
		<?php echo $result["price"]; ?> KR
	
	</h3>
</article>
<?php
} ?>

<script type="text/javascript">
       var modal = document.getElementById('modal')
});
</script>

</section>
    </body>
    </html>
