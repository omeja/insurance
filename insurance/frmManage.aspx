﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="frmManage.aspx.cs" Inherits="insurance.frmManage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
</p>
<p>
</p>
<p>
    <asp:GridView ID="GridView1" runat="server" Height="287px" Width="912px" 
        AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" 
        AutoGenerateColumns="False" DataKeyNames="TypeCode" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="TypeCode" HeaderText="TypeCode" ReadOnly="True" 
                SortExpression="TypeCode" />
            <asp:BoundField DataField="TypeName" HeaderText="TypeName" 
                SortExpression="TypeName" />
            <asp:BoundField DataField="TDescription" HeaderText="TDescription" 
                SortExpression="TDescription" />
        </Columns>
    </asp:GridView>
</p>
<p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:insuranceConnectionString %>" 
        DeleteCommand="spdelcompanytype" DeleteCommandType="StoredProcedure" 
       UpdateCommand="spupdCompanyType" 
        UpdateCommandType="StoredProcedure" 
        SelectCommand="SELECT * FROM [CompanyTypes]">
        <DeleteParameters>
            <asp:Parameter Name="typecode" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="TypeCode" Type="String" />
            <asp:Parameter Name="TypeName" Type="String" />
            <asp:Parameter Name="TDescription" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
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
