<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WUCOrderDetails.ascx.cs" Inherits="WUCOrderDetails" %>
<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>


<style type="text/css">
    .auto-style1 {
        font-size: xx-large;
        text-align: center;
    }
</style>
<form runat="server">
<table>
        <tr>
            <td class="auto-style1"><strong>Order Details Report</strong></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtsearch" runat="server" Height="22px" Width="151px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnId" runat="server" style="text-align: center; font-size: large" Text="Search Order ID" OnClick="btnId_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnQu" runat="server" style="font-size: large; text-align: center" Text="Search Quantaty" OnClick="btnQu_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
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
</form>