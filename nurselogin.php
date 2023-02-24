<?php
session_start();

    include("include/connection.php");

    if (isset($_POST['login'])) {

    $username = $_POST['uname'];
    $password = $_POST['pass'];

    $error = array();

    $q = "SELECT * FROM nurses WHERE username='$username' AND password='$password'";
    $r= mysqli_query($connect,$q);

    $row = mysqli_fetch_array($r);

    if (empty($username)) {
       $error['login'] = "Enter username";
    }
    else if (empty($password)) {
        $error['login'] = "Enter password";
     }
   
     if(count($error) == 0){
        $query = "SELECT * FROM nurses WHERE username='$username' AND password='$password'";
        $result = mysqli_query($connect,$query);
        if (mysqli_num_rows($result)) {
                $_SESSION['nurse'] = $username;

                header("Location:nurse/index.php");
            }
            else{
                $error['doctor'] = "Invalid Username or Password";
            }
        }
        
     }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nurse Login</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<style>
        *{
    margin: 0;
    padding: 0;
    
}
body{
            min-width:800px;
        }
.span{
    font-size: 15px;
    color:red ;
}
h6{
    text-align: center;
    padding-top: 20px;
}
h6 a{
    text-decoration: none;
    color: blue;
}
h6 a:hover{
    color: red;
}
body{
    background-color: rgb(4, 182, 93);
}
.container{
    display: flex;
    justify-content: center;
    margin-top: 60px;
   
}
form{
    background-color: gainsboro;
    padding: 30px;
    border-radius: 10px;
    width:35%;
    min-width:480px;
    box-shadow:10px 10px 10px black;
}
form h2{
    text-align: center;
    padding: 20px 0;
}
form label{
    margin-top:10px;
    font-family: monospace;
    font-size: 30px;
    font-weight: bolder;
}
form input{
    padding: 7px 15px;
    border: none;
    margin-top: 10px;
    margin-bottom:15px;
    width:95%;
}
.btn{
    border-radius: 5px;
    width: 120px;
    background-color: rgb(5, 191, 89);
    box-shadow:5px 5px 5px black;
}
.btn:active{
    transform:scale(.9);
}
.btn:hover{
    color:#fff;
}
h5{
    margin-left:360px;
    margin-top:-38px;
    cursor: pointer;
}
    </style>

    <?php
    include("include/header.php")
    ?>
<div class="container">
    
    <form action="" method="post">
        <h2>Nurse Login</h2>
        <label for="username">Username</label><br>
        <input type="text" name="uname" autocomplete="off"  autofocus required><br>
        <label for="password">Password</label><br>
        <input type="password" id="pass" name="pass" autocomplete="off"  required><h5 onclick="show()" id="show">show</h5><br>

       <div>
       <span class="span">
        <?php
            if (isset($error['doctor'])) {
                $show = $error['doctor'];
            }
            else{
                $show ="";
            }
            echo $show;

        ?>
        </span><br>
       </div>

        <input type="Submit" value="login" name="login" class="btn">

    </form>
    </div>
<script>
    let showEl = document.getElementById("show");
    let passEl=document.getElementById("pass");
    function show(){
        passEl.type="text";
        showEl.style.color="green";
        showEl.textContent="hide";
        setTimeout(() => {
        hide()
        }, 3000);
        }
       function hide(){
            passEl.type="password";
            showEl.style.color="black";
            showEl.textContent="show";
        }

function hide(){
    passEl.type="password";
    showEl.style.color="black";
    showEl.textContent="show";
}
</script>
</body>
</html>