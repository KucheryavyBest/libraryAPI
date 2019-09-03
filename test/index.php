<?php
  ini_set('display_errors', 1);
  error_reporting(E_ALL);
  ini_set("display_errors", 1);
 
  
$mainpath ='http://localhost/library/';  
 
  


echo 'Test  get  BookList method </b><br><br><br>';

$curl = curl_init();

$URL = $mainpath."api/book/";

echo $URL.'<br><br><br>';
  curl_setopt_array($curl, array(
  CURLOPT_URL => $URL 
));

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

if ($err) {
  echo "cURL Error #:" . $err;
} else {
  echo $response;
}
    
  
  
  
$testVal = '11';

echo 'Test Book get method for id<b>  ='.$testVal .'</b><br><br><br>';

$curl = curl_init();

$URL = $mainpath."api/book/".urlencode($testVal);

echo $URL.'<br><br><br>';
  
  curl_setopt_array($curl, array(
  CURLOPT_URL => $URL 
));

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

if ($err) {
  echo "cURL Error #:" . $err;
} else {
  echo $response;
}
  
  
  
  
  
  
$testVal = 'Akhil Sharma';

echo 'Test Author search method for:<b>  ='.$testVal .'</b><br><br><br>';

$curl = curl_init();

$URL = $mainpath."api/book/author/".urlencode($testVal);

echo $URL.'<br><br><br>';

curl_setopt_array($curl, array(
  CURLOPT_URL => $URL 
));

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

if ($err) {
  echo "cURL Error #:" . $err;
} else {
  echo $response;
}


echo '<br><br>';

$testVal = 'Memoirs of a Geisha';

echo 'Test BookName search method for:<b>  ='.$testVal .'</b><br><br><br>';

echo $URL.'<br><br><br>';

$curl = curl_init();

 $URL = $mainpath."api/book/name/".urlencode($testVal);

curl_setopt_array($curl, array(
  CURLOPT_URL => $URL 
));

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

if ($err) {
  echo "cURL Error #:" . $err;
} else {
  echo $response;
}




echo '<br><br>';

$testVal1 = 'Fantasy';
$testVal2 = 'Dystopia';

echo 'Test book search method for genre:<b>  ='.urlencode($testVal1).' and ' .urlencode($testVal2).'</b><br><br><br>';

$curl = curl_init();

$URL = $mainpath."api/book/genre/".$testVal1.'/'.$testVal2;

echo $URL.'<br><br><br>';

curl_setopt_array($curl, array(
  CURLOPT_URL => $URL 
));

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

if ($err) {
  echo "cURL Error #:" . $err;
} else {
  echo $response;
}




echo ' <br><br><br> Test book add new method <br><br><br> ';

// set post fields
$post = [
  'name_book' => 'new Book name',
  'first_pub_year' => '1978',
  'avarage_price' => '47.25',
  'id_publishing_house' => '18',
  'list_genre' => array( 10, 4, 6 ),
  'list_autors' => array( 31, 2, 12 ),
  'word_count' => '5487964'
];
echo 'input param:<br>';
var_dump($post);
echo '<br><br><br>';

$URL = $mainpath."api/book/";

echo $URL.'<br><br><br>';

$curl = curl_init($URL);

curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
curl_setopt($curl, CURLOPT_CUSTOMREQUEST, "POST");
curl_setopt($curl, CURLOPT_POSTFIELDS, http_build_query($post));

// execute!
$response = curl_exec($curl);

// close the connection, release resources used
curl_close($curl);

// do anything you want with your response
echo $response;







echo ' <br><br><br> Test book edit book with param <br><br><br> ';

// set post fields
$put = [
  'id_book' => 11, 
  'name_book' => 'updated name',
  'first_pub_year' => '1999',
  'avarage_price' => '111.11',
  'list_genre' => array( 1, 2, 3,4,5,6 ),
  'list_autors' => array( 1, 2, 3,4,5 )
];

var_dump($put);

echo '<br><br><br>';

$URL = $mainpath."api/book/";

echo $URL.'<br><br><br>';


$ch = curl_init($URL);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "PUT");
curl_setopt($ch, CURLOPT_POSTFIELDS,http_build_query($put));

$response = curl_exec($ch);

if (!$response) 
{
    return false;
}
else
	echo $response;









?>