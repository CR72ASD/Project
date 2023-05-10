<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="CategoryReport.aspx.cs" Inherits="CategoryReport" %>

<%@ Register src="WUCCategoryReport.ascx" tagname="WUCCategoryReport" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="form1" runat="server">
        <uc1:WUCCategoryReport ID="WUCCategoryReport1" runat="server" />
    </form>
</asp:Content>

