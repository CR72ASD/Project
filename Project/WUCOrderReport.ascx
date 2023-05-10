<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WUCOrderReport.ascx.cs" Inherits="WUCOrderReport" %>
<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
<style type="text/css">
    .auto-style1 {
        font-size: xx-large;
        text-align: center;
    }
</style>

<table>
        <tr>
            <td class="auto-style1"><strong>Order Report</strong></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtsearch" runat="server" Height="22px" Width="151px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnName" runat="server" style="text-align: center; font-size: large" Text="Search User Name" OnClick="btnName_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnQu" runat="server" style="font-size: large; text-align: center" Text="Search Quantaty" OnClick="btnQu_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnAddress" runat="server" style="font-size: large; text-align: center" Text="Search Address" Width="191px" OnClick="btnAddress_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnGetAll" runat="server" style="font-size: large; text-align: center" Text="Get All Orders" Width="191px" OnClick="btnGetAll_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />
            </td>
        </tr>
    </table>