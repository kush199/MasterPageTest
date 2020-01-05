<%@ Page Language="C#" MasterPageFile="~/MasterPageOne.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<%@ MasterType VirtualPath="~/MasterPageOne.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <script>
          $(document).ready(function () {
 $(".navbar-nav li a").removeClass('activeLink')//this will remove the active class from previously active menu item 
  $('#Home').addClass('activeLink');

});
        $(function () {

            $(".dropdown-item").on("click", function (e) {
                e.preventDefault(); // cancel the link behaviour
                var selText = $(this).text();
                //alert("value" + selText);
                $(".btn:first-child").text($(this).text());
                $(".btn:first-child").val($(this).text());

                callAjaxMethod(selText)

            });

        });

        function callAjaxMethod(selText) {
         
            alert("Calling web method and passing this data:"+selText);
           
             $.ajax({
                type: "POST",
                url: '<%=ResolveUrl("Default.aspx/TestMethod")%>',
                data: '{dataVal:"Hello world"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                 success: function (data) {
                     debugger;
                    alert("i got this from web method:"+data.d);
                },
                 failure: function (data) {
                     alert("i came again failsed");

                }
            });
        }

    </script>
       <asp:ScriptManager ID="smMain" runat="server" EnablePageMethods="true" />
    <h2>This is a the HOME page.</h2>
    <div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Dropdown button
  </button>
        <ul class="dropdown-content dropdown-menu" aria-labelledby="dropdownMenuButton">
    <li><a class="dropdown-item" href="#">Action</a></li>
    <li><a class="dropdown-item" href="#">Another action</a></li>
    <li><a class="dropdown-item" href="#">Something else here</a></li>
  </ul>
</div>
</asp:Content>

