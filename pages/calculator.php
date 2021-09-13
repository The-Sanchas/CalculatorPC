<?php echo " Калькулятор " ?>
<span class="color-picker"></span> 

<br/><br/>


<!--<span class="custom-dropdown big">
    <select>
    </select>
</span>-->

<p> </p>

<span class="custom-dropdown big">
    <select>
        <option>Выберит плату</option>
        <option>Asus ROG Zenith II Extreme Alpha</option>
        <option>Asus Strix B450-E Gaming</option>
        <option>Asus TUF B450-Pro Gaming</option>
    </select>
</span>

<p> </p>

<span class="custom-dropdown big">
    <select>
        <option>Выберите процессор</option>
        <option>AMD Ryzen 5 2600 Pinnacle Ridge 3400Mhz</option>
        <option>AMD Ryzen 5 3600 Matisse 3600Mhz</option>
        <option>AMD Ryzen 7 3700X Matisse 3600Mhz</option>
        <option>Intel Core i5-10400F Comet Lake 2900Mhz</option>
        <option>Intel Core i7-10700K Comet Lake 3800Mhz</option>
        <option>Intel Core i9-9900X Skylake-X Refresh 3500Mhz</option>
    </select>
</span>
<p> </p>
<span class="custom-dropdown big">
    <select>
        <option>Выберите видеокарту</option>
        <option>Asus GeForce GTX 1050 Ti Phoenix 4GB </option>
        <option>Gigabyte GeForce GTX 1050 Ti OC 4GB </option>
        <option>MSI GeForce GTX 1050 Ti Gaming X 4GB </option>
        <option>MSI GeForce GTX 1080 Ti Aero 11G OC 11GB z</option>
    </select>
</span>
<form>
<div class="row"><button name="enter">Посчитать</button></div>
</form>

<!--<span class="custom-dropdown big">
 <div class="row"><label for="">CPU</lable><select name=cpu>
 <?php $cpu = $db->quary("SELECT * FROM cpu");
 while($row = $cpu->fetch_assoc())
 {
     ?>
     <option value='13'><?php
     echo $row['name'];
 } ?>
 </option>
 </select>
 </span>

 <p> </p>

 <span class="custom-dropdown big">
 <div class="row"><label for="">Video</lable><select name=motherboard>
 <?php $cpu = $db->quary("SELECT * FROM motherboard");
 while($row = $cpu->fetch_assoc())
 {
     ?>
     <option value='2'><?php
     echo $row['name'];
 } ?>
 </option>
 </select>
 </span>-->


