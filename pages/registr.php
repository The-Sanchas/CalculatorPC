<?php echo " Регистрация " ?>
<form method="post">
  <div class="row"><label>Email:</label><input name="email"
    type="email" value="" id="email" placeholder="Enter your E-mail">
  </div>
  <div class="row"><label>Password:</label><input name="password"
    type="password" value="" id ="password" placeholder="Enter your password">
  </div>
  <div class="row"><label>Name:</label><input name="name"
    type="name" value="" id="name" placeholder="Enter your Name">
  </div>
  <div class="row"><button name="sign">Sign in</button></div>
</form>


<?php

$err = array();
$count = false;
/*Если нажата кнопка на регистрацию,
 начинаем проверку*/
    if(isset($_POST['sign']))
  {
      if(empty($_POST['email']))
      {
          $err[] = 'Поле Email не может быть пустым!';
          $count = true;
      }
      else
      {
        if(!preg_match("/^[a-z0-9_.-]+@([a-z0-9]+\.)+[a-z]{2,6}$/i", $_POST['email']))
        {
          $err[] = 'Не правильно введен E-mail'."\n";
          $count = true;
        }
      }
      if(empty($_POST['password']))
      {
          $err[] = 'Поле password не может быть пустым!';
          $count = true;
      }
      else
      {
  
        if (preg_match('/[A-zА-я]+/', $_POST['password']))
        {
          $err[] = 'Не правильно введен password';
          $count = true;
        }
      }
      if($count == true)
      {
        foreach($err as $myerror)
        {
          echo $myerror." ";
        }
      }

    else
    {
        if(isset($post->sign))
      {
        $email=$post->email;
        $pass=$post->password;
        $name=$post->name;
        $user=$db->query("INSERT INTO users (`Name`, `Email`, `Password`) VALUES ('$name', '$email', '$pass')");
      }
    }
  }
 ?>