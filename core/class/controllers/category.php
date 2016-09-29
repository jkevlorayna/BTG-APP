<?php 
$slim_app->get('/category/:id',function($id){
	$result = $GLOBALS['CategoryRepo']->Get($id);
	echo json_encode($result);
});
$slim_app->get('/category',function(){	
	$result = $GLOBALS['CategoryRepo']->DataList($_GET['searchText'],$_GET['pageNo'],$_GET['pageSize'],$_GET['show']);
	echo json_encode($result);
});
$slim_app->delete('/category/:id',function($id){
	$GLOBALS['CategoryRepo']->Delete($id);
});
$slim_app->post('/category',function(){
	$GLOBALS['CategoryRepo']->Save();
});
?>