<a href="/" title="home"><img src="images/logo2.png" alt="logo"></a>
<div class="links">
  <?php if (!isset($_SESSION['user'])): ?>
    <a href="/?page=Login" title="Login">Login</a>
    <a href="/?page=Registration" title="Registration">Registration</a>
  <?php else: ?>
    <span>Привет, <?php echo $_SESSION['user']['Name'];?></span>
    <a href="/?user=Logout" title="Logout">Log out</a>
    <!-- <button name="log_out">Выход</button> -->
  <?php endif; ?>
</div>
