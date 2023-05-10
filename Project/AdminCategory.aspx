<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminCategory.aspx.cs" Inherits="AdminCategory" %>

<%@ Register src="WUCAdminCategory.ascx" tagname="WUCAdminCategory" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="form1" runat="server">
        <uc1:WUCAdminCategory ID="WUCAdminCategory1" runat="server" />
    </form>
</asp:Content>

