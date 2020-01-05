<%@ Page Language="C#" MasterPageFile="~/MasterPageOne.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" Title="Untitled Page" %>

<%@ MasterType VirtualPath="~/MasterPageOne.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <script>
        $(document).ready(function () {
 $(".navbar-nav li a").removeClass('activeLink')//this will remove the active class from previously active menu item 
  $('#Contact').addClass('activeLink');

        });
        </script>
<h2>This is a the CONTACT page.</h2>
</asp:Content>

