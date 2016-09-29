<?php 
class CategoryRepository{
		 public function Get($id){
			global $conn;
			$query = $conn->query("SELECT * FROM tbl_category  WHERE Id = '$id'");
			return $query->fetch(PDO::FETCH_ASSOC);	
		}
		public function Delete($id){
			global $conn;
			$query = $conn->prepare("DELETE FROM  tbl_category  WHERE Id = '$id'");
			$query->execute();	
		}
		public function DataList($searchText,$pageNo,$pageSize,$show){
			global $conn;
					$pageNo = ($pageNo - 1) * $pageSize; 
					$limitCondition = $pageNo == 0 && $pageSize == 0 ? '' : 'LIMIT '.$pageNo.','.$pageSize;
					
					if($show==""){
						$whereCondition1 = "";
						$whereCondition2 = "";
					}else{
						$whereCondition1 = "AND show_mobile=".$show;
						$whereCondition2 = "WHERE show_mobile=".$show;
					}
					
					
					$query = $conn->query("SELECT * FROM  tbl_category WHERE category_name LIKE '%$searchText%' $whereCondition1 $limitCondition ");
					$count = $searchText != '' ? $query->rowcount() : $conn->query("SELECT * FROM  tbl_category $whereCondition2")->rowcount();
					
			$data = array();
			$data['Results'] = $query->fetchAll(PDO::FETCH_ASSOC);
			$data['Count'] = $count;
			return $data;	
		}
		public function Save(){
			global $conn;
			$request = \Slim\Slim::getInstance()->request();
			$POST = json_decode($request->getBody());
			
			$id = (!isset($POST->Id)) ? 0 : $POST->Id;
			$category_name = $POST->category_name;
			$category_desc = (!isset($POST->category_desc)) ? 0 : $POST->category_desc;
			$show_mobile = (!isset($POST->show_mobile)) ? 0 : $POST->show_mobile;
	
			if($id == 0) { 
				$query = $conn->prepare("INSERT INTO tbl_category (category_name,category_desc,show_mobile) VALUES(?,?,?)");
				$query->execute(array($category_name,$category_desc,$show_mobile));	
			}else{
				$query = $conn->prepare("UPDATE tbl_category SET category_name = ?  , category_desc = ? , show_mobile = ?  WHERE Id = ? ");
				$query->execute(array($category_name,$category_desc,$show_mobile,$id));	
			}

		}
}
 $GLOBALS['CategoryRepo'] = new CategoryRepository();



?>