<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WUCCustomerReport.ascx.cs" Inherits="WUCCustomerReport" %>
<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
<style type="text/css">
    .auto-style1 {
        text-align: center;
        font-size: xx-large;
    }
</style>
<table>
        <tr>
            <td class="auto-style1"><strong>Customer Report</strong></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtsearch" runat="server" Height="22px" Width="151px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Button ID="btnName" runat="server" OnClick="btnName_Click" style="text-align: center; font-size: large" Text="Search Name" />
&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnEmail" runat="server" style="font-size: large; text-align: center" Text="Search Email" OnClick="btnEmail_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnPhone" runat="server" style="font-size: large; text-align: center" Text="Search Phone" OnClick="btnPhone_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnAddress" runat="server" style="font-size: large; text-align: center;" Text="Search Address" OnClick="btnAddress_Click" />               
            </td>
        </tr>
        <tr>
            <td>
                <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />
            </td>
        </tr>
    </table>