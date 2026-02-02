<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="星座.aspx.cs" Inherits="星座" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    <style type="Text/css">
        .auto-style2 {
            width: 100%;
            height: 206px;
        }
        .auto-style3 {
            width: 273px;
        }
        .auto-style4 {
            width: 69px;
        }
    </style>
   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
        <tr>
            <td class="auto-style3" >
                <asp:Label ID="Label1" runat="server" Text="出生日期:"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查詢" Height="24px" Width="48px" />
            </td>
            <td >
                &nbsp;
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select DBO.Astrologyname(@d) AS 星座">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="d" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:TextBox ID="ResultTextBox" runat="server" Font-Size="XX-Large" ForeColor="Blue" Height="92px" TextMode="MultiLine" Width="242px"></asp:TextBox>
            </td>
            <td class="auto-style4"> </td>
             <td> </td>
        </tr>
    </table>
</asp:Content>
