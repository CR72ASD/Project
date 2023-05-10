<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="CustomerReport.aspx.cs" Inherits="CustomerReport" %>

<%@ Register src="WUCCustomerReport.ascx" tagname="WUCCustomerReport" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="form1" runat="server">
        <uc1:WUCCustomerReport ID="WUCCustomerReport1" runat="server" />
    </form>
</asp:Content>

