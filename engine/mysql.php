<?php
    $db = new mysqli("localhost", "root", "", "calculatorpc");
    if($db->connect_error)
    {
      die ("Database error:" . $db->connect_error);
    }

	function toObject($var)
    {
      return (object)$var;
    }

    $post = toObject($_POST);
    $get = toObject($_GET);
	if (isset($get->user) AND $get->user == "Logout")
    {
      session_destroy();
      header("Location: /");
    }
    if (isset($post->sign))
    {
      $email = $post->email; 
	  $pass = $post->password; 

      $user = $db->query(
        "SELECT *
        FROM users
        WHERE  Email = '$email'
        AND Password = '$pass';
        ");

    if ($user->num_rows == 1)
    {
      while($user_info = $user->fetch_assoc())
      {
        $_SESSION['user']['id'] = $user_info['id'];
        $_SESSION['user']['Email'] = $user_info['Email'];
        $_SESSION['user']['Password'] = $user_info['Password'];
        $_SESSION['user']['Name'] = $user_info['Name'];
      }
      header("Location: /");
    }  else {
      echo "User not found";
    }
  }
 ?>
