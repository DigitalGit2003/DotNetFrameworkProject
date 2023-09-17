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
                        <asp:Label ID="lblSaveSuccessfull" runat="server" ForeColor="#009900"></asp:Label>


                        <div class="mb-3">
                            <label for="partyname" class="form-label">Partyname&nbsp;&nbsp;&nbsp;&nbsp;
                            <label for="username" class="form-label"><asp:RequiredFieldValidator ID="rfvPartyname" runat="server" ControlToValidate="tbPartyname" ErrorMessage="Partyname is required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </label>
                            </label>
                            &nbsp;<asp:TextBox CssClass="form-control" ID="tbPartyname" runat="server" placeholder="Patryname"></asp:TextBox>
                        </div>
                        

                          
                        <div class="mb-3">
                            <label for="senator" class="form-label">Senator&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <label for="username" class="form-label"><asp:RequiredFieldValidator ID="rfvSenator" runat="server" ControlToValidate="tbSenator" ErrorMessage="Senator is required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </label>
                            </label>
                            &nbsp;<asp:TextBox CssClass="form-control" ID="tbSenator" runat="server" placeholder="Senator"></asp:TextBox>
                        </div>
                        
                        <div class="mb-3">
                            <label for="age" class="form-label">Age&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <label for="username" class="form-label"><asp:RequiredFieldValidator ID="rfvAge" runat="server" ControlToValidate="tbAge" ErrorMessage="Age is required" ForeColor="Red"></asp:RequiredFieldValidator> 
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            <asp:RangeValidator ID="rvAge" runat="server" ControlToValidate="tbAge" ErrorMessage="Age must be lie between 20 and 60." ForeColor="Red" MaximumValue="60" MinimumValue="20"></asp:RangeValidator>
</label>
                            </label>
                            &nbsp;<asp:TextBox CssClass="form-control" ID="tbAge" runat="server" placeholder="Age" TextMode="Number"></asp:TextBox>
                        </div>



                        <asp:FileUpload ID="fuPartylogo" runat="server" />
                        
                        <br>
                        <hr>
                        <div class="d-grid gap-2">
                            <asp:Button class="btn btn-success btn-block" ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />

                           <a href="Home.aspx" class="btn btn-info btn-block">Party List</a>
                        </div>

                    </div>
                </div>
                
            </div>
        </div>
    </div>

</asp:Content>
