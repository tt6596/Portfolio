<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CCDelayMilLock.aspx.cs" Inherits="CCDelayMilLock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="MyMessage" runat="server" Text="試圖更新或刪除另一用戶同時正在更新的記錄。請等其他使用者更改後再重做更新或刪除。" Visible="False" ForeColor="Red" EnableViewState="False"></asp:Label>
     <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="sid" DataSourceID="SqlDataSource1" Height="368px" OnRowDeleted="GridView1_RowDeleted" OnRowUpdated="GridView1_RowUpdated" Width="1056px">
        <Columns>
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" >
            <HeaderStyle Wrap="False" />
            <ItemStyle Wrap="False" />
            </asp:CommandField>
            <asp:BoundField DataField="name" HeaderText="姓名" SortExpression="name" >
            </asp:BoundField>
            <asp:BoundField DataField="inschool" HeaderText="申請日期" SortExpression="inschool" >
            </asp:BoundField>
            <asp:BoundField DataField="Car" HeaderText="車牌" SortExpression="Car" >
            </asp:BoundField>
            <asp:BoundField DataField="housereg" HeaderText="戶籍所在地" SortExpression="housereg" />
            <asp:BoundField DataField="college" HeaderText="就讀學院" SortExpression="college" >
            </asp:BoundField>
            <asp:BoundField DataField="Department" HeaderText="就讀系所" SortExpression="Department" />
            <asp:BoundField DataField="schoolyear" HeaderText="學年" SortExpression="schoolyear" >
            </asp:BoundField>
            <asp:BoundField DataField="semester" HeaderText="學期" SortExpression="semester" >
            </asp:BoundField>
        </Columns>
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [CC] WHERE [sid] = @original_sid AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([inschool] = @original_inschool) OR ([inschool] IS NULL AND @original_inschool IS NULL)) AND (([Car] = @original_Car) OR ([Car] IS NULL AND @original_Car IS NULL)) AND (([housereg] = @original_housereg) OR ([housereg] IS NULL AND @original_housereg IS NULL)) AND (([college] = @original_college) OR ([college] IS NULL AND @original_college IS NULL)) AND (([Department] = @original_Department) OR ([Department] IS NULL AND @original_Department IS NULL)) AND (([schoolyear] = @original_schoolyear) OR ([schoolyear] IS NULL AND @original_schoolyear IS NULL)) AND (([semester] = @original_semester) OR ([semester] IS NULL AND @original_semester IS NULL)) " InsertCommand="INSERT INTO [CC] ([name], [inschool], [Car], [sid], [housereg], [college], [Department], [schoolyear], [semester]) VALUES (@name, @inschool, @Car, @sid, @housereg, @college, @Department, @schoolyear, @semester)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [CC]" UpdateCommand="UPDATE [CC] SET [name] = @name, [inschool] = @inschool, [Car] = @Car, [housereg] = @housereg, [college] = @college, [Department] = @Department, [schoolyear] = @schoolyear, [semester] = @semester WHERE [sid] = @original_sid AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([inschool] = @original_inschool) OR ([inschool] IS NULL AND @original_inschool IS NULL)) AND (([Car] = @original_Car) OR ([Car] IS NULL AND @original_Car IS NULL)) AND (([housereg] = @original_housereg) OR ([housereg] IS NULL AND @original_housereg IS NULL)) AND (([college] = @original_college) OR ([college] IS NULL AND @original_college IS NULL)) AND (([Department] = @original_Department) OR ([Department] IS NULL AND @original_Department IS NULL)) AND (([schoolyear] = @original_schoolyear) OR ([schoolyear] IS NULL AND @original_schoolyear IS NULL)) AND (([semester] = @original_semester) OR ([semester] IS NULL AND @original_semester IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_sid" Type="String" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_inschool" Type="String" />
            <asp:Parameter Name="original_Car" Type="String" />
            <asp:Parameter Name="original_housereg" Type="String" />
            <asp:Parameter Name="original_college" Type="String" />
            <asp:Parameter Name="original_Department" Type="String" />
            <asp:Parameter Name="original_schoolyear" Type="String" />
            <asp:Parameter Name="original_semester" Type="String" />
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
            <asp:Parameter Name="original_sid" Type="String" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_inschool" Type="String" />
            <asp:Parameter Name="original_Car" Type="String" />
            <asp:Parameter Name="original_housereg" Type="String" />
            <asp:Parameter Name="original_college" Type="String" />
            <asp:Parameter Name="original_Department" Type="String" />
            <asp:Parameter Name="original_schoolyear" Type="String" />
            <asp:Parameter Name="original_semester" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

