<%@ Page Title="" Language="C#" MasterPageFile="~/UserLayer/HomePage.Master" AutoEventWireup="true" CodeBehind="PurchaseHistory.aspx.cs" Inherits="SnkrsHome.UserLayer.PurchaseHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="DisplayChange" runat="server">
    <h2 class="text-center">PurchaseHistory</h2>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:SnkrsHomeConnectionString %>' SelectCommand="SELECT * FROM [Orders] WHERE ([CustomerID] = @CustomerID)">
        <SelectParameters>
            <asp:SessionParameter SessionField="UserID" Name="CustomerID" Type="Int32"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <div class="col-xs-12 table-responsive">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Order_ID" DataSourceID="SqlDataSource1" CssClass="table table-bordered table-striped table-condensed" >
            <Columns>
                <asp:BoundField DataField="Order_ID" HeaderText="Order_ID" ReadOnly="True" InsertVisible="False" SortExpression="Order_ID"></asp:BoundField>
                <asp:BoundField DataField="StartDate" HeaderText="StartDate" SortExpression="StartDate"></asp:BoundField>
                <asp:BoundField DataField="PaymentDate" HeaderText="PaymentDate" SortExpression="PaymentDate"></asp:BoundField>
                <asp:BoundField DataField="FinishedDate" HeaderText="FinishedDate" SortExpression="FinishedDate"></asp:BoundField>
                <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID"></asp:BoundField>
                <asp:BoundField DataField="ShipID" HeaderText="ShipID" SortExpression="ShipID"></asp:BoundField>
                <asp:BoundField DataField="ItemList" HeaderText="ItemList" SortExpression="ItemList"></asp:BoundField>
            </Columns>
        </asp:GridView>
    </div>

</asp:Content>
