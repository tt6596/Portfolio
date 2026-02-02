<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CZF.aspx.cs" Inherits="CZF" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 493px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">


            &nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />
            &nbsp;<asp:Label ID="Label1" runat="server" Text="出生日期："></asp:Label>
&nbsp;<asp:TextBox ID="BirthdayTextBox" runat="server">2023/12/7</asp:TextBox>
&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查詢" Height="24px" Width="49px" />
            <br />
            <br />
            <br />
            <asp:TextBox ID="ResultTextBox" runat="server" Font-Size="XX-Large" ForeColor="Blue" Height="92px" TextMode="MultiLine" Width="242px"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />


            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"  SelectCommand="select DBO.ChineseZodiacF(@d) AS 生肖">
                <SelectParameters>
                    <asp:ControlParameter ControlID="BirthdayTextBox" Name="d" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
