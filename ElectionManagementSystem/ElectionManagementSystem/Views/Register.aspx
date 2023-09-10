<%@ Page Title="" Language="C#" MasterPageFile="~/Views/EMS.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ElectionManagementSystem.Views.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container mt-2">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                   
                                </center>
                            </div>
                        </div>

                        <h3 class="text-center">Voter Registration</h3>
                        <hr>

                        <div class="mb-3">
                            <label for="username" class="form-label">Username</label>
                            <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Username"></asp:TextBox>
                        </div>
                        
                        <div class="mb-3">
                            <label for="emailID" class="form-label">Email ID</label>
                            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Email ID"></asp:TextBox>
                        </div>

                        <div class="mb-3">
                            <label for="age" class="form-label">Age</label>
                            <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Age"></asp:TextBox>
                        </div>


                        <div class="mb-3">
                            <label for="password" class="form-label">Password</label>
                            <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>

                        <div class="mb-3">
                            <label for="cpassword" class="form-label">Confirm Password</label>
                            <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                        </div>

                     
                        <br>

                        <div class="d-grid gap-2">
                            <asp:Button class="btn btn-success btn-block" ID="Button1" runat="server" Text="SignUp" />

                            <a href="Login.aspx" class="btn btn-info btn-block">Login</a>
                        </div>

                    </div>
                </div>
                
            </div>
        </div>
    </div>

</asp:Content>
