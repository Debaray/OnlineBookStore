<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>
<html>

	<head>
		<title>bookstore</title>
		<link rel="stylesheet" href="home.css">
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
            
            
            <div class="container" >
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="slider/1.jpg" alt="Los Angeles" style="width:100%;">
      </div>

      <div class="item">
        <img src="slider/2.jpg" alt="Chicago" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="slider/3.jpg" alt="New york" style="width:100%;">
      </div>
      <div class="item">
        <img src="slider/4.jpg" alt="New york" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
		
		
		
		<div class ="division d3">
			<a href="#">NEW ARRIVAL</a>
			<a href="#">BEST SELLERS</a>
			<a href="#">BOIMELA</a>
			<a href="writer.aspx">WRITERS</a>
			<a href="publisher.aspx">PUBLISHERS</a>
			<a href="oldbook.aspx">OLD BOOKS</a>
			<a href="textbooks.aspx">TEXTBOOKS</a>
		</div>
		<div class ="division d4">
			<h3 style="font-size:20pt;"> Welcome to bookstore </h3>
			<p><marquee> Tons of book collections you can choose from. Books that don’t suck, we ensure the quality of our books
			the best you can find anywhere.</marquee> </p>
		</div>
            <br />
            <h1 id="eventheader">SHOP OUR COLLECTIONS</h1>
		<div class="container"><!--everything on the page-->
		
		
		
                  
                        <asp:Repeater ID="d1" runat="server">
                        <ItemTemplate>
                  <div style="background-color:rgba(0,0,0,0.8);float:left;padding-left:35px;padding-right:15px;">    
	            <div >
                                        <br />
										
                                        <img src="images/<%#Eval("image")%>" alt="fdf" height="250" width="240" />
                                        
                                        <br /><br />
										<div style="color:Yellow;">
										<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
										<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
										<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
										<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
									    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
										</div>
											
										<h4 style="color:White;font-style:bold;"><%#Eval("book_name")%></h4>
											
										<p style="color:White;">BDT  <%#Eval("price")%> </p>	
                                        
                                     <!--  <a class="qq"  href=""><i class="fa fa-shopping-cart"  aria-hidden="true"></i></a>-->
                                         <a  class="qq"  href="indisplay.aspx?id= <%#Eval("id")%>"><i class="fa fa-eye" style="padding-left:10pt;" aria-hidden="true"></i></a>				  												  												
										
					</div></div>  
                    </ItemTemplate>
                                        </asp:Repeater>
		</div>
        <br />
        <div style="background-color:rgba(0,0,0,0.8);margin-left:66px;margin-right:95px;margin-top:-50px;">
		<a href="display.aspx" style="color:white;font-size:25px;text-align:center;padding-left:550px;" >Show All Books </a>
        
        
        </div>


		<br /><br />
		<div style="background-color:rgba(0,0,0,0.8);">
		<h1 id="we3header">ABOUT THE DEVELOPERS</h1>
		

				<div>
					<ul id="circles" >
						<li><a href="contactus.aspx">MIRZA TAIRIN</a></li>
						<li><a href="contactus.aspx">DEBASHIS RAY</a></li>
						<li><a href="contactus.aspx">PROTTASA KARIM</a></li>
					</ul>
				</div>
		</div>
		
		
		<!--closing class container-->
		
		
	    </form>
		
	
		
	</body>
</html>