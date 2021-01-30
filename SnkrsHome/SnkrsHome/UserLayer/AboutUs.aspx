<%@ Page Title="" Language="C#" MasterPageFile="~/UserLayer/HomePage.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="SnkrsHome.UserLayer.AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="DisplayChange" runat="server">
    <br /> 
    <div class="container-fluid">
        <div class="row content">
            <div class="col-sm-3">
               <%-- Make some space--%>
            </div>
            <div class="col-sm-6">
                <div class="row">
                    <img src="../Image/Logo-Round.png" class="img-responsive" style="width: 100%"  alt="Image">
                </div>
                <div class="row">
                    <h2>SnkrsHome</h2>
                </div>
                <div class="row">
                    <p>We work together to design, creata and produce work that we are pround of for floks that we believe in. 
                        We are available for hire in a wide range of creative disciplines for a variety of jobs, projects and gigs</p>
                </div>
            </div>
            <div class="col-sm-3">
                <%--Make some space--%>
            </div>
        </div>
    </div>
    
</asp:Content>
