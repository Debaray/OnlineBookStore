<%@ Page Language="C#" AutoEventWireup="true" CodeFile="display.aspx.cs" Inherits="display" EnableEventValidation="false" ValidateRequest="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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
            <asp:ImageButton ID="ImageButton" runat="server"  onclick="ImageButton_Click" ImageUrl="~/shop.png"></asp:ImageButton>
          
           <asp:Label ID="itemlbl" runat="server" Text="Total Item : " Font-Bold="True" Font-Size="10" ForeColor="White"></asp:Label>
           <asp:Label ID="costlbl" runat="server" Text="Total Cost : " 
            ForeColor="White" Font-Size="10"></asp:Label>

           </nav>

		<div class ="division d4">
			<h3 style="font-size:20pt;"> Welcome to bookstore </h3>
			<p><marquee> Tons of book collections you can choose from. Books that don’t suck, we ensure the quality of our books
			the best you can find anywhere.</marquee> </p>
		</div>
            <br />
            <h1 style="color:white;font-size:30pt;background-color:rgba(0,0,0,0.8);align:center;padding-left:550px;">All Books</h1>

             <div style="float:right;">
      <input type="text" placeholder="Search..." class="search-bar-input" id="searchtextbox">
	  <input type="button" class="search-bar-button" value="Search" onclick="search();" >

   </div>
   <br /><br />
		<div class="container"><!--everything on the page-->
		
		
                  
                      <asp:Repeater ID="d3" runat="server">
                        <ItemTemplate>
                  <div style="float:left;padding-left:35px;padding-right:15px;">    
	            
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
                                        <asp:ImageButton ID="dis_cart" runat="server" onclick="discart_Click" ImageUrl="~/shop.png" />
                                      <a  class="qq"  href="indisplay.aspx?id= <%#Eval("id")%>"><i class="fa fa-eye" style="padding-left:10pt;" aria-hidden="true"></i></a>				  												  												
										
					</div>
                    </ItemTemplate>
            </asp:Repeater>
		</div><!--Container End-->
        <br />	
	    </form>
        <script type="text/javascript">

            function search() {
                window.location = "display.aspx?search=" + document.getElementById("searchtextbox").value;
            }
</script>
	</body>
</html>
