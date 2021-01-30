<%@ Page Title="" Language="C#" MasterPageFile="~/UserLayer/HomePage.Master" AutoEventWireup="true" CodeBehind="CartPage.aspx.cs" Inherits="SnkrsHome.UserLayer.CartPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="DisplayChange" runat="server">
    <br />
    <div class="form-group">
        <div class="col-lg-12">
            <asp:ListBox ID="lbxCart" runat="server" CssClass="form-control "></asp:ListBox>
        </div>
        
    </div>
    <div class="form-group">
        <div class="col-sm-4 align-content-center">
            <%--some icons to show in page--%>
            <i class="fa fa-money"></i>
            <asp:Button ID="btnCheckOut" runat="server" Text="Check out" PostBackUrl="~/UserLayer/Payment.aspx" CssClass="btn btn-success"/>
            &nbsp;&nbsp;
            <i class="fa fa-times"></i>
            <asp:Label ID="lblError" runat="server" CssClass="text-danger"></asp:Label>
            <asp:Button ID="btnRemove" runat="server" Text="Remove Item" CssClass="btn btn-danger" OnClick="btnRemove_Click" />
            &nbsp;&nbsp;
            <i class="fa fa-undo"></i>
            <asp:Button ID="btnContinue" runat="server" Text="Continue Shop" CssClass="btn" OnClick="btnContinue_Click" />
        </div>
    </div>


</asp:Content>
