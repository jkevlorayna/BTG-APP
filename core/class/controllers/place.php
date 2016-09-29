<?php 
$slim_app->get('/place/:id',function($id){
	$result = $GLOBALS['PlaceRepo']->Get($id);
	$result['placeTab'] = $GLOBALS['PlaceTabRepo']->DataList($id,'',0,0);
	echo json_encode($result);
});
$slim_app->get('/place/category/:id',function($id){
	$result = $GLOBALS['PlaceRepo']->GetByCategory($id);
	echo json_encode($result);
});
$slim_app->get('/search',function(){
	$result = $GLOBALS['PlaceRepo']->Search($_GET['searchText'],$_GET['pageNo'],$_GET['pageSize']);
	echo json_encode($result);
});
$slim_app->get('/budgetsearch',function(){
	$result = $GLOBALS['PlaceRepo']->SearchByCategoryBudget($_GET['categoryId'],$_GET['budget'],$_GET['pageNo'],$_GET['pageSize']);
	echo json_encode($result);
});
$slim_app->get('/place',function(){
	$result = $GLOBALS['PlaceRepo']->DataList($_GET['category'],$_GET['searchText'],$_GET['pageNo'],$_GET['pageSize']);
	echo json_encode($result);
});
$slim_app->delete('/place/:id',function($id){
	$GLOBALS['PlaceRepo']->Delete($id);
	
	function deleteDirectory($dir) { 
	if (!file_exists($dir)) return true; 
    if (!is_dir($dir) || is_link($dir)) return unlink($dir); 
        foreach (scandir($dir) as $item) { 
            if ($item == '.' || $item == '..') continue; 
            if (!deleteDirectory($dir . "/" . $item)) { 
                chmod($dir . "/" . $item, 0777); 
                if (!deleteDirectory($dir . "/" . $item)) return false; 
            }; 
        } 
        return rmdir($dir); 
	
	}
	deleteDirectory('uploads/'.$id);
});
$slim_app->post('/place',function(){
	$request = \Slim\Slim::getInstance()->request();
	$POST = json_decode($request->getBody());
	// print_r($POST);		
	$postId = (!isset($POST->Id)) ? 0 : $POST->Id;
		
	$id =  $GLOBALS['PlaceRepo']->Save($POST);
	
	if($postId == 0){
			$result = $GLOBALS['DefaultTabRepo']->DataList('',0,0);
			
			foreach($result['Results'] as $row){
				
				$data = new stdClass();
				$data->name = $row['name'];
				$data->PlaceId = $id;
				$GLOBALS['PlaceTabRepo']->Save($data);
			}
	}else{
			foreach($POST->placeTab->Results as $index => $row){
				$GLOBALS['PlaceTabRepo']->Save($row);
			}
	}
	echo $id;
	
});
$slim_app->get('/place/images/:id',function($id){
	$dir = 'uploads/'.$id;
	$images  = scandir($dir);
	$images	= array_diff($images, array('.', '..'));
	
	$count = count($images);
	if($count > 0){
				foreach($images as $row){
		
				if($row != '.' || $row != '..'){
					$imagesData[] = array(
					"filename" => $row
					);
		
				}
			}
			$data['Results'] = $imagesData;
			echo json_encode($data);
	}

});

$slim_app->get('/place/remove/image',function(){
	$id = $_GET['id'];
 $filename = $_GET['filename'];
	$file = 'uploads/'.$id.'/'.$filename;
	 $file;
	unlink($file);

});
// $slim_app->post('/place',function(){
	// echo $GLOBALS['PlaceRepo']->Save();
// });

?>