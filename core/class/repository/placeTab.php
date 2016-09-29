<?php 
class PlaceTabRepository{
		 public function Get($id){
			global $conn;
			$query = $conn->query("SELECT * FROM tbl_place_tab  WHERE Id = '$id'");
			return $query->fetch(PDO::FETCH_ASSOC);	
		}
		public function Delete($id){
			global $conn;
			$query = $conn->prepare("DELETE FROM  tbl_place_tab  WHERE Id = '$id'");
			$query->execute();	
		}
		public function DataList($Id,$searchText,$pageNo,$pageSize){
			global $conn;
					$pageNo = ($pageNo - 1) * $pageSize; 
					$limitCondition = $pageNo == 0 && $pageSize == 0 ? '' : 'LIMIT '.$pageNo.','.$pageSize;
					$query = $conn->query("SELECT * FROM  tbl_place_tab WHERE PlaceId = '$Id' AND name LIKE '%$searchText%' $limitCondition ");
					$count = $searchText != '' ? $query->rowcount() : $conn->query("SELECT * FROM  tbl_place_tab WHERE PlaceId = '$Id' ")->rowcount();
					
			$data = array();
			$data['Results'] = $query->fetchAll(PDO::FETCH_ASSOC);
			$data['Count'] = $count;
			return $data;	
		}
		public function Save($POST){
			global $conn;
			// print_r($POST);
			$id = (!isset($POST->Id)) ? 0 : $POST->Id;
			$PlaceId = (!isset($POST->PlaceId)) ? 0 : $POST->PlaceId;
			$name = (!isset($POST->name)) ? 0 : $POST->name;
			$content = (!isset($POST->content)) ? 0 : $POST->content;
			
			if($id == 0){
				$query = $conn->prepare("INSERT INTO tbl_place_tab (name,PlaceId) VALUES(?,?)");
				$query->execute(array($name,$PlaceId));	
			}else{
				$query = $conn->prepare("UPDATE tbl_place_tab SET  content = ?  , name = ?  WHERE Id = ? ");
				$query->execute(array($content,$name,$id));	
			}
		}
		
}
 $GLOBALS['PlaceTabRepo'] = new PlaceTabRepository();



?>