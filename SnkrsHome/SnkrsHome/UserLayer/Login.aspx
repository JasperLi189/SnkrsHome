<%@ Page Title="" Language="C#" MasterPageFile="~/UserLayer/HomePage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SnkrsHome.UserLayer.Login" %>

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
            <asp:Label ID="lblHeader" runat="server" Text="Log in"></asp:Label></h2>
        <div class="form-group">
            <asp:TextBox ID="tbxName" runat="server" CssClass="form-control" placeholder="E-mail as account number"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="tbxPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Password" ></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Button ID="btnLogin" runat="server" Text="Log in" OnClick="btnLogin_Click" CssClass="btn-custom btn-primary btn-block" />
            <br />
            <asp:Button ID="btnLogout" runat="server" Text="Log Out" Visible="false" PostBackUrl="~/UserLayer/HomeMenu.aspx" CssClass="btn-custom btn-primary btn-block" />
        </div>
        <%--<p class="text-center"><a href="#">Create an Account</a></p>--%>
        <p class="text-center">
            <asp:LinkButton ID="lbtnForgot" runat="server" PostBackUrl="~/UserLayer/ForgetPassword.aspx" >Forget Password?</asp:LinkButton>
        </p>
        <p class="text-center">
            <asp:LinkButton ID="lbtn" runat="server" PostBackUrl="~/UserLayer/Register.aspx">Register</asp:LinkButton>
        </p>
        <p class="text-center">
            <asp:Label ID="lblShow" runat="server" CssClass="alert-danger"></asp:Label>
        </p>
        <p class="text-center">
            <asp:Label ID="lblError" runat="server" CssClass="text-danger"></asp:Label>
        </p>
        <p class="text-center">
            <asp:CheckBox ID="cbxAdmin" runat="server" />
            As Administartor
        </p>
        <p class="text-center"> AdminAccount = "JasperAdministrator"     </p>
        <p class="text-center"> AdminPassword = "123456" as default  </p>
    </div>

</asp:Content>
