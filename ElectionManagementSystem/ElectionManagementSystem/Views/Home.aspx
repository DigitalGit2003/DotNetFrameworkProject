<%@ Page Title="" Language="C#" MasterPageFile="~/Views/EMS.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ElectionManagementSystem.Views.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {

            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();

        }
    </script>

  

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:PlaceHolder ID="ItemPlaceholder" runat="server">
         
    </asp:PlaceHolder>

     <%--<div class=""card-footer"">
        <button id=""btnVote"" class=""btn btn-primary btn-lg btn-block"" onclick=""incrementVote();"">Vote</button>
     </div>--%>

</asp:Content>
