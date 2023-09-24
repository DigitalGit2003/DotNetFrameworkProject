<%@ Page Title="" Language="C#" MasterPageFile="~/Views/EMS.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="ElectionManagementSystem.Views.Login" %>

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
                                    <img width="150px" src="/images/user.png" />
                                </center>
                            </div>
                        </div>

                        <h3 class="text-center">Login</h3>
                        <hr>
                        <div class="row">
                            <div class="col-6">
                                <div class="d-grid gap-2">
                                     <center>
                                <img src="/images/admin.png" width="178">
                                          </center>
                                    <a href="AdminLogin.aspx" class="btn btn-info btn-block">Admin Login</a>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="d-grid gap-2">
                                     <center>
                                    <img src="/images/voter.jpeg" width="150">
                                     </center>
                                    <a href="UserLogin.aspx" class="btn btn-info btn-block">Voter Login</a>
                                </div>
                            </div>
                        </div>

                        
                        <hr>
                        <br>
                    </div>
                </div>

            </div>
        </div>
    </div>

</asp:Content>
