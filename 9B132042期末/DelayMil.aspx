<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DelayMil.aspx.cs" Inherits="DelayMil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 
    <style type="text/css">
        .auto-style4 {
            height: 47px;
        }
        .auto-style5 {
            height: 45px;
        }
        .auto-style6 {
            height: 69px;
        }
        .auto-style7 {
            height: 44px;
        }
        .auto-style8 {
            height: 141px;
        }
        .auto-style9 {
            height: 47px;
            width: 163px;
        }
        .auto-style10 {
            height: 45px;
            width: 163px;
        }
        .auto-style11 {
            height: 141px;
            width: 163px;
            table-layout: auto;
        }
        .auto-style12 {
            height: 141px;
            table-layout: auto;
        }
    </style>
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="1" style="border: thin solid #000000; padding: 1px; margin: 1px; border-spacing: 0px"  >
        <tr>
            <td colspan="6" style="vertical-align: middle; text-align: center; border-bottom-style: none; border-bottom-width: 0px; border-bottom-color: #FFFFFF;">
                <asp:Label ID="Label4" runat="server" Font-Size="XX-Large" Text="國立勤益科技大學"></asp:Label>
            </td>
        </tr>
              <tr>
            <td  colspan="6" style="vertical-align: middle; text-align: center; padding-top: 0px; margin-top: 0px; border-top-style: 0; border-top-width: 0px; border-top-color: #FFFFFF;">
                <asp:Label ID="Label5" runat="server" Font-Size="XX-Large" Text="學生申請暫緩徵集用證明書"></asp:Label>
                  </td>
        </tr>
                <tr>
            <td class="auto-style4" >
                <asp:Label ID="Label6" runat="server" Text="姓      名"></asp:Label>
                    </td>
            <td class="auto-style9" colspan="2" >
                <asp:TextBox ID="NameTextBox" runat="server" Height="32px"></asp:TextBox>
                    </td>
            <td class="auto-style4" >
                <asp:Label ID="Label11" runat="server" Text="入學日期"></asp:Label>
                    </td>
            <td class="auto-style4" colspan="2">
                <asp:TextBox ID="InschollTextBox" runat="server"></asp:TextBox>
                    </td>
        </tr>
                <tr>
            <td class="auto-style5" >
                <asp:Label ID="Label7" runat="server" Text="出生年月日"></asp:Label>
                    </td>
            <td class="auto-style10" colspan="2" >
                <asp:TextBox ID="BirthTextBox" runat="server"></asp:TextBox>
                    </td>
            <td class="auto-style5" >
                <asp:Label ID="Label12" runat="server" Text="身分證編號"></asp:Label>
                    </td>
            <td class="auto-style5" colspan="2">
                <asp:TextBox ID="SIDTextBox" runat="server"></asp:TextBox>
                    </td>
        </tr>
                <tr>
            <td class="auto-style6" >
                <asp:Label ID="Label8" runat="server" Text="戶籍所在地"></asp:Label>
                    </td>
            <td colspan="5" class="auto-style6">
                <asp:TextBox ID="houseregTextBox" runat="server" Height="33px" Width="766px"></asp:TextBox>
                    </td>
        </tr>
                <tr>
            <td class="auto-style8" >
                <asp:Label ID="Label9" runat="server" Text="就讀系（所)科"></asp:Label>
                    </td>
            <td class="auto-style11" aria-orientation="vertical" >
                <asp:DropDownList ID="collegeDropDownList" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="college" DataValueField="college" Height="72px" Width="191px">
                </asp:DropDownList>
 
                    </td>
            <td class="auto-style12" aria-orientation="vertical" >
                <asp:DropDownList ID="DepartmentDropDownList" runat="server" DataSourceID="SqlDataSource2" DataTextField="Department" DataValueField="Department" Height="63px" Width="285px">
                </asp:DropDownList>
 
                    </td>
            <td class="auto-style8" >
                <asp:Label ID="Label13" runat="server" Text="學年:"></asp:Label>
                    </td>
            <td class="auto-style8">
                <asp:DropDownList ID="schoolyearDropDownList" runat="server" Height="16px" Width="45px">
                    <asp:ListItem>105</asp:ListItem>
                    <asp:ListItem>106</asp:ListItem>
                    <asp:ListItem>107</asp:ListItem>
                    <asp:ListItem>108</asp:ListItem>
                    <asp:ListItem>109</asp:ListItem>
                    <asp:ListItem>110</asp:ListItem>
                    <asp:ListItem>111</asp:ListItem>
                    <asp:ListItem>112</asp:ListItem>
                    <asp:ListItem>113</asp:ListItem>
                    <asp:ListItem>114</asp:ListItem>
                    <asp:ListItem>115</asp:ListItem>
                    <asp:ListItem>116</asp:ListItem>
                    <asp:ListItem>117</asp:ListItem>
                    <asp:ListItem>118</asp:ListItem>
                    <asp:ListItem>119</asp:ListItem>
                    <asp:ListItem>120</asp:ListItem>
                </asp:DropDownList>
                    </td>
            <td class="auto-style8">
                <asp:RadioButtonList ID="semesterRadioButtonList" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True">上學期</asp:ListItem>
                    <asp:ListItem>下學期</asp:ListItem>
                </asp:RadioButtonList>
                    </td>
        </tr>
                <tr>
            <td rowspan="2" >
                <asp:Label ID="Label10" runat="server" Text="證明內容"></asp:Label>
                    </td>
            <td colspan="5" class="auto-style7" style="border-bottom-style: none; border-bottom-color: #FFFFFF">
                <asp:Label ID="Label14" runat="server" Text="學生已收受徵集令,惟因下列因素申請暫緩徵集:"></asp:Label>
                    </td>
        </tr>
        <tr>
            <td colspan="5" style="border-top-style: none; border-top-color: #FFFFFF">
                <asp:CheckBoxList ID="proveCheckBoxList" runat="server" Font-Size="Medium" Height="81px" Width="800px">
                    <asp:ListItem>經完成註冊且合於緩徵要件</asp:ListItem>
                    <asp:ListItem>應屆畢業學生因故未畢業而仍具有學籍者</asp:ListItem>
                </asp:CheckBoxList>
                    </td>
        </tr>
    </table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="AddButton" runat="server" Text="新 增" Height="39px" OnClick="AddButton_Click" Width="63px" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [college] FROM [ColDeptTable]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Department] FROM [ColDeptTable] WHERE ([college] = @college)">
         <SelectParameters>
          <asp:ControlParameter ControlID="collegeDropDownList" Name="college" PropertyName="SelectedValue" Type="String" />
         </SelectParameters>
   </asp:SqlDataSource>
   <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [DelayTable] WHERE [sid] = @sid" InsertCommand="INSERT INTO [DelayTable] ([name], [inschool], [birth], [sid], [housereg], [college], [Department], [schoolyear], [semester], [prove]) VALUES (@name, @inschool, @birth, @sid, @housereg, @college, @Department, @schoolyear, @semester, @prove)" SelectCommand="SELECT [name], [inschool], [birth], [sid], [housereg], [college], [Department], [schoolyear], [semester], [prove] FROM [DelayTable]" UpdateCommand="UPDATE [DelayTable] SET [name] = @name, [inschool] = @inschool, [birth] = @birth, [housereg] = @housereg, [college] = @college, [Department] = @Department, [schoolyear] = @schoolyear, [semester] = @semester, [prove] = @prove WHERE [sid] = @sid">
        <DeleteParameters>
            <asp:Parameter Name="sid" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter DbType="Date" Name="inschool" />
            <asp:Parameter DbType="Date" Name="birth" />
            <asp:Parameter Name="sid" Type="String" />
            <asp:Parameter Name="housereg" Type="String" />
            <asp:Parameter Name="college" Type="String" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="schoolyear" Type="String" />
            <asp:Parameter Name="semester" Type="String" />
            <asp:Parameter Name="prove" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter DbType="Date" Name="inschool" />
            <asp:Parameter DbType="Date" Name="birth" />
            <asp:Parameter Name="housereg" Type="String" />
            <asp:Parameter Name="college" Type="String" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="schoolyear" Type="String" />
            <asp:Parameter Name="semester" Type="String" />
            <asp:Parameter Name="prove" Type="String" />
            <asp:Parameter Name="sid" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

