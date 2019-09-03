<?php
class DBClass {

    private $host ;
    private $username ;
    private $password ;
    private $database ;

    public $connection;

	function __construct(){
		include ('api_conf.php');
		try{
			    $this->host = DB_CONFIG['host'];
				$this->username = DB_CONFIG['username'];
				$this->password = DB_CONFIG['password'];
				$this->database = DB_CONFIG['dbname'];
		}
		catch(PDOException $exception){
		echo "Error: " . $exception->getMessage();
		}
	}
	
    public function getConnection(){

        $this->connection = null;

        try{	
            $this->connection = new PDO("mysql:host=" . $this->host . ";dbname=" . $this->database, $this->username, $this->password);
            $this->connection->exec("set names utf8");
        }catch(PDOException $exception){
            echo "Error: " . $exception->getMessage();
        }

        return $this->connection;
    }
}
?>