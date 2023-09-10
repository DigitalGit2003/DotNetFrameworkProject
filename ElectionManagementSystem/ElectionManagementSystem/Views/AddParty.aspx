<%@ Page Title="" Language="C#" MasterPageFile="~/Views/EMS.Master" AutoEventWireup="true" CodeBehind="AddParty.aspx.cs" Inherits="ElectionManagementSystem.Views.AddParty" %>
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

                        <h3 class="text-center">Add Party Details</h3>
                        <hr>

                        <div class="mb-3">
                            <label for="partyname" class="form-label">Partyname</label>
                            <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Patryname"></asp:TextBox>
                        </div>
                        

                          
                        <div class="mb-3">
                            <label for="senator" class="form-label">Senator</label>
                            <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Senator"></asp:TextBox>
                        </div>
                        
                        <div class="mb-3">
                            <label for="age" class="form-label">Age</label>
                            <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Age"></asp:TextBox>
                        </div>



                     
                     
                        <br>
                        <hr>
                        <div class="d-grid gap-2">
                            <asp:Button class="btn btn-success btn-block" ID="Button1" runat="server" Text="Add" />

                           <a href="Home.aspx" class="btn btn-info btn-block">Party List</a>
                        </div>

                    </div>
                </div>
                
            </div>
        </div>
    </div>

</asp:Content>
