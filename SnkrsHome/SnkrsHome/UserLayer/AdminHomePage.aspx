<%@ Page Title="" Language="C#" MasterPageFile="~/UserLayer/HomePage.Master" AutoEventWireup="true" CodeBehind="AdminHomePage.aspx.cs" Inherits="SnkrsHome.UserLayer.AdminHomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="DisplayChange" runat="server">
    <br />
    <div class="container-fluid">
        <%-----------------------------------------------------For the User Management ---------------------------------------------%>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SnkrsHomeConnectionString %>" SelectCommand="SELECT * FROM [Customer]" DeleteCommand="DELETE FROM [Customer] WHERE [Customer_ID] = @Customer_ID" InsertCommand="INSERT INTO [Customer] ([E_Mail], [Password], [PhoneNumber], [FirstName], [LastName], [MemberShip]) VALUES (@E_Mail, @Password, @PhoneNumber, @FirstName, @LastName, @MemberShip)" UpdateCommand="UPDATE [Customer] SET [E_Mail] = @E_Mail, [Password] = @Password, [PhoneNumber] = @PhoneNumber, [FirstName] = @FirstName, [LastName] = @LastName, [MemberShip] = @MemberShip WHERE [Customer_ID] = @Customer_ID">
            <DeleteParameters>
                <asp:Parameter Name="Customer_ID" Type="Int32"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="E_Mail" Type="String"></asp:Parameter>
                <asp:Parameter Name="Password" Type="String"></asp:Parameter>
                <asp:Parameter Name="PhoneNumber" Type="String"></asp:Parameter>
                <asp:Parameter Name="FirstName" Type="String"></asp:Parameter>
                <asp:Parameter Name="LastName" Type="String"></asp:Parameter>
                <asp:Parameter Name="MemberShip" Type="String"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="E_Mail" Type="String"></asp:Parameter>
                <asp:Parameter Name="Password" Type="String"></asp:Parameter>
                <asp:Parameter Name="PhoneNumber" Type="String"></asp:Parameter>
                <asp:Parameter Name="FirstName" Type="String"></asp:Parameter>
                <asp:Parameter Name="LastName" Type="String"></asp:Parameter>
                <asp:Parameter Name="MemberShip" Type="String"></asp:Parameter>
                <asp:Parameter Name="Customer_ID" Type="Int32"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
        <div class="row content">
            <div class="col-sm-3">
                <div class="bg-light border-right" id="sidebar-wrapper">
                    <div class="sidebar-heading text-center" id="User">Administrator </div>
                    <div class="list-group list-group-flush">
                        <a href="#User" class="list-group-item list-group-item-action bg-light">Manage User Account</a>
                        <a href="#Inventory" class="list-group-item list-group-item-action bg-light">Manage Inventory</a>
                        <a href="#Logistics" class="list-group-item list-group-item-action bg-light">Manage Logistics</a>
                        <a href="AdminPassword.aspx" class="list-group-item list-group-item-action bg-light">Change Password</a>
                    </div>
                </div>
            </div>
            <br>
            <div class="col-sm-9">
                <div class="border">
                    <h4>User Account Management System</h4>
                    <p>You can Upgrade and Delete User account here.......</p>
                </div>
                <br />
                <div class="col-xs-12 table-responsive">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Customer_ID" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" CssClass="table table-bordered table-striped table-condensed">
                        <Columns>
                            <asp:BoundField DataField="Customer_ID" HeaderText="Customer_ID" ReadOnly="True" SortExpression="Customer_ID" InsertVisible="False"></asp:BoundField>
                            <asp:BoundField DataField="E_Mail" HeaderText="E_Mail" SortExpression="E_Mail"></asp:BoundField>
                            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password"></asp:BoundField>
                            <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber"></asp:BoundField>
                            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName"></asp:BoundField>
                            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName"></asp:BoundField>
                            <asp:BoundField DataField="MemberShip" HeaderText="MemberShip" SortExpression="MemberShip"></asp:BoundField>
                            <asp:CommandField ShowEditButton="True"></asp:CommandField>
                            <asp:CommandField ShowDeleteButton="True"></asp:CommandField>
                        </Columns>
                        <PagerStyle CssClass="pagerStyle" HorizontalAlign="Center" />
                    </asp:GridView>
                </div>
            </div>
        </div>
        <%--------------------------------------- for Inventory Managemrnt -----------------------------------------%>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:SnkrsHomeConnectionString %>' DeleteCommand="DELETE FROM [Item] WHERE [ItemID] = @ItemID" InsertCommand="INSERT INTO [Item] ([ItemID], [Name], [Price], [Image], [Size], [Description]) VALUES (@ItemID, @Name, @Price, @Image, @Size, @Description)" SelectCommand="SELECT * FROM [Item]" UpdateCommand="UPDATE [Item] SET [Name] = @Name, [Price] = @Price, [Image] = @Image, [Size] = @Size, [Description] = @Description WHERE [ItemID] = @ItemID">
            <DeleteParameters>
                <asp:Parameter Name="ItemID" Type="String"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ItemID" Type="String"></asp:Parameter>
                <asp:Parameter Name="Name" Type="String"></asp:Parameter>
                <asp:Parameter Name="Price" Type="String"></asp:Parameter>
                <asp:Parameter Name="Image" Type="String"></asp:Parameter>
                <asp:Parameter Name="Size" Type="String"></asp:Parameter>
                <asp:Parameter Name="Description" Type="String"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String"></asp:Parameter>
                <asp:Parameter Name="Price" Type="String"></asp:Parameter>
                <asp:Parameter Name="Image" Type="String"></asp:Parameter>
                <asp:Parameter Name="Size" Type="String"></asp:Parameter>
                <asp:Parameter Name="Description" Type="String"></asp:Parameter>
                <asp:Parameter Name="ItemID" Type="String"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
        <div class="row content">
            <div class="col-sm-3">
                <h2 id="Inventory">Inventory -> </h2>
            </div>
            <br>
            <div class="col-sm-9">
                <div class="border">
                    <h4>Inventory Management</h4>
                    <p>You can manage your items in this section like insert,update,delecte and select some of the items for your shop </p>
                </div>
                <br />
                <div class="col-xs-12 table-responsive">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="ItemID" DataSourceID="SqlDataSource2" AllowPaging="True" AllowSorting="True" CssClass="table table-bordered table-striped table-condensed">
                    <Columns>
                        <asp:BoundField DataField="ItemID" HeaderText="ItemID" ReadOnly="True" SortExpression="ItemID"></asp:BoundField>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"></asp:BoundField>
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price"></asp:BoundField>
                        <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image"></asp:BoundField>
                        <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size"></asp:BoundField>
                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description"></asp:BoundField>
                        <asp:CommandField ShowDeleteButton="True"></asp:CommandField>
                    </Columns>
                </asp:GridView>
                </div>
                <div class="col-xs-12 table-responsive">
                    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="100%" AutoGenerateRows="False" DataKeyNames="ItemID" DataSourceID="SqlDataSource2" CssClass="table table-bordered table-condensed" DefaultMode="Insert">
                        <Fields>
                            <asp:BoundField DataField="ItemID" HeaderText="ItemID" ReadOnly="True" SortExpression="ItemID"></asp:BoundField>
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"></asp:BoundField>
                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price"></asp:BoundField>
                            <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image"></asp:BoundField>
                            <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size"></asp:BoundField>
                            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description"></asp:BoundField>
                            <asp:CommandField ShowInsertButton="True" ShowEditButton="True"></asp:CommandField>
                        </Fields>
                    </asp:DetailsView>
                </div>
            </div>
        </div>
        <%-----------------------------------------------For Logistics Managenment ----------------------------------------------%>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString='<%$ ConnectionStrings:SnkrsHomeConnectionString %>' SelectCommand="SELECT * FROM [Orders]" DeleteCommand="DELETE FROM [Orders] WHERE [Order_ID] = @Order_ID" InsertCommand="INSERT INTO [Orders] ([StartDate], [PaymentDate], [FinishedDate], [CustomerID], [ShipID], [ItemList]) VALUES (@StartDate, @PaymentDate, @FinishedDate, @CustomerID, @ShipID, @ItemList)" UpdateCommand="UPDATE [Orders] SET [StartDate] = @StartDate, [PaymentDate] = @PaymentDate, [FinishedDate] = @FinishedDate, [CustomerID] = @CustomerID, [ShipID] = @ShipID, [ItemList] = @ItemList WHERE [Order_ID] = @Order_ID">
            <DeleteParameters>
                <asp:Parameter Name="Order_ID" Type="Int32"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter DbType="Date" Name="StartDate"></asp:Parameter>
                <asp:Parameter DbType="Date" Name="PaymentDate"></asp:Parameter>
                <asp:Parameter DbType="Date" Name="FinishedDate"></asp:Parameter>
                <asp:Parameter Name="CustomerID" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="ShipID" Type="String"></asp:Parameter>
                <asp:Parameter Name="ItemList" Type="String"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter DbType="Date" Name="StartDate"></asp:Parameter>
                <asp:Parameter DbType="Date" Name="PaymentDate"></asp:Parameter>
                <asp:Parameter DbType="Date" Name="FinishedDate"></asp:Parameter>
                <asp:Parameter Name="CustomerID" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="ShipID" Type="String"></asp:Parameter>
                <asp:Parameter Name="ItemList" Type="String"></asp:Parameter>
                <asp:Parameter Name="Order_ID" Type="Int32"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
        <div class="row content">
            <div class="col-sm-3">
                <h2 id="Logistics">Logistics -></h2>
            </div>
            <br>
            <div class="col-sm-9">
                <div class="border">
                    <h4>Logistics Management</h4>
                    <p>You can Check and control the e-Store Logistic in this section</p>
                </div>
                <br />
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="Order_ID" DataSourceID="SqlDataSource3" AllowPaging="True" AllowSorting="True" CssClass="table table-bordered table-striped table-condensed">
                    <Columns>
                        <asp:BoundField DataField="Order_ID" HeaderText="Order_ID" ReadOnly="True" SortExpression="Order_ID" InsertVisible="False"></asp:BoundField>
                        <asp:BoundField DataField="StartDate" HeaderText="StartDate" SortExpression="StartDate"></asp:BoundField>
                        <asp:BoundField DataField="PaymentDate" HeaderText="PaymentDate" SortExpression="PaymentDate"></asp:BoundField>
                        <asp:BoundField DataField="FinishedDate" HeaderText="FinishedDate" SortExpression="FinishedDate"></asp:BoundField>
                        <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID"></asp:BoundField>
                        <asp:BoundField DataField="ShipID" HeaderText="ShipID" SortExpression="ShipID"></asp:BoundField>
                        <asp:BoundField DataField="ItemList" HeaderText="ItemList" SortExpression="ItemList"></asp:BoundField>
                        <asp:CommandField ShowDeleteButton="True"></asp:CommandField>
                        <asp:CommandField ShowEditButton="True"></asp:CommandField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
        <br />
        <br />
    </div>
</asp:Content>
