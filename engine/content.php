<?php
    if($_GET == null) {
      require_once 'index.php'; echo "Главная";
    } else if (isset($_GET['page'])) {
      if ($_GET['page'] != "") {
        switch ($_GET['page']) {
          case '': require_once 'index.php'; break;
          case 'Login': require_once 'pages/avtor.php'; break;
          case 'Registration': require_once 'pages/registr.php'; break;
          //case 'Overview': require_once 'pages/overview.php'; break;
          case 'Calculator': require_once 'pages/calculator.php'; break;
          //case 'Values': require_once 'pages/values.php'; break;
          //case 'Contact': require_once 'pages/contact.php'; break;
          case 'Logout': session_destroy(); break;
          default: require_once 'index.php'; break;
        }
      }
    } else {
      echo " Такой страницы нет ";
    }
 ?>
