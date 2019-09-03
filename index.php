<?php

  ini_set('display_errors', 1);
  error_reporting(E_ALL);
  ini_set("display_errors", 1);

include "controller.php";

try {
	$api = new APIController();
	echo json_encode(['success'=>true,'res' => $api->run()]);
} catch (Exception $e) {
    echo json_encode(['success'=>false,'error' => $e->getMessage()]);
}



?>