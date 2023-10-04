<%@ Page Title="" Language="C#" MasterPageFile="~/Views/EMS.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ElectionManagementSystem.Views.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Style the image to cover the entire viewport */
        img {
            position: absolute;
            top: 55px;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
            cursor: pointer;
            z-index: -50;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <img src="/images/background.jpg" width="178">
</asp:Content>
