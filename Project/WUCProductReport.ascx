<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WUCProductReport.ascx.cs" Inherits="WUCProductReport" %>
<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
<style type="text/css">
    .auto-style1 {
        font-size: x-large;
        text-align: center;
    }
</style>
<table>
        <tr>
            <td class="auto-style1"><strong>Product Report</strong></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtsearch" runat="server" Height="22px" Width="151px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnAll" runat="server" OnClick="btnAll_Click" style="font-size: large; text-align: center" Text="Search All" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnName" runat="server" style="font-size: large; text-align: center;" Text="Search Name" OnClick="btnName_Click" />           
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnPrice" runat="server" style="font-size: large; text-align: center" Text="Search Price" OnClick="btnPrice_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnQu" runat="server" style="font-size: large; text-align: center" Text="Search Quantaty" OnClick="btnQu_Click" />

            </td>
        </tr>
        <tr>
            <td>
                <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />
            </td>
        </tr>
    </table>