<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="frmCompany.aspx.cs" Inherits="insurance.frmCompany" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style9
        {
            font-size: small;
            font-weight: bold;
            font-family: Arial;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" CssClass="style9" Text="Company Code"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="TextBox1" runat="server" Width="212px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" CssClass="style9" Text="Company Type"></asp:Label>
    </p>
    <p>
        <asp:DropDownList ID="DropDownList1" runat="server" Height="59px" Width="219px">
        </asp:DropDownList>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" CssClass="style9" Text="Company Name"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="TextBox2" runat="server" Width="221px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label5" runat="server" CssClass="style9" Text="Location"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="TextBox3" runat="server" Height="58px" TextMode="MultiLine" 
            Width="224px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label6" runat="server" CssClass="style9" Text="Email"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="TextBox4" runat="server" Width="223px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label7" runat="server" CssClass="style9" Text="Phone"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="TextBox5" runat="server" Width="221px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label8" runat="server" CssClass="style9" Text="Date Opened"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="TextBox6" runat="server" Width="217px"></asp:TextBox>
        <asp:ImageButton ID="ImageButton1" runat="server" Height="17px" 
            ImageUrl="~/images/market-logo.jpg" onclick="ImageButton1_Click" />
        <asp:Calendar ID="Calendar1" runat="server" 
            onselectionchanged="Calendar1_SelectionChanged" style="position: relative" 
            Visible="False"></asp:Calendar>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Height="34px" onclick="Button1_Click" 
            style="font-weight: 700; font-family: Arial" Text="Save" Width="100px" />
    </p>
    <p>
    </p>
</asp:Content>
