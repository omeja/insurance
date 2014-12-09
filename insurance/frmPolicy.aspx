<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="frmPolicy.aspx.cs" Inherits="insurance.frmPolicy" %>
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
        <asp:Label ID="Label2" runat="server" CssClass="style9" Text="Policy ID"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" CssClass="style9" Text="Policy Name"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="TextBox2" runat="server" Width="196px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" CssClass="style9" Text="Policy Type"></asp:Label>
    </p>
    <p>
        <asp:DropDownList ID="DropDownList1" runat="server" Height="40px" Width="203px">
        </asp:DropDownList>
    </p>
    <p>
        <asp:Label ID="Label5" runat="server" CssClass="style9" Text="Company Type"></asp:Label>
    </p>
    <p>
        <asp:DropDownList ID="DropDownList2" runat="server" Height="17px" Width="202px">
        </asp:DropDownList>
    </p>
    <p>
        <asp:Label ID="Label6" runat="server" CssClass="style9" Text="Net Worth"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="TextBox5" runat="server" Width="194px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label7" runat="server" CssClass="style9" Text="Launch Date"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="TextBox6" runat="server" Width="195px"></asp:TextBox>
        <asp:ImageButton ID="ImageButton1" runat="server" 
            ImageUrl="~/images/market-logo.jpg" onclick="ImageButton1_Click" Width="19px" />
        <asp:Calendar ID="Calendar1" runat="server" 
            onselectionchanged="Calendar1_SelectionChanged" Visible="False">
        </asp:Calendar>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Height="40px" onclick="Button1_Click" 
            style="font-weight: 700" Text="Save" Width="95px" />
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
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
