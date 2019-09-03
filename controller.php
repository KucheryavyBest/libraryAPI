<?php
include 'dbclass.php';

class APIController
{
   public function __construct(){
        
		$db = new DBClass();
		$this->connection = $db->getConnection();
   }

   public function run(){
		if(strpos($_SERVER['REQUEST_URI'],'/api/') === false  )
		{ echo file_get_contents("readme.htm");die(); }
		else
		{    
			$requestParam = $this->ParseParam($_SERVER['REQUEST_URI']);
			if($requestParam[0] == 'book')
			{
				include "book.php";
				$book = new Book($this->connection);
				
				switch ($_SERVER['REQUEST_METHOD']) {
					case 'GET':
						if('author' == $requestParam[1] )
							return $book->readAuthor($requestParam[2]);	
						elseif('name' == $requestParam[1] )
							return $book->readName($requestParam[2]);	
						elseif('genre' == $requestParam[1] )
							return $book->readGenre(array_slice($requestParam,2));	
						else	
							return $book->read($requestParam[1]);
					case 'POST':
						return $book->create();
					case 'PUT':
						return $book->update();
					case 'DELETE':
						return $book->delete($requestParam[1]);
				}
			}
		}	
    }
	private function ParseParam($string)
	{
		$ind=0;
		$res=[];
		$allparam = explode('/',$string);
		for($i=0;$i< count($allparam);$i++)
		{
			if($allparam[$i] == 'api')
				$ind = $i;
			if($i > $ind and $ind != 0)
				$res[] = $allparam[$i];
		}	
			
		return $res;
	}

}

?>