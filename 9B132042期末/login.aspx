<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="vertical-align: middle; text-align: center">
        <br />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Size="XX-Large" ForeColor="Red" Text="吉娃娃管理系統"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="帳號:" Font-Size="X-Large"></asp:Label>
        <asp:TextBox ID="sidTextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="密碼:" Font-Size="X-Large"></asp:Label>
        <asp:TextBox ID="passwordTextBox" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="認證碼： " Font-Size="Large"></asp:Label><asp:Image ID="captchaImage" runat="server" src="captchadraw.aspx" Height="24px" Width="180px" />
          <asp:ImageButton ID="captchaImageButton" runat="server" Height="26px" ImageUrl="~/recycle.jpg" OnClick="captchaImageButton_Click" Width="32px" />
      <br /> <br /><br /> <br />
        <asp:Label ID="Label5" runat="server" Text="輸入認證碼： " Font-Size="Large"></asp:Label><asp:TextBox ID="captchaTextBox" runat="server" ></asp:TextBox>

        <br />
        <br />
        <br />
        <asp:Button ID="okButton1" runat="server" Height="40px" OnClick="okButton1_Click" Text="確  定" Width="80px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="restButton" runat="server" Height="40px" Text="重    填" Width="80px" OnClick="restButton_Click" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [sid], [password], [name] FROM [userTable] WHERE ([sid] = @sid)">
            <SelectParameters>
                <asp:Parameter Name="sid" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
