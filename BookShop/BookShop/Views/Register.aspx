<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BookShop.Views.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="margin-bottom: 19px">
    <form id="form1" runat="server">
        <p class="auto-style1">
            Registration
        </p>
        <p>
            Username :
            <asp:TextBox ID="tbRegisterUserName" runat="server"></asp:TextBox>
        </p>
        <p>
            Password : <asp:TextBox ID="tbRegisterPassword" runat="server" TextMode="Password">Enter Password</asp:TextBox>
        </p>
        <p>
            Confirm Password :
            <asp:TextBox ID="tbCPassword" runat="server" TextMode="Password">Confirm your password</asp:TextBox>
            <asp:CustomValidator ID="CustomValidatorCPassword" runat="server" ControlToValidate="tbCPassword" ErrorMessage="Confirm Password must match with Password" ForeColor="Red" OnServerValidate="checkConfirmPassword"></asp:CustomValidator>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="btnSignUp" runat="server" OnClick="btnRegister_Click" Text="Sign Up" />
        &nbsp;
            <asp:HyperLink ID="hlLogin" runat="server" NavigateUrl="~/Views/Login.aspx">Login</asp:HyperLink>
        </p>
    </form>
</body>
</html>
