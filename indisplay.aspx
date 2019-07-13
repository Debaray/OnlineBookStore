<%@ Page Language="C#" AutoEventWireup="true" CodeFile="indisplay.aspx.cs" Inherits="indisplay" EnableEventValidation="false" ValidateRequest="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>bookstore</title>
    <link rel="stylesheet" href="indiv.css">
    <link rel="stylesheet" href="header.css" type="text/css" media="screen">	
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
       <link rel="stylesheet" type="text/css" href="bootstrap.min.css" />
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<form id="form3" runat="server">
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
             <asp:ImageButton ID="topcart" runat="server" 
                    onclick="top_Click" ImageUrl="~/shop.png" />

           <asp:Label ID="itemlbl" runat="server" Text="Total Item : " Font-Bold="True" Font-Size="10" ForeColor="White"></asp:Label>
           <asp:Label ID="costlbl" runat="server" Text="Total Cost : " 
            ForeColor="White" Font-Size="10"></asp:Label>
		</nav>
        <br /><br />
        <div class="container"><!--everything on the page-->
		
		
			<div class="division d6">
				<!--<h1 id="eventheader">LORD OF THE RINGS BOOKS</h1>-->
				<div class="container"><!--everything on the page-->
					<div class="row">
							<div class="row3">
								
								<asp:Repeater ID="d2" runat="server">
                                <ItemTemplate>
									<div class="one"></div>

									<div class="four">
										<!--<div class="bookpics lord"></div>-->
                                        <img class="bookpics" src="images/<%#Eval("image")%>" />
									</div><!--closing column 3-->
									<div class="one"></div><!--closing column 1-->
									
									<div class="five">
										<h1><%#Eval("book_name") %></h1><br>
										<h2> Author: <%#Eval("writer_name") %></h2>
										
										<h2> Language: <%#Eval("language") %></h2><br><br>
										
										<h1> Price: Tk. <%#Eval("price") %></h1>
										
										<div class="button addtocart">
                                            <asp:ImageButton ID="cartbtn" runat="server" onclick="cart_Click" ImageUrl="~/shop.png" />
                                            
										</div>
									</div><!--closing column 5-->

                                    <div class="division d6">
				<!--<h1 id="eventheader">LORD OF THE RINGS BOOKS</h1>-->
				<div class="container"><!--everything on the page-->
					<div class="row">
							<div class="row3">
								
								
									<div class="one"></div><!--closing column 3-->

									<div class="ten">
										<h1> description </h1>
										<p><%#Eval("des") %></p>	
									</div>
									
									<div class="one"></div><!--closing column 3-->
								
								
							</div><!--closing class row3-->
					</div><!--closing row-->
				</div>
			</div><!--closing class D6-->	
								</ItemTemplate>
								</asp:Repeater>
							</div><!--closing class row3-->
					</div><!--closing row-->
				</div><!--container-->
			</div><!--closing class D6-->
				
				
				
				
			

		<div class ="division gap"></div>
		<div class ="division gap"></div>
		
		
		
				
				
				<div style="background-color:rgba(0,0,0,.7);"><!--everything on the page-->
					<div class="row">
					
							<div class="row4">
									
										<h1 style="font-size:20px;color:White;padding-left:500px;">REVIWES ABOUT THIS BOOK</h1>
									</div>
								

					<asp:Repeater ID="d3" runat="server">
                                <ItemTemplate>
						
										<h2 style="font-size: 15px;color:White;padding-left:160px;">Name : <%#Eval("name") %></h2><br>
										<p style="font-size: 15px;color:White;padding-left:160px;">Review : <%#Eval("review") %></p>
                            </ItemTemplate>
                            </asp:Repeater>      
					</div><!--closing row-->
                    <h1 style="color:White;font-size:50px;padding-left:50px;">Comment your FeedBack</h1>
                    <div style="padding-left:200px;">
                    <label style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; font-style: italic; font-variant: normal; color: #FFFFFF; line-height: 4px; vertical-align: 4%">Your Name</label>
                             <asp:TextBox ID="t1" runat="server" Width="367px"></asp:TextBox>
                             <br /><br />
                             <label style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; font-style: italic; font-variant: normal; color: #FFFFFF; line-height: 4px; vertical-align: 4%">Your Review</label>
                             <asp:TextBox ID="t2" runat="server" Height="163px" Width="367px"></asp:TextBox>
                             <br /><br /><br />
                             <div style="padding-left:300px;padding-bottom:50px;">
                             <asp:Button ID="Button1" runat="server" Text="Submit"  onclick="Button1_Click" />
                             </div>
                    </div>
				</div><!--container-->
            
		
		
		
		
		<div class ="division gap"></div>
		
		
		</div>
        </form>
</body>
</html>
