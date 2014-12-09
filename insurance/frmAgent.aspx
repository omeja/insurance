<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="frmAgent.aspx.cs" Inherits="insurance.frmAgent" %>
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
        <asp:Label ID="Label2" runat="server" CssClass="style9" Text="Agent Code"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" CssClass="style9" Text="Agent Name"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="TextBox6" runat="server" Width="192px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" CssClass="style9" Text="Agent Category"></asp:Label>
    </p>
    <p>
        <asp:DropDownList ID="DropDownList2" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="CategoryName" 
            DataValueField="CategoryCode" Height="19px" Width="205px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:insuranceConnectionString %>" 
            SelectCommand="SELECT * FROM [AgentCategories]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:Label ID="Label5" runat="server" CssClass="style9" Text="Company"></asp:Label>
    </p>
    <p>
        <asp:DropDownList ID="DropDownList3" runat="server" 
            DataSourceID="SqlDataSource2" DataTextField="CompanyName" 
            DataValueField="CompanyCode" Height="17px" Width="210px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:insuranceConnectionString %>" 
            SelectCommand="SELECT [CompanyCode], [CompanyName] FROM [Companies]">
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:Label ID="Label6" runat="server" CssClass="style9" Text="Date Joined"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <asp:ImageButton ID="ImageButton1" runat="server" 
            ImageUrl="~/images/market-logo.jpg" onclick="ImageButton1_Click" Width="24px" />
        <asp:Calendar ID="Calendar1" runat="server" 
            onselectionchanged="Calendar1_SelectionChanged"></asp:Calendar>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Button1" runat="server" CssClass="style9" Height="34px" 
            onclick="Button1_Click" Text="Save" Width="85px" />
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
    <p>
    </p>
</asp:Content>
