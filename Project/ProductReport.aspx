<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ProductReport.aspx.cs" Inherits="ProductReport" %>

<%@ Register src="WUCProductReport.ascx" tagname="WUCProductReport" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="form1" runat="server">
        <uc1:WUCProductReport ID="WUCProductReport1" runat="server" />
    </form>
</asp:Content>

