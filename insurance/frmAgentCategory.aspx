<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="frmAgentCategory.aspx.cs" Inherits="insurance.frmAgentCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style9
        {
            font-weight: bold;
            font-size: small;
            font-family: Arial;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" CssClass="style9" Text="Category Code"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" CssClass="style9" Text="Category Name"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="TextBox2" runat="server" Width="231px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" CssClass="style9" Text="Description"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="TextBox3" runat="server" Width="230px"></asp:TextBox>
    </p>
    <p>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Height="35px" onclick="Button1_Click" 
            style="font-weight: 700" Text="Save" Width="92px" />
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
