<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="add_writer.aspx.cs" Inherits="admin_add_writer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
<table>
<tr>
<td>Enter New Writer: </td>
<td><asp:TextBox ID="t1" runat="server"></asp:TextBox></td>
</tr>

<tr>
<td colspan="2" align="center">
<asp:Button ID="b1" runat="server" Text="Add Writer" onclick="b1_Click" />
</td>
</tr>
</table>

<asp:DataList ID="d1" runat="server">
<HeaderTemplate>
<table>
</HeaderTemplate>
<ItemTemplate>
<tr>
<td><%#Eval("writer_name") %></td>
<td>
<a href="writer_delete.aspx?writer=<%#Eval("writer_name") %>">Delete</a>
</td>
</tr>

</ItemTemplate>
<FooterTemplate>
</table>
</FooterTemplate>




</asp:DataList>
</asp:Content>

