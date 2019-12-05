<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="WebApplication21.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString1 %>" DeleteCommand="DELETE FROM [Table1] WHERE [Email] = @Email" InsertCommand="INSERT INTO [Table1] ([FirstName], [LastName], [Email], [Password], [Month], [Day], [Year], [Gender], [AccountantType]) VALUES (@FirstName, @LastName, @Email, @Password, @Month, @Day, @Year, @Gender, @AccountantType)" SelectCommand="SELECT * FROM [Table1] WHERE ([Email] = @Email)" UpdateCommand="UPDATE [Table1] SET [FirstName] = @FirstName, [LastName] = @LastName, [Password] = @Password, [Month] = @Month, [Day] = @Day, [Year] = @Year, [Gender] = @Gender, [AccountantType] = @AccountantType WHERE [Email] = @Email">
        <DeleteParameters>
            <asp:Parameter Name="Email" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Month" Type="String" />
            <asp:Parameter Name="Day" Type="String" />
            <asp:Parameter Name="Year" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="AccountantType" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="Email" SessionField="session" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Month" Type="String" />
            <asp:Parameter Name="Day" Type="String" />
            <asp:Parameter Name="Year" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="AccountantType" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="Email" DataSourceID="SqlDataSource1">
            <Fields>
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Month" HeaderText="Month" SortExpression="Month" />
                <asp:BoundField DataField="Day" HeaderText="Day" SortExpression="Day" />
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="AccountantType" HeaderText="AccountantType" SortExpression="AccountantType" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
</asp:Content>
