<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="OrderReport.aspx.cs" Inherits="OrderReport" %>

<%@ Register src="WUCOrderReport.ascx" tagname="WUCOrderReport" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="form1" runat="server">
        <uc1:WUCOrderReport ID="WUCOrderReport1" runat="server" />
    </form>
</asp:Content>

