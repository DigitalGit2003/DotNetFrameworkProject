<%@ Page Title="" Language="C#" MasterPageFile="~/Views/EMS.Master" AutoEventWireup="true" CodeBehind="Voting.aspx.cs" Inherits="ElectionManagementSystem.Views.Voting" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


      <link rel="stylesheet" type="text/css" href="styles.css" />

    <script type="text/javascript">
            function disableAllVoteButtons() {
                $(".btn-vote").prop("disabled", true);
            }
    </script>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <center >
        <asp:Label ID="lblCheckParties" runat="server"></asp:Label>
    </center>

     <asp:GridView ID="PartyGridView" runat="server" CssClass="party-grid" AutoGenerateColumns="False">
    <Columns>
        <asp:TemplateField HeaderText="Party Name">
            <ItemTemplate>
                <div class="d-flex flex-row">
                    <div class="col">
                    
                        <div class="party-card">
                            <asp:Image ID="PartyImage" runat="server" AlternateText="Party Image" CssClass="party-image"
                                ImageUrl='<%# "../PartyLogo/" + Eval("LogoUrl") %>' />
                            <h5><%# Eval("PartyName") %></h5>
                            <p>Senator: <%# Eval("Senator") %></p>
                            <p>Age: <%# Eval("Age") %></p>
                            <div class="vote-container">
                                <p class="vote-count"><%# Eval("Votes") %> Votes</p>

                                <asp:Button ID="VoteButton" runat="server" CssClass="btn-vote" Text="Vote" OnClick="VoteButton_Click"
                                    CommandArgument='<%# Eval("PartyName") %>' />
                            </div>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>

</asp:Content>
