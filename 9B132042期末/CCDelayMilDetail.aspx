<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CCDelayMilDetail.cs" Inherits="CCDelayMilDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="389px" Width="940px" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="sid" DataSourceID="SqlDataSource1" OnPageIndexChanging="DetailsView1_PageIndexChanging">
        <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <Fields>
            <asp:BoundField DataField="sid" HeaderText="學號" SortExpression="sid" ReadOnly="True" />
            <asp:BoundField DataField="name" HeaderText="姓名" SortExpression="name" />
            <asp:BoundField DataField="inschool" HeaderText="申請日期" SortExpression="inschool" />
            <asp:BoundField DataField="Car" HeaderText="車牌" SortExpression="Car" />
            <asp:BoundField DataField="housereg" HeaderText="戶籍所在地" SortExpression="housereg" />
            <asp:BoundField DataField="college" HeaderText="就讀學院" SortExpression="college" />
            <asp:BoundField DataField="Department" HeaderText="就讀科系" SortExpression="Department" />
            <asp:BoundField DataField="schoolyear" HeaderText="學年" SortExpression="schoolyear" />
            <asp:BoundField DataField="semester" HeaderText="學期" SortExpression="semester" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
    </asp:DetailsView>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [CC] WHERE [sid] = @sid" InsertCommand="INSERT INTO [CC] ([name], [inschool], [Car], [sid], [housereg], [college], [Department], [schoolyear], [semester]) VALUES (@name, @inschool, @Car, @sid, @housereg, @college, @Department, @schoolyear, @semester)" SelectCommand="SELECT * FROM [CC]" UpdateCommand="UPDATE [CC] SET [name] = @name, [inschool] = @inschool, [Car] = @Car, [housereg] = @housereg, [college] = @college, [Department] = @Department, [schoolyear] = @schoolyear, [semester] = @semester WHERE [sid] = @sid">
        <DeleteParameters>
            <asp:Parameter Name="sid" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="inschool" Type="String" />
            <asp:Parameter Name="Car" Type="String" />
            <asp:Parameter Name="sid" Type="String" />
            <asp:Parameter Name="housereg" Type="String" />
            <asp:Parameter Name="college" Type="String" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="schoolyear" Type="String" />
            <asp:Parameter Name="semester" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="inschool" Type="String" />
            <asp:Parameter Name="Car" Type="String" />
            <asp:Parameter Name="housereg" Type="String" />
            <asp:Parameter Name="college" Type="String" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="schoolyear" Type="String" />
            <asp:Parameter Name="semester" Type="String" />
            <asp:Parameter Name="sid" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>



