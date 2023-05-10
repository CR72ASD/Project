<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WUCAdminCategory.ascx.cs" Inherits="WUCAdminCategory" %>
<style type="text/css">
    .auto-style1 {
        text-align: left;
    }
    .auto-style2 {
        text-align: center;
        font-size: xx-large;
    }
    .auto-style3 {
        text-align: center;
    }
</style>
<table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="3"><strong>Category</strong></td>
                </tr>
                    <tr>
                                            
                    </td>
                </tr>
                    <td class="auto-style3">Category No :</td>
                    <td>
                        <asp:TextBox ID="txtId" runat="server" CssClass="auto-style9" Width="57px">1</asp:TextBox>
&nbsp;<asp:Button ID="btnNew" runat="server" Text="New" CssClass="auto-style9" OnClick="btnNew_Click"   />
                    </td>
                    <td rowspan="2" class="auto-style20">
                        <asp:Image ID="img" runat="server" CssClass="auto-style19" Height="155px" Width="290px" />
                    </td>
                </tr>
                    <tr>
                    <td class="auto-style3">Category Name :</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" CssClass="auto-style14"></asp:TextBox>
                    <td>&nbsp;</td>                        
                    </td>
                </tr>
                <tr class="auto-style7">
                    <td class="auto-style3">Category Image :</td>
                    <td>
                        <asp:FileUpload ID="fup" runat="server" CssClass="auto-style9" />
                    </td>
                </tr>
               
                </tr>
                <tr>
                    <td class="auto-style3" colspan="3">
                        <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="auto-style9" OnClick="btnAdd_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="auto-style9" OnClick="btnUpdate_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="auto-style9" OnClick="btnDelete_Click"    />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="3">
                        <asp:TextBox ID="txtSearch" runat="server" CssClass="auto-style9"></asp:TextBox>
                        &nbsp;
                        <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="auto-style9" OnClick="btnSearch_Click"    />
                    </td>
                </tr>
                </tr>
                    <tr>
                    <td colspan="3">
                        <asp:GridView ID="gdv" runat="server" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="5" Width="851px" AutoGenerateColumns="False" OnSelectedIndexChanged="gdv_SelectedIndexChanged" >
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ButtonType="Button" HeaderText="Select" SelectText="&gt;&gt;&gt;" ShowSelectButton="True" />
                                <asp:BoundField DataField="c_ID" HeaderText="Category ID" />
                                <asp:BoundField DataField="c_Name" HeaderText="Category Name" />
                                <asp:BoundField HeaderText="Image" />
                            </Columns>
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />
                        </asp:GridView>
                        </td>
                    </td>
                </tr>
            </table>