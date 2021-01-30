<%@ Page Title="" Language="C#" MasterPageFile="~/UserLayer/HomePage.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="SnkrsHome.UserLayer.Confirmation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="DisplayChange" runat="server">
    <style>
        .login-form {
            width: 490px;
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
    <div class="login-form form">
        <h2 class="text-center">Make Payment</h2>
        <h2 class="text-center"> 
            <asp:Label ID="Label4" runat="server" Text="Card Name: "></asp:Label>
            <asp:TextBox ID="tbxCard" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator CssClass="text-danger" ID="rvCard" runat="server" ErrorMessage="Need Card User Name" ControlToValidate="tbxCard"></asp:RequiredFieldValidator>

        </h2>
        <h2 class="text-center">
            <asp:Label ID="Label5" runat="server" Text="Card Number:  "></asp:Label>
            <asp:TextBox ID="tbxNumber" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator CssClass="text-danger" ID="rfBumber" runat="server" ErrorMessage="Need Card Number" ControlToValidate="tbxNumber"></asp:RequiredFieldValidator>
        </h2>
        <h2 class="text-center">
            <asp:Label ID="Label6" runat="server" Text="Expiry Date: (Year-Month) "></asp:Label>
            </h2>
        <h2 class="text-center">
            <asp:TextBox ID="tbxYear" runat="server" Width="112px"></asp:TextBox>
            <asp:TextBox ID="tbxMonth" runat="server" Width="111px"></asp:TextBox>
        </h2>
        <h2 class="text-center">
            <asp:RequiredFieldValidator CssClass="text-danger" ID="rfYear" runat="server" ErrorMessage="Need Expriy Year" ControlToValidate="tbxYear"></asp:RequiredFieldValidator>
            <br />
            <asp:RequiredFieldValidator CssClass="text-danger" ID="rfMonth" runat="server" ErrorMessage="Need Expriy Month" ControlToValidate="tbxMonth"></asp:RequiredFieldValidator>
        </h2>
        <h2 class="text-center">
            <asp:Label ID="Label1" runat="server" Text="CVC"></asp:Label>
        </h2>
        <h2 class="text-center">
            <asp:TextBox ID="tbxCVC" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator CssClass="text-danger" ID="rfCVC" runat="server" ErrorMessage="Need Card CVC" ControlToValidate="tbxCVC"></asp:RequiredFieldValidator>
        </h2>
        <h2 class="text-center">
            <asp:Label ID="Label2" runat="server" Text="Total Amount: "></asp:Label>
        </h2>
        <h2 class="text-center">
            <asp:TextBox ID="tbxAmount" runat="server" Enabled="false"></asp:TextBox>
        </h2>
        <h2 class="text-center"><asp:Label ID="lblResult" runat="server" Text="Please wait for a while....." ></asp:Label></h2>
        <h2 class="text-center"><asp:Button ID="btnPay" runat="server" Text="Make Payment" CssClass="btn-custom btn-primary btn-block" OnClick="btnPay_Click"/></h2>
        <h2 class="text-center"><asp:HyperLink ID="hplCheckOut" runat="server" NavigateUrl="~/UserLayer/CheckOut.aspx" Visible="false" >Continue Check Out</asp:HyperLink></h2>
   </div>
    
</asp:Content>
