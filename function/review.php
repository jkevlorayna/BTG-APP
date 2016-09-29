 <?php
 // Allow from any origin
 if (isset($_SERVER['HTTP_ORIGIN'])) {
     // Decide if the origin in $_SERVER['HTTP_ORIGIN'] is one
     // you want to allow, and if so:
     header("Access-Control-Allow-Origin: {$_SERVER['HTTP_ORIGIN']}");
     header('Access-Control-Allow-Credentials: true');
     header('Access-Control-Max-Age: 86400');    // cache for 1 day
 }

 // Access-Control headers are received during OPTIONS requests
 if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {

     if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHOD']))
         header("Access-Control-Allow-Methods: GET, POST, OPTIONS");         

     if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']))
         header("Access-Control-Allow-Headers: {$_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']}");

     exit(0);
 }

$dsn = 'mysql:dbname=desigoc3_bcdtravelguide;host=localhost';
$user = 'desigoc3_bcdtrav';
$password = 'bcdtrav123';
try {
    $conn = new PDO($dsn, $user, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	
	
		
	$postdata = file_get_contents("php://input");
	$POST = json_decode($postdata);

	$id = (!isset($POST->Id)) ? 0 : $POST->Id;
	$GuestId = (!isset($POST->GuestId)) ? 0 : $POST->GuestId;
	$PlaceId = (!isset($POST->PlaceId)) ? 0 : $POST->PlaceId;
	$content = (!isset($POST->content)) ? 0 : $POST->content;
	$reviewDate = date('Y-m-d');
	
	
	if($id == 0) { 
		$query = $conn->prepare("INSERT INTO tbl_review (GuestId,content,reviewDate,PlaceId) VALUES(?,?,?,?)");
		$query->execute(array($GuestId,$content,$reviewDate,$PlaceId));	

	}else{
		$query = $conn->prepare("UPDATE tbl_review SET GuestId = ?  , content = ?  WHERE Id = ? ");
		$query->execute(array($GuestId,$content,$id));	
	}

	
} catch (PDOException $e) {
    echo 'Connection failed: ' . $e->getMessage();
}


				

			
			
?>