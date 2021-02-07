<?php
error_reporting(0);
include('connection.php');
    // session_start();

    // if(isset($_SESSION['User']))
    // {
    //     echo ' Well Come ' . $_SESSION['User'].'<br/>';
    //     echo '<a href="logout1.php?logout">Logout</a>';
    // }
    // else
    // {
    //     header("location:index1.php");
    // }
    $db = mysqli_connect("localhost", "root", "", "goonj1");

    $result = mysqli_query($db, "SELECT * FROM questions where dname='coding' ");

?>
<!DOCTYPE HTML>
<html>
<head>



<script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      // Load the Google Transliterate API
      google.load("elements", "1", {
            packages: "transliteration"
          });
      function onLoad() {     
  var options = {
          sourceLanguage: 'en',
          destinationLanguage: ['gu'],        
          transliterationEnabled: true
        };  
     
var control = new google.elements.transliteration.TransliterationControl(options);  
var ids = [ "first_name", "last_name" ];  
  control.makeTransliteratable(ids);
      }
      google.setOnLoadCallback(onLoad);
    </script>





    
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<title>Details</title>
<link rel="stylesheet" type="text/css" href="">
<style>
table {
border-collapse: collapse;
width: 100%;
color: #588c7e;
font-family: monospace;
font-size: 20px;
text-align: left;
}
th {
background-color: #5b6e2e;
color: white;
}
button{
    background-color:  #2E8B57
}
.jumbotron{
    
    
background-color: #5b6e2e;
color: white;

}
.name{
    text-align: center;

}
tr:nth-child(even) {background-color: #f2f2f2}

html, body {
      min-height: 100%;
      }
      body, div, form, input, select, textarea, p { 
      padding: 0;
      margin: 0;
      outline: none;
      font-family: Roboto, Arial, sans-serif;
      font-size: 14px;
      color: #666;
      line-height: 22px;
      }
      .testbox {
      display: flex;
      justify-content: center;
      align-items: center;
      height: inherit;
      padding: 20px;
      }
      .row {
  display: flex;
}

.column {
  flex: 50%;
}

      form {
      width: 100%;
      padding: 20px;
      border-radius: 6px;
      background: #fff;
      box-shadow: 0 0 30px 0 #a37547; 
      }
      .banner {
      position: relative;
      height: 230px;
    }
      display: flex;
      justify-content: center;
      align-items: center;
      text-align: center;
      }
      .banner::after {
      content: "";
      background-color: rgba(0, 0, 0, 0.4); 
      position: absolute;
      width: 100%;
      height: 100%;
      }
      input, select, textarea {
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 3px;
      }
      input {
      width: calc(100% - 10px);
      padding: 5px;
      }
      select {
      width: 100%;
      padding: 7px 0;
      background: transparent;
      }
      textarea {
      width: calc(100% - 12px);
      padding: 5px;
      }
      .item:hover p, .item:hover i, .question:hover p, .question label:hover, input:hover::placeholder {
      color: #a37547;
      }
      .item input:hover, .item select:hover, .item textarea:hover {
      border: 1px solid transparent;
      box-shadow: 0 0 6px 0 #a37547;
      color: #a37547;
      }
      .item {
      position: relative;
      margin: 10px 0;
      }
      input[type=radio], input[type=checkbox]  {
      display: none;
      }
      label.radio {
      position: relative;
      display: inline-block;
      margin: 5px 20px 15px 0;
      cursor: pointer;
      }
      .question span {
      margin-left: 30px;
      }
      label.radio:before {
      content: "";
      position: absolute;
      left: 0;
      width: 17px;
      height: 17px;
      border-radius: 50%;
      border: 2px solid #ccc;
      }
      input[type=radio]:checked + label:before, label.radio:hover:before {
      border: 2px solid #a37547;
      }
      label.radio:after {
      content: "";
      position: absolute;
      top: 6px;
      left: 5px;
      width: 8px;
      height: 4px;
      border: 3px solid #a37547;
      border-top: none;
      border-right: none;
      transform: rotate(-45deg);
      opacity: 0;
      }
      input[type=radio]:checked + label:after {
      opacity: 1;
      }
      .btn-block {
      margin-top: 10px;
      text-align: center;
      }
      .color{
        color:white;
      }
      .button {
      width: 150px;
      padding: 10px;
      border: none;
      border-radius: 5px; 
      background: #6b4724;
      font-size: 16px;
      color: #fff;
      cursor: pointer;
      }
      .button:hover {
      box-shadow: 0 0 18px 0 #3d2914;
      }
      @media (min-width: 568px) {
      .name-item, .city-item {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      }
      .name-item input, .city-item input {
      width: calc(50% - 20px);
      }
      .city-item select {
      width: calc(50% - 8px);
      }
    }



