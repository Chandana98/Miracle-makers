<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   <title>Volunteer</title>
   <script src="https://apis.google.com/js/platform.js" async defer></script>
   <meta name="google-signin-client_id" content="53898964399-43d77rck95ta5mel8gnm52grlt8oqvgl.apps.googleusercontent.com">
   <link rel="icon" href="images/favicon.ico">
        <link rel="shortcut icon" href="images/favicon.ico" />
        <link rel="stylesheet" href="css/style.css">
        <script src="js/jquery.js"></script>
        <script src="js/jquery-migrate-1.1.1.js"></script>
        <script src="js/script.js"></script> 
        <script src="js/jquery.ui.totop.js"></script>
        <script src="js/superfish.js"></script>
        <script src="js/jquery.equalheights.js"></script>
        <script src="js/jquery.mobilemenu.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script>
            $(document).ready(function(){
                $().UItoTop({ easingType: 'easeOutQuart' });
            }) 
        </script>
    <script src="js/html5shiv.js"></script>
            <link rel="stylesheet" media="screen" href="css/ie.css">
   
</head>
<body>
<!--==============================header=================================-->
        <header>
            <div class="clear"></div>
            <div class="container_12">
                <div class="grid_12">
                    <h1>
                        <a href="index.html">
                            <img src="images/logo.png" alt="Your Happy Family">
                        </a>
                    </h1>
                    <div class="menu_block">
                        <nav class="horizontal-nav full-width horizontalNav-notprocessed">
                            <ul class="sf-menu">
                                <li>
                                    <a href="index.html">Home</a>
                                    <ul>
                                        <li><a href="#">history</a></li>
                                        <li><a href="#">offers</a></li>
                                        <li>
                                            <a href="#">news</a>
                                            <ul>
                                                <li><a href="#">fresh </a></li>
                                                <li><a href="#">archive</a></li>
                                            </ul>
                                        </li>
                                    </ul> 
                                </li>
                                <li><a href="index-1.html">Videos </a></li>
                                <li><a href="index-2.html">Campaigns</a></li>
                                
                                <li><a href="index-4.html">Contacts</a></li>
                                <li><a href="requestform.jsp">Request Form</a></li>
                            </ul>
                        </nav>
                        <div class="clear"></div>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </header>
        <div class="main">
<!--==============================Content=================================-->
           

   <div class="g-signin2" data-onsuccess="onSignIn" id="myP"></div>
      <img id="myImg"><br>
      <p id="name"></p>
      <div id="status">
   </div>
   <script type="text/javascript">
      function onSignIn(googleUser) {
      // window.location.href='success.jsp';
      var profile = googleUser.getBasicProfile();
      var imagurl=profile.getImageUrl();
      var name=profile.getName();
      var email=profile.getEmail();
      document.getElementById("myImg").src = imagurl;
      document.getElementById("name").innerHTML = name;
      document.getElementById("myP").style.visibility = "hidden";
      document.getElementById("status").innerHTML = 'Welcome '+name+'!<a href=index.html? email='+email+'&name='+name+'/>Continue with Google login</a></p>'
   }
   </script>
   <button onclick="myFunction()">Sign Out</button>
   <script>
      function myFunction() {
      gapi.auth2.getAuthInstance().disconnect();
      location.reload();
   }
   </script>
   <!--==============================footer=================================-->
            <footer>    
                <div class="hor bg3"></div>
                <div class="container_12">
                    <div class="grid_12 ">  
                        
                        <div class="copy">
                            <strong>Miracle Makers</strong>   &copy; <span id="copyright-year"></span> | <a href="#">Privacy Policy</a> <br>
                            Website designed by </a>
                        </div>  
                    </div>
                </div>  
            </footer>
        </div>
   
   
</body>
</html>