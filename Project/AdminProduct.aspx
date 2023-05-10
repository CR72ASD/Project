<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminProduct.aspx.cs" Inherits="AdminProduct" %>

<%@ Register src="WUCAdminProduct.ascx" tagname="WUCAdminProduct" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="form1" runat="server">
        <uc1:WUCAdminProduct ID="WUCAdminProduct1" runat="server" />
    </form>
</asp:Content>

