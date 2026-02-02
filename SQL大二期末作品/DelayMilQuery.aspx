<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DelayMilQuery.aspx.cs" Inherits="DelayMilQuery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="姓名"></asp:Label>
    <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
    <asp:Button ID="NameButton" runat="server" Text="查詢" />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="sid" DataSourceID="SqlDataSource1" Height="368px" Width="1036px">
        <Columns>
            <asp:BoundField DataField="name" HeaderText="姓名" SortExpression="name" >
                <HeaderStyle Wrap="False" />
                <ItemStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="inschool" HeaderText="入學日期" SortExpression="inschool" >
                <HeaderStyle Wrap="False" />
                <ItemStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="birth" HeaderText="出生年月日" SortExpression="birth" >
                <HeaderStyle Wrap="False" />
                <ItemStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="sid" HeaderText="身分證編號" ReadOnly="True" SortExpression="sid" >
                <HeaderStyle Wrap="False" />
                <ItemStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="housereg" HeaderText="戶籍所在地" SortExpression="housereg" />
            <asp:BoundField DataField="college" HeaderText="學院" SortExpression="college" >
                <ItemStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="Department" HeaderText="系所" SortExpression="Department" />
            <asp:BoundField DataField="schoolyear" HeaderText="學年" SortExpression="schoolyear" >
                <HeaderStyle Wrap="False" />
                <ItemStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="semester" HeaderText="學期" SortExpression="semester" >
                <HeaderStyle Wrap="False" />
                <ItemStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="prove" HeaderText="證明內容" SortExpression="prove" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [DelayTable] WHERE ([name] LIKE '%' + @name + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="nameTextBox" Name="name" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

