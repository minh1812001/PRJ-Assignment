<%-- 
    Document   : login
    Created on : Feb 18, 2022, 10:21:08 PM
    Author     : Minh-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Login/Sign Up</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--===============================================================================================-->	
        <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
        <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
        <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/util.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <!--===============================================================================================-->
    </head>
    <body>


        <div class="container-login100" style="background-image: url('images/farmlogin.jpg');">
            <div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
                <form class="login100-form validate-form" action="login" method="POST" >
                    <span class="login100-form-title p-b-37">
                        Tạo tài khoản
                    </span>
                    <div for="username" class="wrap-input100 validate-input m-b-20" data-validate="Enter username ">
                        <input class="input100" type="text" id="username" name="user" placeholder="Enter username ">
                        <span class="focus-input100"></span>
                    </div>

                    <div for="password" class="wrap-input100 validate-input m-b-25" data-validate = "Enter password">
                        <input class="input100" type="password" id="password" name="pass" placeholder="password">
                        <span class="focus-input100"></span>
                    </div>
                     <div for="re-password" class="wrap-input100 validate-input m-b-25" data-validate = "Enter re-password">
                        <input class="input100" type="password" id="password" name="re-pass" placeholder="re-password">
                        <span class="focus-input100"></span>
                    </div>
                    <div for="email" class="wrap-input100 validate-input m-b-20" data-validate="Enter email">
                        <input class="input100" type="text" id="username" name="email" placeholder="email">
                        <span class="focus-input100"></span>
                    </div>                           

                    <div  class="container-login100-form-btn">
                        <button type="submit" class="login100-form-btn">Sign Up</button>
                    </div>

                </form>


            </div>
        </div>



        <div id="dropDownSelect1"></div>

        <!--===============================================================================================-->
        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/animsition/js/animsition.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/select2/select2.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/daterangepicker/moment.min.js"></script>
        <script src="vendor/daterangepicker/daterangepicker.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/countdowntime/countdowntime.js"></script>
        <!--===============================================================================================-->
        <script src="js/main.js"></script>

    </body>
</html>