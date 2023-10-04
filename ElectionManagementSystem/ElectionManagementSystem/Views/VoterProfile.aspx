<%@ Page Title="" Language="C#" MasterPageFile="~/Views/EMS.Master" AutoEventWireup="true" CodeBehind="VoterProfile.aspx.cs" Inherits="ElectionManagementSystem.Views.VoterProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid mt">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col text-center">
                                <img width="100px" src="/images/voter.jpeg" alt="Your Profile Image">
                                <h4>Your Profile</h4>
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label for="name">Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="tbName" runat="server" placeholder="Name" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label for="dob">Date of Birth</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="tbDOB" runat="server" placeholder="Date of Birth" TextMode="Date" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br>
                        <%--<div class="row">
                            <div class="col-md-6">
                                <label for="phone">Phone </label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="tbPhone" runat="server" placeholder="Name" ></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br>
                       
                        <div class="row">
                            <div class="col">
                                <label for="address">Full Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="tbAddress" runat="server" placeholder="Name" ></asp:TextBox>
                                </div>
                            </div>
                        </div>--%>
                        <div class="row">
                            <div class="col text-center">
                                <span class="badge badge-pill badge-info">Login Credentials</span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label for="email">Email ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="tbEmail" runat="server" placeholder="Email ID" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label for="oldpass">Old Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="tbOldPassword" runat="server" placeholder="Old Password" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label for="newpass">New Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="tbNewPassword" runat="server" placeholder="New Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-8 mx-auto text-center">
                                <div class="form-group">
                                    <asp:Button CssClass="btn btn-primary btn-block btn-lg" ID="Update" runat="server" Text="Update" OnClick="Update_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
