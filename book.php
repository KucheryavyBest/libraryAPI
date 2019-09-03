<?php
class Book{

    // Connection instance
    private $connection;
    // table name
    
    public function __construct($connection){
        $this->connection = $connection;
    }
	
    //C
    public function create(){
		$this->validateBookData($_POST);
		try{
			$this->connection->beginTransaction();
			$id = $this->GetMaxId();
			$query=$this->connection->prepare("insert into books (id_book,id_publishing_house,name_book,first_pub_year,word_count,avarage_price) 
												values (?,?,?,?,?,?) ");
			$query->execute([ $id, $_POST['id_publishing_house'] ,$_POST['name_book'],$_POST['first_pub_year'],$_POST['word_count'],$_POST['avarage_price'] ]);
			
			$query=$this->connection->prepare("insert into book_genre_rel values(?,?) ");
			for($i=0;$i< count($_POST['list_genre']);$i++ )
				$query->execute([$id,$_POST['list_genre'][$i]]);

		
			$query=$this->connection->prepare("insert into book_author_rel values(?,?) ");
			for($i=0;$i< count($_POST['list_autors']);$i++ )
				$query->execute([$id,$_POST['list_autors'][$i]]);
		
			$this->connection->commit();
		} catch(PDOException  $e ){
			$connection->rollback();
			echo "Error: ".$e;
		}		
		return $this->read($id);		

	}

	private function GetMaxId()
	{
		try{
			$query=$this->connection->prepare("select 1+max(id_book) maxid from books");
			$query->execute([]);
			$res=[];
			$row = $query->fetch(); 
			return $row['maxid'];
		} catch(PDOException  $e ){
			echo "Error: ".$e;
		}
	}
	
	private function validateBookData($data)
	{
		foreach ($data as $key => $value) {
			if($key == 'name_book')
			{
				if( 0 == strlen($value) )
					throw new Exception("Error: name_book cannot be empty");
			}

			if($key == 'first_pub_year')
			{   $checkedValue = filter_var($value, FILTER_VALIDATE_INT);
				if( !$checkedValue  )
					throw new Exception("Error: first_pub_year has bad values");
			}

			if($key == 'book_id')
			{   $checkedValue = filter_var($value, FILTER_VALIDATE_INT);
				if( !$checkedValue  )
					throw new Exception("Error: book_id has bad values");
			}
			
			if($key == 'word_count')
			{   $checkedValue = filter_var($value, FILTER_VALIDATE_INT);
				if( !$checkedValue  )
					throw new Exception("Error: word_count has bad values");
			}

			if($key == 'avarage_price')
			{   $checkedValue = filter_var($value, FILTER_SANITIZE_NUMBER_FLOAT);
				if( !$checkedValue  or $checkedValue < 0)
					throw new Exception("Error: avarage_price has bad values");
			}
			if($key == 'id_publishing_house')
			{   $checkedValue = filter_var($value, FILTER_VALIDATE_INT);
				if( !$checkedValue  or $checkedValue < 0)
					throw new Exception("Error: id_publishing_house has bad values");
			}
			if($key == 'list_genre')
			{   
				$checkedValue = filter_var($value, FILTER_VALIDATE_INT, array('flags'   => FILTER_REQUIRE_ARRAY,'options' => array('min_range' => 1)));
				foreach ($checkedValue as $key2=>$value2) 
				{ 
				if( !$value2  )
					throw new Exception("Error: list_genre has bad values");
				}
			}

			if($key == 'list_autors')
			{   
				$checkedValue = filter_var($value, FILTER_VALIDATE_INT, array('flags'   => FILTER_REQUIRE_ARRAY,'options' => array('min_range' => 1)));
				foreach ($checkedValue as $key2=>$value2) 
				{ 
				if( !$value2 )
					throw new Exception("Error: list_autors has bad values");
				}

			}
		}
		//throw new Exception("Error: book ID isn`t correct");
	}
	
	
	private function FormatRow($row)
	{
		$arr=[];
		foreach ($row as $key=>$value) 
		{  
			if ($key == 'list_genre' or $key == 'list_autors')  
				$arr[$key] = json_decode('[{ '.$value.'}]')[0];
				elseif (!is_int($key) ) $arr[$key] = $value;
		}
		unset($arr[0]);
		return 	$arr;
	}

	public function readGenre($genreArr)
	{
		$searchQuery = 'select * from (' . $this->GetSearchQuery().' ) t where  ';
		$addCond='';$errormsg='';
		foreach ($genreArr as $key => $value) {
				if(strlen($value)>0)
				{	
					$addCond = $addCond . ' t.list_genre like ?  and';
					$genreParamArr[] = '%\"'.urldecode($value).'\"%';
					$errormsg = $errormsg.' '.urldecode($value).' and ';
				}
			}

		$searchQuery = $searchQuery . substr($addCond,0,-3);

		try{
			$query=$this->connection->prepare($searchQuery);
			$query->execute($genreParamArr);
			$res=[];
				for($i=0; $row = $query->fetch(); $i++){
					$res[$row['id_book']] = $this->FormatRow($row);
				}
				if($i>0) 
					return $res;
				else
					throw new Exception("Error: book with genre = ". substr($errormsg,0,-4)." don`t found");
		} catch(PDOException  $e ){
			echo "Error: ".$e;
		}	
	}


	public function readName($bookName)
	{
		$bookName = urldecode($bookName);
		if(strlen($bookName) < 2 )
			throw new Exception("Error: Book name isn`t correct");
		
		$searchQuery = 'select * from (' . $this->GetSearchQuery().' ) t where t.name_book = ? ';

		try{
			$query=$this->connection->prepare($searchQuery);
			$query->execute([$bookName]);
			$res=[];
				for($i=0; $row = $query->fetch(); $i++){
					$res[$row['id_book']] = $this->FormatRow($row);
				}
				if($i>0) 
					return $res;
				else
					throw new Exception("Error: book with book_name =".$bookName." don`t found");
		} catch(PDOException  $e ){
			echo "Error: ".$e;
		}	
	}

	public function readAuthor($Author)
	{
		$Author = urldecode($Author);
		if(strlen($Author) < 2 )
			throw new Exception("Error: Author name isn`t correct");
		
		$searchQuery = 'select * from (' . $this->GetSearchQuery().' ) t where t.list_autors like ? ';

		try{
			$query=$this->connection->prepare($searchQuery);
			$query->execute(['%\"'.$Author.'\"%']);
			$res=[];
				for($i=0; $row = $query->fetch(); $i++){
					$res[$row['id_book']] = $this->FormatRow($row);
				}
				if($i>0) 
					return $res;
				else
					throw new Exception("Error: book with Author_name =".$Author." don`t found");
		} catch(PDOException  $e ){
			echo "Error: ".$e;
		}	
	}


    //R
    public function read($id=null){
		
		$var = filter_var($id, FILTER_VALIDATE_INT);
		if(!$var)
		{
			$QueryText = $this->GetSearchQuery();
			$paramArray=[];
		}
		else
		{
			$QueryText = $this->GetSearchQuery(1);
			$paramArray=[$var];
		}	
			
		try{
			$query=$this->connection->prepare($QueryText);
			
			$query->execute($paramArray);
			$res=[];
				for($i=0; $row = $query->fetch(); $i++){
					$res[$row['id_book']] = $this->FormatRow($row);
				}
				if($i>0) 
					return $res;
				else
					throw new Exception("Error: book with ID=".$var." don`t found");
		} catch(PDOException  $e ){
			echo "Error: ".$e;
		}
	}
	
	
	
    //U
    public function update(){
	$this->_parsePut();
	
	if(isset($GLOBALS[ '_PUT' ]['id_book']))
	{
		$GLOBALS[ '_PUT' ]['id_book'] = $this->isID($GLOBALS[ '_PUT' ]['id_book']);
		$this->validateBookData($GLOBALS[ '_PUT' ]);
		$updateQueryText = 'update books set';
		foreach ($GLOBALS[ '_PUT' ] as $key=>$value) 
		{
			if($key != 'id_book' && $key != 'list_genre' && $key != 'list_autors')
			{	
			$updateQueryText = $updateQueryText.' '.$key.'= ? ,';
			$param[] = $value;
			}
		}
		$updateQueryText = substr($updateQueryText,0,-1);
		$updateQueryText = $updateQueryText.' where id_book = ?';
		$param[] = $GLOBALS[ '_PUT' ]['id_book'];

		try{
			$query=$this->connection->prepare($updateQueryText);
			$query->execute($param);

			if(isset($GLOBALS[ '_PUT' ]['list_autors']))
			if(is_array($GLOBALS[ '_PUT' ]['list_genre']) )
			{
				$query=$this->connection->prepare('delete from book_genre_rel where id_book = ?');
				$query->execute([$GLOBALS[ '_PUT' ]['id_book']]);

			$query=$this->connection->prepare("insert into book_genre_rel values(?,?) ");
			for($i=0;$i< count($GLOBALS[ '_PUT' ]['list_genre']);$i++ )
				$query->execute([$GLOBALS[ '_PUT' ]['id_book'],$GLOBALS[ '_PUT' ]['list_genre'][$i]]);
			}

			if(isset($GLOBALS[ '_PUT' ]['list_autors']))
			if(is_array($GLOBALS[ '_PUT' ]['list_autors']))
			{
				$query=$this->connection->prepare('delete from book_author_rel where id_books = ?');
				$query->execute([$GLOBALS[ '_PUT' ]['id_book']]);

			$query=$this->connection->prepare("insert into book_author_rel values(?,?) ");
			for($i=0;$i< count($GLOBALS[ '_PUT' ]['list_autors']);$i++ )
				$query->execute([$GLOBALS[ '_PUT' ]['id_book'],$GLOBALS[ '_PUT' ]['list_autors'][$i]]);
			}
			return $this->read($GLOBALS[ '_PUT' ]['id_book']);
			
		} catch(PDOException  $e ){
			echo "Error: ".$e;
		}		
		
		//echo $insText;
		//var_dump($param);
	}	
	
	else
		throw new Exception("Error: book_id must be for update");
	
	}
	
    //D
    public function delete($id){
		$cid = $this->isID($id);
		try{
			$query=$this->connection->prepare("delete from books where id_book = ? ");
			$query->execute([$cid]);
		} catch(PDOException  $e ){
			echo "Error: ".$e;
		}		
		return 'book with ID='.$cid.' removed';
	}   
	
	
	
	
	private function isID($id)
	{
		$checkedVar = filter_var($id, FILTER_VALIDATE_INT);
		if(!$checkedVar)
			throw new Exception("Error: book ID isn`t correct");
		
		return $checkedVar;
	}
	

	private function GetSearchQuery($ifid=0)
	{
		$injection='';
		if($ifid)
			$injection = 'where a.id_book=?';
		
		return "
select 
    a.id_book,
	a.name_book,
	a.first_pub_year,
	a.avarage_price,
	a.id_publishing_house,
	a.name_publishing_house,
	a.list_genre,
GROUP_CONCAT(
		concat(
			'\"',a.id_autors,'\"',
			':','\"',
			a.name_author, '\"'
		) SEPARATOR ', ' 
	)  list_autors

from (

SELECT
	books.id_book,
	books.name_book,
	books.first_pub_year,
	books.avarage_price,
	publishing_house.id_publishing_house,
	publishing_house.name_publishing_house,
  author.id_autors,
  author.name_author,
	GROUP_CONCAT(
		concat(
			'\"',genre.id_genre,'\"',
			':',
			'\"',genre.name_genre,'\"'
		) SEPARATOR ', ' 
	) list_genre
FROM
	books,
	book_author_rel,
	book_genre_rel,
	author,
	genre,
	publishing_house
WHERE
	books.id_publishing_house = publishing_house.id_publishing_house
AND book_author_rel.id_books = books.id_book
AND book_author_rel.id_autor = author.id_autors
AND book_genre_rel.id_book = books.id_book
AND book_genre_rel.id_genre = genre.id_genre
GROUP BY
	books.id_book, author.id_autors
) a
".$injection."
GROUP BY
	a.id_book
	";
	}	


private function _parsePut(  )
{
    global $_PUT;

    /* PUT data comes in on the stdin stream */
    $putdata = fopen("php://input", "r");

    /* Open a file for writing */
    // $fp = fopen("myputfile.ext", "w");

    $raw_data = '';

    /* Read the data 1 KB at a time
       and write to the file */
    while ($chunk = fread($putdata, 1024))
        $raw_data .= $chunk;

    /* Close the streams */
    fclose($putdata);

    // Fetch content and determine boundary
    $boundary = substr($raw_data, 0, strpos($raw_data, "\r\n"));

    if(empty($boundary)){
        parse_str($raw_data,$data);
        $GLOBALS[ '_PUT' ] = $data;
        return;
    }

    // Fetch each part
    $parts = array_slice(explode($boundary, $raw_data), 1);
    $data = array();

    foreach ($parts as $part) {
        // If this is the last part, break
        if ($part == "--\r\n") break;

        // Separate content from headers
        $part = ltrim($part, "\r\n");
        list($raw_headers, $body) = explode("\r\n\r\n", $part, 2);

        // Parse the headers list
        $raw_headers = explode("\r\n", $raw_headers);
        $headers = array();
        foreach ($raw_headers as $header) {
            list($name, $value) = explode(':', $header);
            $headers[strtolower($name)] = ltrim($value, ' ');
        }

        // Parse the Content-Disposition to get the field name, etc.
        if (isset($headers['content-disposition'])) {
            $filename = null;
            $tmp_name = null;
            preg_match(
                '/^(.+); *name="([^"]+)"(; *filename="([^"]+)")?/',
                $headers['content-disposition'],
                $matches
            );
            list(, $type, $name) = $matches;

            //Parse File
            if( isset($matches[4]) )
            {
                //if labeled the same as previous, skip
                if( isset( $_FILES[ $matches[ 2 ] ] ) )
                {
                    continue;
                }

                //get filename
                $filename = $matches[4];

                //get tmp name
                $filename_parts = pathinfo( $filename );
                $tmp_name = tempnam( ini_get('upload_tmp_dir'), $filename_parts['filename']);

                //populate $_FILES with information, size may be off in multibyte situation
                $_FILES[ $matches[ 2 ] ] = array(
                    'error'=>0,
                    'name'=>$filename,
                    'tmp_name'=>$tmp_name,
                    'size'=>strlen( $body ),
                    'type'=>$value
                );

                //place in temporary directory
                file_put_contents($tmp_name, $body);
            }
            //Parse Field
            else
            {
				if(strpos($name,'[]') === false )
					$data[$name] = substr($body, 0, strlen($body) - 2);
				else
					$data[str_replace('[]','',$name)][] = substr($body, 0, strlen($body) - 2);
            }
        }

    }
    $GLOBALS[ '_PUT' ] = $data;
    return;
}

	
}


?>