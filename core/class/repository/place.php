<?php 
class PlaceRepository{
		public function Get($id){
			global $conn;
			$query = $conn->query("SELECT * FROM tbl_place  WHERE Id = '$id'");
			return $query->fetch(PDO::FETCH_ASSOC);	
		}
		public function GetByCategory($id){
			global $conn;
			$query = $conn->query("SELECT * FROM tbl_place  WHERE CategoryId = '$id'");
			$count = $query->rowcount();
			$data = array();
			$data['Results'] = $query->fetchAll(PDO::FETCH_ASSOC);
			$data['Count'] = $count;
			return $data;
		}
		public function Delete($id){
			global $conn;
			$query = $conn->prepare("DELETE FROM  tbl_place  WHERE Id = '$id'");
			$query->execute();	
		}
		public function SearchByCategoryBudget($categoryId,$budget,$pageNo,$pageSize){
			global $conn;
			$pageNo = ($pageNo - 1) * $pageSize; 
			$limitCondition = $pageNo == 0 && $pageSize == 0 ? '' : 'LIMIT '.$pageNo.','.$pageSize;
			$query = $conn->query("SELECT *,tbl_place.Id As Id FROM  tbl_place
			LEFT JOIN tbl_category ON tbl_category.Id = tbl_place.CategoryId
			WHERE tbl_place.CategoryId = '$categoryId' AND  $budget BETWEEN budget_from AND  budget_to  $limitCondition ");
			$count = $categoryId != '' ? $query->rowcount() : $conn->query("SELECT * FROM  tbl_place")->rowcount() ;

			$data = array();
			$data['Results'] = $query->fetchAll(PDO::FETCH_ASSOC);
			$data['Count'] = $count;
			return $data;	
		}
		public function Search($searchText,$pageNo,$pageSize){
			global $conn;
			$pageNo = ($pageNo - 1) * $pageSize; 
			$limitCondition = $pageNo == 0 && $pageSize == 0 ? '' : 'LIMIT '.$pageNo.','.$pageSize;
			$query = $conn->query("SELECT *,tbl_place.Id As Id FROM  tbl_place
			LEFT JOIN tbl_category ON tbl_category.Id = tbl_place.CategoryId
			WHERE name LIKE '%$searchText%' OR category_name LIKE '%$searchText%' OR Tags LIKE '%$searchText%'   $limitCondition ");
			$count = $searchText != '' ? $query->rowcount() : $conn->query("SELECT * FROM  tbl_place")->rowcount() ;

			$data = array();
			$data['Results'] = $query->fetchAll(PDO::FETCH_ASSOC);
			$data['Count'] = $count;
			return $data;	
		}
		public function DataList($category,$searchText,$pageNo,$pageSize){
			global $conn;
			$category = $category=='all' ? '' : $category;
			$pageNo = ($pageNo - 1) * $pageSize; 
			$limitCondition = $pageNo == 0 && $pageSize == 0 ? '' : 'LIMIT '.$pageNo.','.$pageSize;
			$query = $conn->query("SELECT *,tbl_place.Id As Id FROM  tbl_place
			LEFT JOIN tbl_category ON tbl_category.Id = tbl_place.CategoryId
			WHERE name LIKE '%$searchText%' AND category_name LIKE '%$category%'  $limitCondition ");
			$count = $searchText != '' ? $query->rowcount() : $conn->query("SELECT * FROM  tbl_place")->rowcount() ;

			$data = array();
			$data['Results'] = $query->fetchAll(PDO::FETCH_ASSOC);
			$data['Count'] = $count;
			return $data;	
		}
		public function Save($POST){
			global $conn;

			$id = (!isset($POST->Id)) ? 0 : $POST->Id;
			$name = (!isset($POST->name)) ? 0 : $POST->name;
			$address = (!isset($POST->address)) ? 0 : $POST->address;
			$geoLocation = (!isset($POST->geoLocation)) ? 0 : $POST->geoLocation;
			$description = (!isset($POST->description)) ? 0 : $POST->description;
			$CategoryId = (!isset($POST->CategoryId)) ? 0 : $POST->CategoryId;
			$contactInfo = (!isset($POST->contactInfo)) ? 0 : $POST->contactInfo;
			$latitude = (!isset($POST->latitude)) ? 0 : $POST->latitude;
			$longitude = (!isset($POST->longitude)) ? 0 : $POST->longitude;
			$budget_from = (!isset($POST->budget_from)) ? 0 : $POST->budget_from;
			$budget_to = (!isset($POST->budget_to)) ? 0 : $POST->budget_to;
			$website_url = (!isset($POST->website_url)) ? 0 : $POST->website_url;
			$Tags = (!isset($POST->Tags)) ? 0 : $POST->Tags;


			if($id == 0) { 
				$query = $conn->prepare("INSERT INTO tbl_place (name,address,geoLocation,description,CategoryId,contactInfo,latitude,longitude,budget_from,budget_to,website_url) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)");
				$query->execute(array($name,$address,$geoLocation,$description,$CategoryId,$contactInfo,$latitude,$longitude,$budget_from,$budget_to,$website_url,$Tags));
				$id = $conn->lastInsertId(); 
			    mkdir("uploads/".$id,0777,true);
				return $id;
			}else{ 
				$query = $conn->prepare("UPDATE tbl_place SET name = ? , address = ? , geoLocation = ? , description = ? , CategoryId = ? , contactInfo = ? , latitude = ? , longitude = ? , budget_from = ? , budget_to = ? , website_url = ? , Tags = ?  WHERE Id = ? ");
				$query->execute(array($name,$address,$geoLocation,$description,$CategoryId,$contactInfo,$latitude,$longitude,$budget_from,$budget_to,$website_url,$Tags,$id));	
			}
			return $id;
		}


				
		
}		
 $GLOBALS['PlaceRepo'] = new PlaceRepository();

?>