<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddBook.aspx.cs" Inherits="BookShop.Views.AddBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Add Book
            <br />
            <br />
            Book Name :
            <asp:TextBox ID="tbBookName" runat="server"></asp:TextBox>
            <br />
            Author :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tbAuthor" runat="server"></asp:TextBox>
            <br />
            Price :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tbPrice" runat="server" TextMode="Number"></asp:TextBox>
            <br />
            Category :&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tbCategory" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="btnBookSave" runat="server" OnClick="btnBookSave_Click" Text="Save" />
        </div>
    </form>
</body>
</html>
