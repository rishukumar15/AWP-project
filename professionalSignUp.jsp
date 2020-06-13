<%-- 
    Document   : professionalSignUp
    Created on : 10 Apr, 2020, 2:19:17 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="SignUp.css">
    <title>Sign Up</title>
</head>
<body>
    <h1>Let's get started!</h1>
    <div class="main">
        
        <div class="contentProfessional">
            <form method="post" action="RegisterProfServlet" onsubmit="handleClick()">
            <label for="name">Name</label>
            <div class="inputField"><input type="text" name="name" id="name" placeholder="Name" required></div>
            <br>
            <label for="username">Username</label>
            <div class="inputField"><input type="text" name="username" id="username" placeholder="Username" required></div>    
            <br>
            <label for="password1">Password</label>
            <div class="inputField"><input type="password" name="password1" id="password1" placeholder="Password" required></div>
            <br>
            <label for="password2">Re-enter Password</label>
            <div class="inputField"><input type="password" name="password2" id="password2" placeholder="Confirm Password" required></div>
            <br>
            <span id="errorpass"></span>
            <br>

            <label for="mobilenumber">Mobile no.</label>
            <div class="inputField"><input type="tel" name="mobilenumber" id="mobilenumber" pattern="[0-9]{10}" placeholder="Mobile no" required ></div>
   
            <br>
            <label for="email">E-mail</label>
            <div class="inputField"><input type="text" name="email" id="email" placeholder="E-mail" required></div>    
            <br>
            <label for="profession">Profession</label>
            <div class="inputField"><input type="text" name="profession" id="profession" placeholder="Profession" required></div>    
            <br>
            <label for="gender">Gender</label>
            
            Male
            <input type="radio" name="gender" value="male" required >
            Female
            <input type="radio" name="gender" value="female" >
            Other
            <input type="radio" name="gender" value="other">
            <br>
            <br>
            <label for="address">Address</label>
            <div class="inputField"><input type="text" name="address" id="address" placeholder="Your current address" required></div>
            <br>
            <label for="agree"><input type="checkbox" name="agree" value="agreed" required> I agree to all the T&C.</label>
            <br>
            <br>
            <a href="indexProfessional.jsp"><button>Back</button></a>
            
            <input type="submit" value="Submit" id="button">
            </form>
        </div>

    </div>
    <script type="text/javascript">
                function handleClick()
                {
                   String password1 = document.getElementById('password1').value; // pass1 is the name of the input tag
                   String password2 = document.getElementById('password2').value;
                    // check if the page has been submitted:
                    if (password1!=null && password2!=null) {

                       // check if they are equal:
                       if (!password1.equals(password2)) {
                           document.getElementById('errorpass').innerHTML="Password and confirm password doesn't match!";
                       }
                       else{
                           document.getElementById('errorpass').innerHTML="Correct";
                       }
                    }
                }
            </script>
</body>
</html>
