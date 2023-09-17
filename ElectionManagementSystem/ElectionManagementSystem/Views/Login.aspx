<%@ Page Title="" Language="C#" MasterPageFile="~/Views/EMS.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ElectionManagementSystem.Views.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="/images/voter.jpeg" />
                                </center>
                            </div>
                        </div>

                        <h3 class="text-center">Voter Login</h3>
                        <hr>
                        <div class="mb-3">
                            <label for="emailID" class="form-label">Email ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <label for="username" class="form-label">
                            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="tbEmail" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblEmailValidate" runat="server" ForeColor="Red"></asp:Label>
                            </label>
                            </label>
                            &nbsp;<asp:TextBox CssClass="form-control" ID="tbEmail" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <label for="username" class="form-label">
                            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="tbPassword" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;
                            <label for="emailID" class="form-label" id="lblPasswordValidate">
                            <asp:Label ID="lblPasswordValidate" runat="server" ForeColor="Red"></asp:Label>
                            </label>
                            </label>
                            </label>
                            &nbsp;<asp:TextBox CssClass="form-control" ID="tbPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                        <hr>
                        <br>

                        <div class="d-grid gap-2">
                            <asp:Button class="btn btn-success btn-block" ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />

                            <a href="Register.aspx" class="btn btn-info btn-block">Sign Up</a>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>

</asp:Content>
