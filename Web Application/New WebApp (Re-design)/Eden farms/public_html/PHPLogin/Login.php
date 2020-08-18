<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Login page.</title>
        <meta charset="UTF-8">
        <link href="../CSS/LoginCSS.css" rel="stylesheet" type="text/css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="../Javascript/Login.js" type="text/javascript"></script>
    </head>
    <body>
        
         
        <!Wrapper is used to implement good CSS-->
        <div class="login-wrap">
    <div class="login-html">
        <!Here we make it possible to choose to login in or register through the use of radio buttons and check boxes-->
        <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
        <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
        <div class="login-form">
            <div class="sign-in-htm">
                
             <form name="Login" action="#" onsubmit="required()">
                        <div class="group">
                            <label for="user" class="label">Username</label>
                            <input name="test" id="user" type="text" class="input" required="required" name="txt_uname">
                        </div>
                        <div class="group">
                            <label for="pass" class="label">Password</label>
                            <input name="test" id="pass" type="password" class="input" data-type="password" required="required" name="txt_pwd">
                        </div>
                   
                    
                <!Here Javascript and php will be used to see if username and password is correct and if user is admin or user.-->
                <div class="group">
                    <input type="submit" class="button" value="Sign In" name="but_submit">
                </div>
             </form> 
                <div class="hr"></div>
                
            </div>
            <div class="sign-up-htm">
                <div class="group">
                    <label for="user" class="label">Username</label>
                    <input id="user" type="text" class="input" required="required">
                </div>
                <div class="group">
                    <label for="pass" class="label">Password</label>
                    <input id="pass" type="password" class="input" data-type="password" required="required">
                </div>
                <div class="group">
                    <label for="pass" class="label">Repeat Password</label>
                    <input id="pass" type="password" class="input" data-type="password" required="required">
                </div>
                <div class="group">
                    <label for="pass" class="label">Email Address</label>
                    <input id="pass" type="text" class="input" required="required">
                </div>
                <div class="group">
                    <input type="submit" class="button" value="Sign Up">
                </div>
                <div class="hr"></div>
                <div class="foot-lnk">
                    <label for="tab-1">Already Member?</a>
                </div>
            </div>
        </div>
    </div>
</div>
        
        
<?php
include "config.php";

if(isset($_POST['but_submit'])){

    $uname = mysqli_real_escape_string($con,$_POST['txt_uname']);
    $password = mysqli_real_escape_string($con,$_POST['txt_pwd']);

    if ($uname != "" && $password != ""){

        $sql_query = "select count(*) as cntUser from tblUser where UserName='".$uname."' and UserPassword='".$password."'";
        $result = mysqli_query($con,$sql_query);
        $row = mysqli_fetch_array($result);

        $count = $row['cntUser'];

        if($count > 0){
            $_SESSION['uname'] = $uname;
            header('Location: home.php');
        }else{
            echo "Invalid username and password";
        }

    }

}
?>
    </body>
</html>
