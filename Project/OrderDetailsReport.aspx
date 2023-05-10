<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="OrderDetailsReport.aspx.cs" Inherits="OrderDetailsReport" %>

<%@ Register Src="~/WUCOrderDetails.ascx" TagPrefix="uc1" TagName="WUCOrderDetails" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <uc1:WUCOrderDetails runat="server" id="WUCOrderDetails" />
</asp:Content>

