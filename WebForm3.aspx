<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebApplication21.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 0px;
        }
        .auto-style2 {
            width: 88%;
            margin-left: 77px;
        }
        .auto-style3 {
            width: 305px;
            margin-left: 40px;
        }
        .auto-style4 {
            width: 305px;
        }
    .auto-style5 {
        margin-left: 0px;
        margin-top: 6px;
        margin-bottom: 0px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style5" Height="19px" Width="157px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
    
   
    <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
&nbsp;<table class="auto-style2">
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
            
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString1 %>" SelectCommand="SELECT * FROM [Table1]"></asp:SqlDataSource>
    
</asp:Content>
