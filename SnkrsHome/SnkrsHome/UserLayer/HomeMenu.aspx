<%@ Page Title="" Language="C#" MasterPageFile="~/UserLayer/HomePage.Master" AutoEventWireup="true" CodeBehind="HomeMenu.aspx.cs" Inherits="SnkrsHome.UserLayer.HomeMenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="DisplayChange" runat="server">
    <br />
    <div class="jumbotron">
        <div class="container text-center">
            <h1 class=" text-white">SnkrsHome</h1>
            <p class=" text-white">Welcome to SnkrsHome! The best place to find your favour Shoes.</p>
        </div>
    </div>
    <div class="container-fluid bg-3 text-center">
        <h3>SnkrsHome!!!!</h3>
        <br>
        <div class="row">
            <div class="col-sm-4 border ">
                <p>About Us</p>
                <img src="../Image/AboutUs.jpg" class="img-responsive" style="width: 100%" alt="Image">
            </div>
            <div class="col-sm-4 border">
                <p>SnkrsHome</p>
                <img src="../Image/Logo.png" class="img-responsive" style="width: 100%" alt="Image">
            </div>
            <div class="col-sm-4 border">
                <p>Contact Us</p>
                <img src="../Image/Contactus.jpg" class="img-responsive" style="width: 100%" alt="Image">
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-sm-4">
                <p>Products</p>
                <img src="../Image/Products.png" class="img-responsive" style="width: 100%" alt="Image">
            </div>
            <div class="col-sm-4">
                <p>More Info</p>
                <img src="../Image/Info.jpg" class="img-responsive" style="width: 100%" alt="Image">
            </div>
            <div class="col-sm-4">
                <p>Account</p>
                <img src="../Image/Account.png" class="img-responsive" style="width: 100%" alt="Image">
            </div>
        </div>
    </div>
</asp:Content>
