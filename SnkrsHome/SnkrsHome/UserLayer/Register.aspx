<%@ Page Title="" Language="C#" MasterPageFile="~/UserLayer/HomePage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="SnkrsHome.UserLayer.Register" %>

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
            width:100%;
        }

        .btn-custom {
            font-size: 15px;
            font-weight: bold;
        }
    </style>
    <div class="login-form">
        <h2 class="text-center">Create Account</h2>
        <div class="form-group">
            <%--<input type="text" class="form-control" placeholder="Username" required="required">--%>
            <asp:Label ID="Label1" runat="server" Text="First Name : " CssClass="col-form-label"></asp:Label>
            <asp:TextBox ID="tbxFirstName" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvFName" runat="server" ErrorMessage="Please enter your First Name" ControlToValidate="tbxFirstName" CssClass="text-danger"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <%--<input type="password" class="form-control" placeholder="Password" required="required">--%>
            <asp:Label ID="Label2" runat="server" Text="Last Name :" CssClass="col-form-label"></asp:Label>
            <asp:TextBox ID="tbxLastName" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <%--<button type="submit" class="btn btn-primary btn-block">Log in</button>--%>
            <asp:Label ID="Label3" runat="server" Text="E-Mail (as UserName ):" CssClass="col-form-label"></asp:Label>
            <asp:TextBox ID="tbxEmail" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Please enter your Email" ControlToValidate="tbxEmail" CssClass="text-danger"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revRegisterEmail" runat="server" CssClass="text-danger"
                     ErrorMessage="Enter a Email format" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  
                     ControlToValidate="tbxEmail" >Must be a valid email</asp:RegularExpressionValidator>
        </div>
        <div class="form-group">
            <%--<button type="submit" class="btn btn-primary btn-block">Log in</button>--%>
            <asp:Label ID="Label4" runat="server" Text="Password :" CssClass="col-form-label"></asp:Label>
            <asp:TextBox ID="tbxPassword" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <%--<button type="submit" class="btn btn-primary btn-block">Log in</button>--%>
            <asp:Label ID="Label5" runat="server" Text="Confilm Password :" CssClass="col-form-label"></asp:Label>
            <asp:TextBox ID="tbxRePassword" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:CompareValidator ID="cvPassword" runat="server" Display="Dynamic" ErrorMessage="Password do not match!" ControlToValidate="tbxRePassword" ControlToCompare="tbxPassword" CssClass="text-danger"></asp:CompareValidator>
        </div>
        <br />
        <%--<p class="text-center"><a href="#">Create an Account</a></p>--%>
        <p class="text-center">
            <asp:Button ID="btnSubmit" runat="server" Text="Register" OnClick="btnSubmit_Click" CssClass="btn-custom btn-primary btn-block" />
        </p>
        <p class="text-center">
            <asp:LinkButton ID="lbtnCancle" runat="server" PostBackUrl="~/UserLayer/HomeMenu.aspx" CausesValidation="false" >Cancle</asp:LinkButton>
        </p>
    </div>
    
</asp:Content>
