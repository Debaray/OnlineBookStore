﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="admin_adminlogin" %>

<!DOCTYPE html>
<html >
  <head>
   
    <title>Admin Login</title>
        <link rel="stylesheet" href="logincss/style.css"/>   
  </head>

  <body bgcolor="#ffffff">

    
<form id="f1" runat="server">
  <header>Login</header>
  <label>Username <span>*</span></label>
 <asp:TextBox ID="t1" runat="server"></asp:TextBox>
  <label>Password <span>*</span></label>
 <asp:TextBox ID="t2" runat="server"></asp:TextBox>
 <br />
 <asp:Button ID="b1" runat="server" Text="Login" onclick="b1_Click" />
 <br />
 <asp:Label ID="l1" runat="server" Text="" ForeColor="Red" ></asp:Label>
 <br />
 <br />
</form>  
    
  </body>
</html>