</style>

</head>
<body>

<section class="jumbotron-section-1">
                <div class="jumbotron no-margin jumbotron-section-1-bg">
                    <div class="container-fluid introduction">
                        <h2 class="color name">FORM 2 DETAILS </h2>
                        
                        <a href="#" class="visible-xs btn call-me"></a>
                    </div>      
                </div> 
            </section>
<div class="container">
<div class="row">
  <div class="column">
        <?php
    while ($row = mysqli_fetch_array($result)) {
        echo "<h2>".$row['question1']."</h2>";
        echo "<h2>".$row['question2']."</h2>";
        echo "<h2>".$row['question3']."</h2>";

        
        
}
?>
<br>
<br>
<h3>Experience</h3><hr>
<h3>SUBURB PREFERENCE 1</h3><hr>
<h3>SUBURB PREFERENCE 2</h3><hr>
<h3>SUBURB PREFERENCE 3</h3><hr>
  </div>
  <div class="column">
    <form action="question.php" method="POST">
      <textarea name="answer1"></textarea>
      <br>
      <br>
        
      

      <textarea name="answer2"></textarea>
      <br>
      <br>
      <br>
      <textarea name="answer3"></textarea>
      <br>
      <br>
      <br>

      <input type="text" name="experience"></input>
      <div class="item" float="left">
    <select required name="suburb_pref1" id="select2">
          
          <option value="Thane"><div>THANE</div>         &nbsp   <div></div></option>
          
           <option value="Bandra"><div>BANDRA</div>         &nbsp   <div></div></option>
          
          <option value="Kalyan"><div>KALYAN</div>         &nbsp   <div></div></option>

            <option value="Chembur"><div>CHEMBUR</div>         &nbsp   <div></div></option>

              <option value="Virar"><div>VIRAR</div>         &nbsp   <div></div></option>
          
          
          

        </select>
        <br>
    <select required name="suburb_pref2" id="select2">
          
    <option value="Thane"><div>THANE</div>         &nbsp   <div></div></option>
          
          <option value="Bandra"><div>BANDRA</div>         &nbsp   <div></div></option>
         
         <option value="Kalyan"><div>KALYAN</div>         &nbsp   <div></div></option>

           <option value="Chembur"><div>CHEMBUR</div>         &nbsp   <div></div></option>

             <option value="Virar"><div>VIRAR</div>         &nbsp   <div></div></option>  
          

        </select>
        <br>

    <select required name="suburb_pref3" id="select2">
          
    <option value="Thane"><div>THANE</div>         &nbsp   <div></div></option>
          
          <option value="Bandra"><div>BANDRA</div>         &nbsp   <div></div></option>
         
         <option value="Kalyan"><div>KALYAN</div>         &nbsp   <div></div></option>

           <option value="Chembur"><div>CHEMBUR</div>         &nbsp   <div></div></option>

             <option value="Virar"><div>VIRAR</div>         &nbsp   <div></div></option>
        </select>
        <strong>Upload ALL Your Achievements and Certificates in PDF form : </strong><input type="file" name="myFile">
         <br>
         <strong>Enter slot for Phone Interview </strong><input type="text" name="time">
         
        </div>
         

  </div>
</div>






<div class="btn-block">
          <input type="submit" name="submit" class="button">
        </div>


  </div>
</form>
</div>

<?php

$sq="SELECT id from volunteers1 WHERE email='".$_GET['uemail']."'";
$res = mysqli_query($conn, $sq);
$r=mysqli_fetch_array($res);
if($res){
  echo 'usr hai';
}
else{
  echo 'no user';
}
if($_POST['submit']){
$a=$_POST['answer1'];
$b=$_POST['answer2'];
$c=$_POST['answer3'];
$d=$_POST['experience'];
$e=$_POST['suburb_pref1'];
$f=$_POST['suburb_pref2'];
$g=$_POST['suburb_pref3'];
$h=$_POST['time'];
$i=$_POST['myFile'];
$uid=(int)$r['id'];
echo $a;
if($a!="" && $b!="" && $c!="" && $d!="" && $e!="" && $f!=""){
$query="INSERT INTO volunteers2 (experience,id,suburb_pref1,suburb_pref2,suburb_pref3,answer1,answer2,answer3,time1,file)
VALUES ('$d','$uid','$e','$f','$g','$a','$b','$c','$h','$i') ";
$data=mysqli_query($conn,$query);
if($data){
  echo"data inserted";
}

else{
  echo $uid;
  echo "ERROR: Could not able to execute $sql. " . mysqli_error($conn);
}
}
else{
  echo "insert all";
}
}




?>


</body>
</html>
