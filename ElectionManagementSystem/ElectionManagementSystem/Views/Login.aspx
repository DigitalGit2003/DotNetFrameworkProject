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
                            <label for="emailID" class="form-label">Email ID</label>
                            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Email ID"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Password</label>
                            <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                        <hr>
                        <br>

                        <div class="d-grid gap-2">
                            <asp:Button class="btn btn-success btn-block" ID="Button1" runat="server" Text="Login" />

                            <a href="Register.aspx" class="btn btn-info btn-block">Sign Up</a>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>

</asp:Content>
