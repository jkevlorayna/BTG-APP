<?php 
class PagesRepository{
		public function Get($id){
			global $conn;
			$query = $conn->query("SELECT * FROM tbl_pages  WHERE Id = '$id'");
			return $query->fetch(PDO::FETCH_ASSOC);	
		}
		public function Delete($id){
			global $conn;
			$query = $conn->prepare("DELETE FROM  tbl_pages  WHERE Id = '$id'");
			$query->execute();	
		}
		public function DataList($searchText,$pageNo,$pageSize,$status){
			global $conn;

			$pageNo = ($pageNo - 1) * $pageSize; 
			$limitCondition = $pageNo == 0 && $pageSize == 0 ? '' : 'LIMIT '.$pageNo.','.$pageSize;
			$statusCondition = $status == '' ? '' : "AND status = ".'"'.$status.'"';
			$query = $conn->query("SELECT * FROM  tbl_pages WHERE name LIKE '%$searchText%' $statusCondition $limitCondition");
			$count = $searchText != '' && $status != '' ? $query->rowcount() : $conn->query("SELECT * FROM  tbl_pages")->rowcount();
			$data = array();
			$data['Results'] = $query->fetchAll(PDO::FETCH_ASSOC);
			$data['Count'] = $count;
			return $data;	
		}
		public function Save(){
			global $conn;
			$request = \Slim\Slim::getInstance()->request();
			$POST = json_decode($request->getBody());
			
	
			$id  = (!isset($POST->Id))? 0 : $POST->Id;
			$name =  $POST->name;
			$content  = (!isset($POST->content))? 0 : $POST->content;
			$status  = (!isset($POST->status))? 0 : $POST->status;
			$date_added = date('Y-m-d');
			$date_updated = date('Y-m-d');

			if($id == 0) { 
				$query = $conn->prepare("INSERT INTO tbl_pages (name,content,status,date_added) VALUES(?,?,?,?)");
				$query->execute(array($name,$content,$status,$date_added));
			}else{ 
				$query = $conn->prepare("UPDATE tbl_pages SET name = ? , content = ? , status = ? , date_updated = ?  WHERE Id  = ? ");
				$query->execute(array($name,$content,$status,$date_updated,$id));	
			}
		}
}
 $GLOBALS['PagesRepo'] = new PagesRepository();
?>