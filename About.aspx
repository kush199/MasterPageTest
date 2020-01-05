<%@ Page Language="C#" MasterPageFile="~/MasterPageOne.master" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" Title="Untitled Page" %>

<%@ MasterType VirtualPath="~/MasterPageOne.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <script>
        $(document).ready(function () {
 $(".navbar-nav li a").removeClass('activeLink')//this will remove the active class from previously active menu item 
  $('#About').addClass('activeLink');

        });
        </script>
<h2>This is a the ABOUT page.</h2>
</asp:Content>

