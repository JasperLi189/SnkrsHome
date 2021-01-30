<%@ Page Title="" Language="C#" MasterPageFile="~/UserLayer/HomePage.Master" AutoEventWireup="true" CodeBehind="RegisterSuccess.aspx.cs" Inherits="SnkrsHome.UserLayer.RegisterSuccess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="DisplayChange" runat="server">
    <div class="container">
        <h1>Register Successfully! Please Login to your account</h1>
        <h2>Please Login to your account</h2>
        <div class="row">
            <asp:Button ID="btnGoLogin" runat="server" Text="Login" PostBackUrl="~/UserLayer/Login.aspx" CssClass="btn btn-primary btn-block" />
        </div>
    </div>
</asp:Content>
