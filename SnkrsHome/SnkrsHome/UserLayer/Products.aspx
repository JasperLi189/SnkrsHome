<%@ Page Title="" Language="C#" MasterPageFile="~/UserLayer/HomePage.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="SnkrsHome.UserLayer.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="DisplayChange" runat="server" >
    <div class="container">
        <br />
        <div class="row form-inline my-2 my-lg-0"">
            <asp:TextBox ID="tbxSearch" runat="server" CssClass="form-control mr-sm-2" placeholder="Search..."></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Search" CssClass="btn btn-outline-success my-2 my-sm-0" />
        </div>
         <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetProducts" TypeName="SnkrsHome.Models.ProductDB"></asp:ObjectDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:SnkrsHomeConnectionString %>' SelectCommand="SELECT * FROM [Item]"></asp:SqlDataSource>
         <br />
        <div class="row border mr-3">
            <div class="col-lg-2">
                <asp:DropDownList ID="ddl" runat="server" AutoPostBack="true"  OnSelectedIndexChanged="ddl_SelectedIndexChanged" CssClass="form-control" DataSourceID="ObjectDataSource1" DataTextField="Name" DataValueField="Name">
                </asp:DropDownList>
                </div>

            <div class="col-lg-6">

                <table class="w-100">
                    <tr>
                        <td>
                            <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblSize" runat="server" Text="Size"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblUnitPrice" runat="server" Text="UnitPrice"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblDescription" runat="server" Text="Description"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblQuantity" runat="server" Text="Plase enter Quantity"></asp:Label>
                            <asp:TextBox ID="tbxQuantity" runat="server" ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        <asp:RangeValidator ID="rvQuantity" runat="server" ErrorMessage="The Quantity not avaliable" 
                                 MinimumValue="1" ControlToValidate="tbxQuantity" 
                                Enabled="True" Type="Integer" CssClass="text-danger" ></asp:RangeValidator>
                            <asp:RequiredFieldValidator ID="rfvQuantity" runat="server" ErrorMessage="Please enter Quantity" ControlToValidate="tbxQuantity" CssClass="text-danger"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <i class="fa fa-shopping-cart" style="color:black "></i>
                            <asp:Button ID="btnAdd" runat="server" Text="Add To Cart" OnClick="btnAdd_Click" CssClass="btn btn-success" />
                            &nbsp;&nbsp;&nbsp;
                            <i class="fa fa-share-square" style="color:black "></i>
                            <asp:Button ID="btnGoCart" runat="server" Text="Go to Cart" CssClass="btn btn-primary" PostBackUrl="~/UserLayer/CartPage.aspx" CausesValidation="false" />
                        </td>
                    </tr>
                </table>
            </div>

            <div class="col-lg-4">
                <asp:Image ID="Image" runat="server" Width="100%" Height="100%" />
            </div>
        </div>
    </div>
</asp:Content>
