<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BookShop.Views.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form2" runat="server">
        <p>
            Login</p>
        <p>
            Username :
            <asp:TextBox ID="tbLoginUserName" runat="server"></asp:TextBox>
        </p>
        <p>
            Password : <asp:TextBox ID="tbLoginPassword" runat="server" TextMode="Password">Enter Password</asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
        </p>
    </form>
    
</body>
</html>
