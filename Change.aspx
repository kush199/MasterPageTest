<%@ Page Language="C#" MasterPageFile="~/MasterPageOne.master" AutoEventWireup="true" CodeFile="Change.aspx.cs" Inherits="Change" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <script>
        $(document).ready(function () {
 $(".navbar-nav li a").removeClass('activeLink')//this will remove the active class from previously active menu item 
  $('#Change').addClass('activeLink');

        });
        </script>
    <br />
    Select master page<p>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem Value="~/MasterPageOne.master">MasterPageOne</asp:ListItem>
            <asp:ListItem Value="~/MasterPageTwo.master">MasterPageTwo</asp:ListItem>
        </asp:RadioButtonList>&nbsp;</p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Change MasterPage Now" />&nbsp;</p>
</asp:Content>

