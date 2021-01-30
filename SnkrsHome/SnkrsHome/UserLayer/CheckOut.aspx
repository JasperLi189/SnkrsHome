<%@ Page Title="" Language="C#" MasterPageFile="~/UserLayer/HomePage.Master" AutoEventWireup="true" CodeBehind="CheckOut.aspx.cs" Inherits="SnkrsHome.UserLayer.CheckOut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="DisplayChange" runat="server">
    <div class="container">
         <h1 class="text-center">Check Out !!!</h1>

         <%--Error summary Display-----------------------------------%>
         <asp:ValidationSummary ID="ValidationSummary1" runat="server"  HeaderText="Something went wrong..." DisplayMode="List" CssClass="text-danger"/>

        <%--Contact Information-----------------------------------%>
         <h3 >Contact Information</h3>

        <div class="form-group ">
             <label class="col-sm-3">Email Address:</label>
             <div class="col-sm-5">
                 <asp:TextBox ID="tbxEmail" runat="server" TextMode="Email"  CssClass="form-control"></asp:TextBox>
             </div>
             <div class="col-sm-4">
                 <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                     ErrorMessage="You must enter Email address" Display="Dynamic" CssClass="text-danger"
                     ControlToValidate="tbxEmail"></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="revEmail" runat="server" CssClass="text-danger"
                     ErrorMessage="Enter a Email format" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  
                     ControlToValidate="tbxEmail" >Must be a valid email</asp:RegularExpressionValidator>                
             </div>
        </div>

        <div class="form-group">
            <label class="col-sm-3">Email Comfirmation:</label>
            <div class="col-sm-5">
                <asp:TextBox ID="tbxReEmail" runat="server" TextMode="Email" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                     ErrorMessage="You must enter Email address" Display="Dynamic" CssClass="text-danger"
                     ControlToValidate="tbxReEmail"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cvEmail" runat="server" ErrorMessage="Email not match" CssClass="text-danger"
                    Display="Dynamic" ControlToValidate="tbxReEmail" ControlToCompare="tbxEmail">Email do not match</asp:CompareValidator>
            </div>

        </div>

        <div class="form-group">
            <label class="col-sm-3">First Name:</label>
            <div class="col-sm-5">
                <asp:TextBox ID="tbxFName" runat="server"  CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server"
                     ErrorMessage="First name" CssClass="text-danger"
                     Display="Dynamic" ControlToValidate="tbxFName">First Name are Required</asp:RequiredFieldValidator>
            </div>

        </div>

        <div class="form-group">
            <label class="col-sm-3">Last Name:</label>
            <div class="col-sm-5">
                <asp:TextBox ID="tbxLName" runat="server"  CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="rfvLastname" runat="server"
                     ErrorMessage="Last name" CssClass="text-danger"
                     Display="Dynamic" ControlToValidate="tbxLName">Last Name are Required</asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
            <label class="col-sm-3">Phone Number:</label>
            <div class="col-sm-5">
                <asp:TextBox ID="tbxPhone" runat="server"  CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="rfvPhone" runat="server" 
                    ErrorMessage="Phone Number" CssClass="text-danger"
                     Display="Dynamic" ControlToValidate="tbxPhone"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revPhone" runat="server" Display="Dynamic" CssClass="text-danger"
                    ErrorMessage="Phone Number"  ValidationExpression="\d\d\d\d\d\d\d\d" ControlToValidate="tbxPhone">Format:8 digits only </asp:RegularExpressionValidator>
            </div>

        </div>

        </div>
        <%--Billing Information--------------------------------------%>
        <h3>Billing Information</h3>

        <div class="form-group">
            <label class="col-sm-3">Address:</label>
            <div class="col-sm-5">
                <asp:TextBox ID="tbxAddress" runat="server"  CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="rfvAddress" runat="server" 
                    ErrorMessage="Address Required" CssClass="text-danger"
                     Display="Dynamic" ControlToValidate="tbxAddress">Address Required</asp:RequiredFieldValidator>
            </div>
        </div>

         <div class="form-group">
            <label class="col-sm-3">Country:</label>
            <div class="col-sm-5">
                 <asp:TextBox ID="tbxContury" runat="server"  CssClass="form-control"></asp:TextBox>
            </div>
             <div class="col-sm-4">
                 <asp:RequiredFieldValidator ID="rfvContury" runat="server" ErrorMessage="RequiredContury" ControlToValidate="tbxContury" CssClass="text-danger"></asp:RequiredFieldValidator>
             </div>
        </div>

        <div class="form-group">
            <label class="col-sm-3">City:</label>
            <div class="col-sm-5">
                <asp:TextBox ID="tbxCity" runat="server"  CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="rfvCity" runat="server" 
                    ErrorMessage="City required" CssClass="text-danger"
                     Display="Dynamic" ControlToValidate="tbxCity">City Required</asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-3">State:</label>
            <div class="col-sm-5">
                 <asp:TextBox ID="tbxState" runat="server"  CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                 <asp:RequiredFieldValidator ID="rfvState" runat="server" 
                    ErrorMessage="City required" CssClass="text-danger"
                     Display="Dynamic" ControlToValidate="tbxState">State Required</asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-3">Zip Code:</label>
            <div class="col-sm-5">
                 <asp:TextBox ID="tbxCode" runat="server"  CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                 <asp:RequiredFieldValidator ID="rfvCode" runat="server" 
                    ErrorMessage="Zip Code required" CssClass="text-danger"
                     Display="Dynamic" ControlToValidate="tbxCode">Zip Code Required</asp:RequiredFieldValidator>
            </div>

        </div>
       <%--Shipping Information--------------------------------------%>
        <h3>Shipping Information</h3>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:SnkrsHomeConnectionString %>' SelectCommand="SELECT * FROM [ShippingCom]"></asp:SqlDataSource>
        <div class="form-group">
            <div class="col-sm-5">
                <asp:DropDownList ID="ddlShip" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="ShippingID" CssClass="form-control"></asp:DropDownList>
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-9">
                <asp:CheckBox ID="chkSameInfo" runat="server"  OnCheckedChanged="chkSameInfo_CheckedChanged" AutoPostBack="True" />
                <label>Same a billing address</label>
            </div> 
        </div>

        <div class="form-group">
            <label class="col-sm-3">Contury:</label>
            <div class="col-sm-5">
                 <asp:TextBox ID="tbxSContury" runat="server"  CssClass="form-control"></asp:TextBox>
            </div>
             <div class="col-sm-4">
                 <asp:RequiredFieldValidator ID="rfvSContury" runat="server" ErrorMessage="RequiredContury" ControlToValidate="tbxSContury" CssClass="text-danger"></asp:RequiredFieldValidator>
             </div>
        </div>

        <div class="form-group">
            <label class="col-sm-3">Address:</label>
            <div class="col-sm-5">
                <asp:TextBox ID="tbxSAddress" runat="server"  CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="rfvSAddress" runat="server" 
                    ErrorMessage="Address Required" CssClass="text-danger"
                     Display="Dynamic" ControlToValidate="tbxSAddress">Address Required</asp:RequiredFieldValidator>
            </div>

        </div>

        <div class="form-group">
            <label class="col-sm-3">City:</label>
            <div class="col-sm-5">
                <asp:TextBox ID="tbxSCity" runat="server"  CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="rfvSCity" runat="server" 
                    ErrorMessage="City required" CssClass="text-danger"
                     Display="Dynamic" ControlToValidate="tbxSCity">City Required</asp:RequiredFieldValidator>
            </div>

        </div>

        <div class="form-group">
            <label class="col-sm-3">State:</label>
            <div class="col-sm-5">
                 <asp:TextBox ID="tbxSState" runat="server"  CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                 <asp:RequiredFieldValidator ID="rfvSState" runat="server" 
                    ErrorMessage="City required" CssClass="text-danger"
                     Display="Dynamic" ControlToValidate="tbxSState">State Required</asp:RequiredFieldValidator>
            </div>

        </div>

        <div class="form-group">
            <label class="col-sm-3">Zip Code:</label>
            <div class="col-sm-5">
                 <asp:TextBox ID="tbxSCode" runat="server"  CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                 <asp:RequiredFieldValidator ID="rfvSCode" runat="server" 
                    ErrorMessage="Zip Code required" CssClass="text-danger"
                     Display="Dynamic" ControlToValidate="tbxSCode">Zip Code Required</asp:RequiredFieldValidator>
            </div>

        </div>
        <%--Additional Information for sustomer--------------------------------------%>
        <h3>Additional Information</h3>

        <div class="form-group">
            <label class="col-sm-3">Message:</label>
            <div class="col-sm-5">
                <asp:TextBox ID="tbxMessage" runat="server"  CssClass="form-control" Height="123px" ></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:Label ID="lblMessage" runat="server" Text="Label">*Leave your kind message to us!</asp:Label>
            </div>

        </div>
        <%--Button--%>
        <div class="form-group">
            <div class="col-sm-9">
                <asp:Button ID="btnCheckOut" runat="server" Text="Confirm" OnClick="btnCheckOut_Click" CssClass="btn btn-success"/>
                &nbsp;&nbsp;
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" CssClass="btn btn-danger" CausesValidation ="false"/>
                &nbsp;&nbsp;
                <asp:LinkButton ID="lbtnGoBack" runat="server" PostBackUrl="~/UserLayer/Products.aspx"  CausesValidation="False">Continue Purchase</asp:LinkButton>
            </div>

        </div>



    </div>
</asp:Content>
