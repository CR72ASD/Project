<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WUCAdminProduct.ascx.cs" Inherits="WUCAdminProduct" %>
        <style type="text/css">
            .auto-style1 {
                text-align: center;
            }
            .auto-style2 {
                text-align: left;
            }
            .auto-style3 {
                text-align: center;
                font-size: xx-large;
            }
        </style>
        <table class="auto-style1">
        <tr>
            <td colspan="4" class="auto-style3"><strong>Product</strong></td>
        </tr>
            <tr>
            <td class="auto-style1">
                Product ID :</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtId" runat="server" Width="43px"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnNew" runat="server" Text="New" OnClick="btnNew_Click" />
            </td>
        <tr>
            <td class="auto-style1">
                Product Name :</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtName" runat="server" CssClass="auto-style8"></asp:TextBox>
            </td>
            <td rowspan="4">
                <asp:Image ID="imgproduct" runat="server" Height="178px" Width="419px" />
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Product Price :</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtPrice" runat="server" CssClass="auto-style8"></asp:TextBox>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Product Quantity :</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtQu" runat="server" CssClass="auto-style8"></asp:TextBox>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Product Image :</td>
            <td class="auto-style2">
                <asp:FileUpload ID="fubimage" runat="server" />
            </td>
            <td>
                &nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Product Category :</td>
            <td class="auto-style2">
                
                
                <asp:DropDownList ID="dlc" runat="server" DataSourceID="SqlDataSource1" DataTextField="c_Name" DataValueField="c_ID" Width="122px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Data %>" SelectCommand="SELECT * FROM [Category]" ProviderName="<%$ ConnectionStrings:Data.ProviderName %>"></asp:SqlDataSource>


            </td>
            <td>
                &nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <%-- </tr>
            <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>--%>
            <tr>
            <td class="auto-style5" colspan="3">
                <asp:Button ID="btnAdd" runat="server" CssClass="auto-style8" Text="Add" class="box" Width="74px" OnClick="btnAdd_Click" />
                <span class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                <asp:Button ID="btnUpdate" runat="server" CssClass="auto-style8" Text="Update" class="box" OnClick="btnUpdate_Click" />
                <span class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                <asp:Button ID="btnDelete" runat="server" CssClass="auto-style8" Text="Delete" class="box" OnClick="btnDelete_Click" />
                </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
            <tr>
            <td class="auto-style6">&nbsp;Search Product:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtSearch" runat="server" CssClass="auto-style8"></asp:TextBox>
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnSearch" runat="server" CssClass="auto-style8" Text="Search" class="box" OnClick="btnSearch_Click" />
                </td>
            <td class="auto-style3">&nbsp;</td>
                <tr>
            <td class="auto-style10" colspan="3">
                <asp:GridView ID="gdvproduct" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="924px" OnSelectedIndexChanged="gdvproduct_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ButtonType="Button" HeaderText="Select" SelectText="&gt;&gt;&gt;" ShowSelectButton="True" />
                        <asp:BoundField DataField="p_ID" HeaderText="Product ID" />
                        <asp:BoundField DataField="p_Name" HeaderText="Product Name" />
                        <asp:BoundField DataField="p_Price" HeaderText="Product Price" />
                        <asp:BoundField DataField="p_Quantity" HeaderText="Product Quantity" />
                        <asp:BoundField DataField="c_ID" HeaderText="Category" />
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
        </tr>
        </tr>
    </table>
