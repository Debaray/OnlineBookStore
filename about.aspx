<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About</title>
    <link rel="stylesheet" href="about.css">
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
    <form id="form1" runat="server">
    <headerTemplate>

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
                        
                
                    </div>
                    
                    
                </div>
            </div>
    </div>
    
</headerTemplate>
<br />
		<div>
    <h3 style="color:white;font-size:30pt;background-color:rgba(0,0,0,0.8);align:center;padding-left:500px;">Online Book Store</h3>
    
    </div>

      
		<nav>
    
			<a href="index.aspx">HOME</a>
			<a href="about.aspx">ABOUT</a>
            
             <a href="display.aspx">ALL BOOKS</a>
			<a href="#">SALES POST</a>
			<a href="#">BLOG</a>
			<a href="contact.aspx">CONTACT</a>
            <asp:ImageButton ID="ImageButton1" runat="server" 
                    onclick="ImageButton1_Click" ImageUrl="~/shop.png" />

           <asp:Label ID="itemlbl" runat="server" Text="Total Item : " Font-Bold="True" Font-Size="10" ForeColor="White"></asp:Label>
           <asp:Label ID="costlbl" runat="server" Text="Total Cost : " 
            ForeColor="White" Font-Size="10"></asp:Label>

           </nav>
           <br />
           <div style="background-color:rgba(0,0,0,.8);">
			<h3 style="font-size:20pt;color:White;padding-top:25px;text-align:center;"> Welcome to bookstore </h3>
			<p style="color:White;"><marquee> Tons of book collections you can choose from. Books that don’t suck, we ensure the quality of our books
			the best you can find anywhere.</marquee> </p>
		</div>
    <div class="container"><!--everything on the page-->

		
        <br />
		<div class ="division d4">
			<h1> About Us </h1><br> <br>
			<p > Our mission is to create a platform where passionate book readers can find all they need while also maintaining a budget. <br>
			Upcoming features are a detailed a map about each and every stall and booklists of the upcoming boi mela, <br>and advertising opportunity 
			for writers and publishers. <br> <br>
			
				"Unfortunately many books are imported and high priced,
				to solve that problem we want to build a website <br>where readers can sell and buy old books, which gives them the opportunity to 
				read more books within a fixed budget. <br>
				Growing up under the influence of my elder brother, who is a passionate book reader - I always wanted to do something <br>for the 
				book readers so they can find their desires books at the cheapest price. " ~ Mirza Tairin<br> <br>
				"Online buy and sell business is growing at a large scale in Bangladesh. We are working with a vision to catch up with 
				<br>the growing scenario.
				In the future, we want to keep adding more features to the website. Our plan is to make it one of the most <br>prominent buy and sell book 
				websites in Bangladesh" ~ Debashis Ray<br> <br>
				"People these days do not want to spend an awful amount of time and money looking for products. As more people are 
				<br>interested in buying products with 
				the home delivery system, we want to make sure the customers can choose from <br>a large selection of products with ease and comfort"
				~ Prottasa Karim</p>
		</div>
		
		
		<div class ="division gap"></div>
		
		</div>
    
    </form>
</body>
</html>
