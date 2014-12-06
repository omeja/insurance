<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="frmCompanyType.aspx.cs" Inherits="insurance.frmCompanyType" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style9
        {
            font-weight: bold;
            font-family: Arial;
            font-size: small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
<p>
    <asp:Label ID="Label2" runat="server" Text="Code" CssClass="style9"></asp:Label>
</p>
<p>
    <asp:TextBox ID="TextBox1" runat="server" Width="242px"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label3" runat="server" Text="Name" CssClass="style9"></asp:Label>
</p>
<p>
    <asp:TextBox ID="TextBox2" runat="server" Width="243px"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label4" runat="server" CssClass="style9" Text="Description"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="TextBox3" runat="server" Height="81px" TextMode="MultiLine" 
            Width="415px"></asp:TextBox>
    </p>
<p>
    &nbsp;</p>
    <p>
        <asp:Button ID="Button2" runat="server" Height="31px" onclick="Button2_Click" 
            Text="Save" Width="99px" />
    </p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    <br />
</p>
<p>
</p>
</asp:Content>
