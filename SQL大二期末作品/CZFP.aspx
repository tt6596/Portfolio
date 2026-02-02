<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CZFP.aspx.cs" Inherits="CZFP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            height: 437px;
        }
        .auto-style3 {
            width: 172px;
        }
        .auto-style4 {
            width: 800px;
        }
        .auto-style5 {
            width: 172px;
            height: 358px;
        }
        .auto-style6 {
            width: 800px;
            height: 358px;
        }
        .auto-style7 {
            height: 358px;
        }
        .auto-style8 {
            width: 172px;
            height: 118px;
        }
        .auto-style9 {
            width: 800px;
            height: 118px;
        }
        .auto-style10 {
            height: 118px;
        }
        .auto-style11 {
            margin-top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <table class="auto-style2">
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style9">
                <asp:Label ID="Label4" runat="server" Text="生日："></asp:Label>
                <asp:TextBox ID="BirthTextBox" runat="server" Height="23px" Width="275px" CssClass="auto-style11"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="CalendarImageButton" runat="server" Height="32px" ImageUrl="~/calendar.jpg" OnClick="CalendarImageButton_Click" Width="44px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="FunButton" runat="server" Height="34px" Text="查詢（函數)" Width="100px" OnClick="FunButton_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="ProcButton" runat="server" Height="34px"  Text="查詢（程序）" Width="100px" OnClick="ProcButton_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="ClearButton" runat="server" Text="清     除" Height="34px" OnClick="ClearButton_Click" Width="100px" />
&nbsp;<asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Visible="False" Width="220px" OnSelectionChanged="Calendar1_SelectionChanged">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="ChineseZodiacP" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:Parameter Name="D" Type="String" />
                        <asp:Parameter Direction="InputOutput" Name="Resultout" Type="String" />
                    </SelectParameters>
                    
                </asp:SqlDataSource>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="ResultTextBox" runat="server" Height="218px" Width="658px" Font-Size="XX-Large" ForeColor="#FF5050"></asp:TextBox>
            </td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>


</asp:Content>

