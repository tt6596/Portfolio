<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="userdetailviews.aspx.cs" Inherits="userdetailviews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:detailsview runat="server" height="237px" width="523px" AllowPaging="True" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="sid" DataSourceID="SqlDataSource1">
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="sid" HeaderText="學號" ReadOnly="True" SortExpression="sid" />
            <asp:BoundField DataField="name" HeaderText="姓名" SortExpression="name" />
            <asp:BoundField DataField="password" HeaderText="密碼" SortExpression="password" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" ButtonType="Button" />
        </Fields>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    </asp:detailsview>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [userTable] WHERE [sid] = @sid" InsertCommand="INSERT INTO [userTable] ([sid], [name], [password]) VALUES (@sid, @name, @password)" SelectCommand="SELECT * FROM [userTable]" UpdateCommand="UPDATE [userTable] SET [name] = @name, [password] = @password WHERE [sid] = @sid">
        <DeleteParameters>
            <asp:Parameter Name="sid" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="sid" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="password" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="sid" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

