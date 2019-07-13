<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signin.aspx.cs" Inherits="signin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>bookstore</title>

		<link rel="stylesheet" href="home.css">
         <link rel="stylesheet" href="signstyle.css">
        <link rel="stylesheet" href="header.css" type="text/css" media="screen">	
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
       <link rel="stylesheet" type="text/css" href="bootstrap.min.css" />
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>
.floating-box 
{
    padding:30px;
    float: left;
   
     
}

</style>
	
</head>
<body>
   <header>
    <div class="slz-header-wrapper  slz-header-mobile-topbar">
                    <div class="slz-header-topbar">
                <div class="container">
                    <div class="slz-topbar-list float-l">
                        <div class="customize-icon social"><span class="text">
						<i class="fa fa-phone"></i>+08801622610659</span>
						<span class="text" style="padding-left:10pt;"><i class="fa fa-envelope-o"></i>bookstore@gmail.com></span>
						</div>
					</div>
                    <div class="slz-topbar-list float-r">
                        <div class="social" style="padding-top:20px;">
							<a class="link share-facebook" target="_blank" href="#"><i class="icons fa fa-facebook"></i></a>
							<a class="link share-twitter" target="_blank" href="#"><i class="icons fa fa-twitter"></i></a>
							<a class="link share-google" target="_blank" href=""><i class="icons fa fa-google"></i></a>
							<a class="link share-pinterest" target="_blank" href=""><i class="icons fa fa-pinterest-p"></i></a>
							<a class="link share-instagram" target="_blank" href=""><i class="icons fa fa-instagram"></i></a>
						</div>
                        <div class="woo-account-wrapper">
							<a href="#"  style="color:White;font-style:bold;margin-top:30px;margin-left:10px;" >Login</a>
		
						</div>
                        <div class="woo-account-wrapper">
							<a href="#"  style="color:White;font-style:bold;margin-top:30px;" >Sign Up</a>
		
						</div>
                
                    </div>
                    
                    
                </div>
            </div>
    </div>
    
</header>
		
		<nav>
    <div style="margin-left:300px;">
			<a href="index.aspx">HOME</a>
			<a href="#">ABOUT</a>
			<a href="#">SALES POST</a>
			<a href="#">BLOG</a>
			<a href="#">CONTACT</a>
            </div>
		</nav>
      
        <div class="loginBox">
     <img src="john2.jpg" class="user">
	 <h2>Log in Here</h2>
	 <form>
	    <p>Email</p>
		<input type="text" name="" placeholder="Enter Email">
		<p>Password</p>
		<input type="password" name="" placeholder="Enter Password">
		<input type="submit" name="" value="Sign in">
		<a href="#">Forget Password</a>
		<a href="createacc.html">Create account</a>
		
	 
	 
	 </form>

     </div>
   
  
</body>
</html>
