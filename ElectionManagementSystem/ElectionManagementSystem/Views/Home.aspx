<%@ Page Title="" Language="C#" MasterPageFile="~/Views/EMS.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ElectionManagementSystem.Views.Home" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">

        $(document).ready(function () {

            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();

        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;
   
    <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" Height="137px" Width="1092px">
    </asp:GridView>

    <asp:GridView ID="GridView2" runat="server" CssClass="table table-striped table-bordered" Height="137px" Width="1092px">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <div class="col-md-5">
                        <div class="card">
                            <div class="row no-gutters">
                                <div class="col-md-4">
                                    <img src='<%# "holder.js/100px180?text=" + Eval("ImageText") %>' class="card-img" alt="Card Image" />
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body">
                                        <h5 class="card-title"><%# Eval("CardTitle") %></h5>
                                        <ul class="list-group list-group-flush">
                                            <li class="list-group-item"><%# Eval("ListItem1") %></li>
                                            <li class="list-group-item"><%# Eval("ListItem2") %></li>
                                            <li class="list-group-item"><%# Eval("ListItem3") %></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>


    <div class="col-md-5">
        <div class="card">
            <div class="row no-gutters">
                <div class="col-md-4">
                    <img src="holder.js/100px180?text=Image cap" class="card-img" alt="Card Image">
                </div>
                <div class="col-md-8">
                    <div class="card-body">
                        <h5 class="card-title">Card Title</h5>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">Cras justo odio</li>
                            <li class="list-group-item">Dapibus ac facilisis in</li>
                            <li class="list-group-item">Vestibulum at eros</li>
                        </ul>
                    </div>

                </div>
            </div>
        </div>
    </div>


</asp:Content>
