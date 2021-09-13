<?php
  session_start();
  require_once 'engine/mysql.php';
  // var_dump($_SESSION);
?>
<html>
    <head>
         <meta http-http-equiv="content-type" content = "text/html"; charset="UTF-8">
         <title>Calculator_PC</title>
         <link href="style.css" rel="stylesheet">
    </head>
    <body>
      <div id="wrapper">
           <div id="header">
             <?php require_once 'template/header.php';?>
             </div>

           <div id="menu">
             <?php require_once 'template/menu.php';?>
           </div>
           <div id="content">
             <?php require_once 'engine/content.php';?>
            </div>
         </div>
    </body>
</html>
