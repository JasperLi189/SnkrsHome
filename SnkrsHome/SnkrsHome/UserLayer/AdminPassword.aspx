<%@ Page Title="" Language="C#" MasterPageFile="~/UserLayer/HomePage.Master" AutoEventWireup="true" CodeBehind="AdminPassword.aspx.cs" Inherits="SnkrsHome.UserLayer.AdminPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="DisplayChange" runat="server">
    <style>
        .login-form {
            width: 340px;
            margin: 50px auto;
            font-size: 15px;
        }

            .login-form form {
                margin-bottom: 15px;
                background: #f7f7f7;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                padding: 30px;
            }

            .login-form h2 {
                margin: 0 0 15px;
            }

        .form-control, .btn-custom {
            min-height: 38px;
            border-radius: 2px;
            width: 100%;
        }

        .btn-custom {
            font-size: 15px;
            font-weight: bold;
        }
    </style>
    <div class="login-form">
        <h2 class="text-center">
            <asp:Label ID="lblHeader" runat="server" Text="Change Admin Password"></asp:Label>

        </h2>
        <div class="form-group">
            <asp:TextBox ID="tbxAccount" runat="server" CssClass="form-control" placeholder="Admin Account" ></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="tbxNewPassword1" runat="server" CssClass="form-control" placeholder="New Password"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="tbxNewPassword2" runat="server" CssClass="form-control" placeholder="New Password again"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:CompareValidator ID="cvValidator" runat="server" ErrorMessage="First and second password not match" CssClass="text-danger" ControlToCompare="tbxNewPassword1" ControlToValidate="tbxNewPassword2"></asp:CompareValidator>
        </div>
        <div class="form-group">
            <asp:Button ID="btnChange" runat="server" Text="Comfirm" CssClass="btn-custom btn-primary btn-block" OnClick="btnChange_Click"/>
            <asp:Button ID="btnGoBack" runat="server" Text="Admim Home Page" PostBackUrl="~/UserLayer/AdminHomePage.aspx" Visible="false" CssClass="btn-custom btn-primary btn-block"/>
            <br />
        </div>
        <h2 class="text-center">
            <asp:Label ID="lblSuccess" runat="server" ></asp:Label>
        </h2>
    </div>
</asp:Content>
