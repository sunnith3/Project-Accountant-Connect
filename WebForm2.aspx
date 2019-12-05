<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication21.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create a new Account</title>
    <style> 
         body{
            background-image:url(regis2.jpg);
        }
        table {
            border-spacing: 30px 10px;
        }
        </style>
    <style
        type="text/css">
        .auto-style1 {
            margin-left: 16px;
            height: 26px;
        }
        .auto-style4 {
            margin-left: 1px;
        }
        .auto-style5 {
            margin-right: 0px;
            margin-top: 0px;
        }
        .auto-style6 {
            text-align: left;
        }
        .auto-style8 {
            margin-left: 11px;
        }
        .auto-style9 {
            margin-left: 0px;
        }
        .auto-style10 {
            margin-left: 9px;
        }
        .auto-style12 {
            margin-left: 7px;
        }
        .auto-style13 {
            margin-left: 8px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style6">
        </div>
        <asp:Panel ID="Panel1" runat="server" BackColor="White" BackImageUrl="~/regis2.jpg" BorderColor="Black" Height="467px" CssClass="auto-style5" Width="624px">
            &nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Home" PostBackUrl="~/WebForm1.aspx" />
            &nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp; Registration<br />
            <br />
            &nbsp;&nbsp;&nbsp; First Name&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid" Height="18px" Width="295px"></asp:TextBox>
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator">Please Enter Your First Name!!</asp:RequiredFieldValidator>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp; Last Name&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" Height="18px" Width="295px" CssClass="auto-style4"></asp:TextBox>
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator">Please enter your last name!!</asp:RequiredFieldValidator>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp; Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Solid" Height="18px" Width="295px" CssClass="auto-style12" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
            &nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Please enter a valid email address!!</asp:RegularExpressionValidator>
            <br />
            &nbsp; &nbsp; Password&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server" BorderStyle="Solid" CssClass="auto-style13" Height="18px" Width="295px"></asp:TextBox>
            &nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator">Please enter your password here!!</asp:RequiredFieldValidator>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp; Age&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style10">
                <asp:ListItem>Month</asp:ListItem>
                <asp:ListItem>January</asp:ListItem>
                <asp:ListItem>February</asp:ListItem>
                <asp:ListItem>March</asp:ListItem>
                <asp:ListItem>April</asp:ListItem>
                <asp:ListItem>May</asp:ListItem>
                <asp:ListItem>June</asp:ListItem>
                <asp:ListItem>July</asp:ListItem>
                <asp:ListItem>August</asp:ListItem>
                <asp:ListItem>September</asp:ListItem>
                <asp:ListItem>October</asp:ListItem>
                <asp:ListItem>November</asp:ListItem>
                <asp:ListItem>December</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="87px">
                <asp:ListItem>Day</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>17</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
                <asp:ListItem>19</asp:ListItem>
                <asp:ListItem>21</asp:ListItem>
                <asp:ListItem>21</asp:ListItem>
                <asp:ListItem>22</asp:ListItem>
                <asp:ListItem>23</asp:ListItem>
                <asp:ListItem>24</asp:ListItem>
                <asp:ListItem>25</asp:ListItem>
                <asp:ListItem>26</asp:ListItem>
                <asp:ListItem>27</asp:ListItem>
                <asp:ListItem>28</asp:ListItem>
                <asp:ListItem>29</asp:ListItem>
                <asp:ListItem>30</asp:ListItem>
                <asp:ListItem>31</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList3" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                <asp:ListItem>Year</asp:ListItem>
                <asp:ListItem>1990</asp:ListItem>
                <asp:ListItem>1991</asp:ListItem>
                <asp:ListItem>1992</asp:ListItem>
                <asp:ListItem>1993</asp:ListItem>
                <asp:ListItem>1994</asp:ListItem>
                <asp:ListItem>1995</asp:ListItem>
                <asp:ListItem>1996</asp:ListItem>
                <asp:ListItem>1997</asp:ListItem>
                <asp:ListItem>1998</asp:ListItem>
                <asp:ListItem>1999</asp:ListItem>
                <asp:ListItem>2000</asp:ListItem>
                <asp:ListItem>2001</asp:ListItem>
                <asp:ListItem>2002</asp:ListItem>
                <asp:ListItem>2003</asp:ListItem>
                <asp:ListItem>2004</asp:ListItem>
                <asp:ListItem>2005</asp:ListItem>
                <asp:ListItem>2006</asp:ListItem>
                <asp:ListItem>2007</asp:ListItem>
                <asp:ListItem>2008</asp:ListItem>
                <asp:ListItem>2009</asp:ListItem>
                <asp:ListItem>2010</asp:ListItem>
                <asp:ListItem>2011</asp:ListItem>
                <asp:ListItem>2012</asp:ListItem>
                <asp:ListItem>2013</asp:ListItem>
                <asp:ListItem>2014</asp:ListItem>
                <asp:ListItem>2015</asp:ListItem>
                <asp:ListItem>2016</asp:ListItem>
                <asp:ListItem>2017</asp:ListItem>
                <asp:ListItem>2018</asp:ListItem>
                <asp:ListItem>2019</asp:ListItem>
            </asp:DropDownList>
            &nbsp;<br />
            <br />
            &nbsp;&nbsp;&nbsp; Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList4" runat="server" CssClass="auto-style8">
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:DropDownList>
            &nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp; Accountant&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList5" runat="server" CssClass="auto-style9">
                <asp:ListItem>Auditor</asp:ListItem>
                <asp:ListItem>CPA: Certified Public Accountant</asp:ListItem>
                <asp:ListItem>Auditor</asp:ListItem>
                <asp:ListItem>Forensic Accountant</asp:ListItem>
                <asp:ListItem>Management Accountant</asp:ListItem>
                <asp:ListItem>Cost Accountant</asp:ListItem>
                <asp:ListItem>Government Accountant</asp:ListItem>
                <asp:ListItem>Project Accountant</asp:ListItem>
                <asp:ListItem>Invetment Accountant</asp:ListItem>
                <asp:ListItem>Staff Accountant</asp:ListItem>
                <asp:ListItem>Financial Advisor</asp:ListItem>
                <asp:ListItem>Budget Analyst</asp:ListItem>
                <asp:ListItem>Billing Clerk</asp:ListItem>
            </asp:DropDownList>
&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp; Type<br />
            <br />
            <asp:Button ID="Button1" runat="server" BorderStyle="Outset" CssClass="auto-style1" Text="Register" OnClick="Button1_Click" />
            &nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString1 %>" DeleteCommand="DELETE FROM [Table1] WHERE [Email] = @Email" InsertCommand="INSERT INTO [Table1] ([FirstName], [LastName], [Email], [Password], [Month], [Day], [Year], [Gender], [AccountantType]) VALUES (@FirstName, @LastName, @Email, @Password, @Month, @Day, @Year, @Gender, @AccountantType)" SelectCommand="SELECT * FROM [Table1]" UpdateCommand="UPDATE [Table1] SET [FirstName] = @FirstName, [LastName] = @LastName, [Password] = @Password, [Month] = @Month, [Day] = @Day, [Year] = @Year, [Gender] = @Gender, [AccountantType] = @AccountantType WHERE [Email] = @Email">
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
        </asp:Panel>
    </form>
</body>
</html>
