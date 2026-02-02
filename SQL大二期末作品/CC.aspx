<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CC.aspx.cs" Inherits="CC" %>

<script runat="server">
    protected void name1_TextChanged(object sender, EventArgs e)
    {
        // 在此處添加你的文本變化事件處理邏輯
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 365px;
            height: 31px;
        }
        .auto-style5 {
            width: 49px;
            height: 31px;
        }
        .auto-style6 {
            height: 31px;
        }
        .auto-style7 {
            width: 365px;
            height: 315px;
        }
        .auto-style8 {
            width: 49px;
            height: 315px;
        }
        .auto-style9 {
            height: 315px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style4">
                請輸入籤詩號碼:
                <asp:TextBox ID="A1" runat="server">請輸入1~81任一數字</asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:Button ID="GO" runat="server" OnClick="GO_Click" Text="查詢" OnClientClick="GO_Click" />
            </td>
            <td class="auto-style6">
                <asp:Button ID="random" runat="server" Height="27px" OnClick="RandomButton_Click" Text="隨機" OnClientClick="RandomButton_Click" />
                &nbsp;
                <asp:Button ID="clear" runat="server" Text="清除" Height="24px" Width="49px" OnClick="restButton_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:TextBox ID="A2" runat="server" Height="210px" Width="354px"></asp:TextBox>
            </td>
            <td class="auto-style8"></td>
            <td class="auto-style9">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>"
                    SelectCommand="SELECT [rule], [result] FROM [namerule] WHERE ([no] = @no)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="A1" Name="no" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
