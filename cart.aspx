<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="cart" %>

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

	<HeaderTemplate>

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
    
</HeaderTemplate>
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

           </nav>
        <div>
   <asp:DataList ID="data1" runat="server" BorderColor="Maroon" BorderStyle="Solid" 
            BorderWidth="1px">
    <HeaderTemplate>
    <table border="Maroon">
                        <tr style="color:White ;background:Maroon; font-weight: bold">
                            
                            <td>Book Image</td>
                            <td>Book Name</td>
                            <td>Book Price</td>   
                        </tr>
    </HeaderTemplate>

    <ItemTemplate>
    <tr>
    
    <td><%#Eval("book_name") %></td>
    <td><%#Eval("price") %></td>
    <td><img src="<%#Eval("image") %>" height="100" width="100" /></td>
    <td><a href="delete_cart.aspx?id=<%#Eval("id") %>">delete</a></td>
    </tr>
    </ItemTemplate>

    <FooterTemplate>
    </table>
    </FooterTemplate>
     
    </asp:DataList>



    </div>
		
       
		
	</body>
</html>