<%@ Page Title="" Language="C#" MasterPageFile="~/UserLayer/HomePage.Master" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="SnkrsHome.UserLayer.ForgetPassword" %>
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
            <asp:Label ID="lblHeader" runat="server" Text="Forget Password"></asp:Label></h2>
        <div class="form-group">
            <asp:TextBox ID="tbxEmail" runat="server" CssClass="form-control" placeholder="Enter E-mail" ></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="tbxNewPass1" runat="server" CssClass="form-control" placeholder="New Password"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="tbxNewPass2" runat="server" CssClass="form-control" placeholder="New Password again"></asp:TextBox>
        </div>
        <asp:CompareValidator ID="cvPass" runat="server" ErrorMessage="Password No Match!" CssClass="text-danger" Display="Dynamic" 
            ControlToValidate="tbxNewPass2" ControlToCompare="tbxNewPass1"></asp:CompareValidator>
        <asp:Label ID="lblError" runat="server" Text="Can not found user account, please check again!" Visible="false" CssClass="text-danger"></asp:Label>
        <div class="form-group">
            <asp:Button ID="btnSend" runat="server" Text="Update" CssClass="btn-custom btn-primary btn-block" OnClick="btnSend_Click" />
            <br />
        </div>
        <div class="form-group">
            <asp:TextBox ID="tbxVerify" runat="server" placeholder="Please check your Email and enter the Verify Code" CssClass="form-control" Visible="false" ></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Button ID="btnVerify" runat="server" Text="Comfirm" CssClass="btn-custom btn-primary btn-block" OnClick="btnVerify_Click" Visible="false" />
            <br />
        </div>
    </div>
</asp:Content>
