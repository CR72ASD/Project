<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cart</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- swiper css link  -->
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    <!-- cusom css file link  -->
    <link rel="stylesheet" href="css/style.css">

    <style type="text/css">
        .auto-style3 {
            text-align: center;
        }
        .auto-style6 {
            display: flex;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
            gap: 2rem;
            -webkit-box-pack: justify;
            -ms-flex-pack: justify;
            justify-content: space-between;
            -webkit-box-orient: vertical;
            -webkit-box-direction: normal;
            -ms-flex-flow: column;
            flex-flow: column;
            text-align: center;
            background: #fff;
        }
        </style>

</head>
<body>
    <div class="auto-style3">
      
<!-- header section starts  -->

<header class="header">

    <div class="auto-style3">

    <a href="Home.aspx" class="logo"> <i class="fas fa-store"></i> shopie </a>

    </div>

    <%--<form class="search-form">
        <input type="search" id="search-box" placeholder="search here...">
        <label for="search-box" class="fas fa-search"></label>
    </form> --%>
    <div class="icons" style="text-align: center">
        <div id="menu-btn" class="fas fa-bars"></div>
        <div id="search-btn" class="fas fa-search"></div>
        <a href="Login.aspx" class="fas fa-user">
        <div>
        </div>
        </a>
        <a href="SignUp.aspx" class="fas fa-heart">
        <div>
        </div>
        </a>
        <a href="Cart.aspx" class="fas fa-shopping-cart">
        <div>
        </div>
        </a>
    </div>
        </form>
</header>




        <div class="auto-style3">

            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" style="font-size: xx-large" Text="Invoice"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
      <form id="form1" runat=server>

                        <asp:GridView ID="gdvShop" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" Height="124px" HorizontalAlign="Center" Width="720px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="Proname" HeaderText="Product Name" />
                                <asp:BoundField DataField="Price" HeaderText="Price" />
                                <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                                <asp:BoundField DataField="Subtotal" HeaderText="Total" />
                                <asp:TemplateField HeaderText="Image">
                                    <ItemTemplate>
                                        <asp:Image ID="Image1" runat="server" Height="60px" ImageUrl='<%# "~\\imgcategory\\"+Eval("prono").ToString().Trim()+".jpg" %>' Width="76px" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
          
          <asp:Label ID="Label2" runat="server"  style="font-size: x-large"></asp:Label>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="lblTotal" runat="server" Text="0" style="font-size: x-large"></asp:Label>
                   
              <br />
          <%--<a href="Visa.aspx" style="font-size: large"></a>--%>
          <a href="Delevary.aspx">
                        <asp:Label ID="lblCheckOut" runat="server" style="font-size: x-large" Text="Check Out"></asp:Label>
              </a>  
                        </form>
                    </td>
                </tr>
            </table>

<!-- header section ends -->

<!-- side-bar section starts -->

<div class="side-bar">

    <div id="close-side-bar" class="fas fa-times"></div>

    <div class="user">
        <img src="images/user-img.png" alt="">
        <h3>shaikh anas</h3>
        <a href="Logout.aspx">log out</a>
    </div>

    <nav class="navbar">
        <a href="Home.aspx"> 
        <div class="auto-style3">
            <i class="fas fa-angle-right"></i> Home 
        </div>
        </a>
        <a href="Category.aspx"> 
        <div class="auto-style3">
            <i class="fas fa-angle-right"></i> Category 
        </div>
        </a>
        <a href="Product.aspx"> 
        <div class="auto-style3">
            <i class="fas fa-angle-right"></i> Products 
        </div>
        </a>
        <a href="Login.aspx"> 
        <div class="auto-style3">
            <i class="fas fa-angle-right"></i> Login 
        </div>
        </a>
        <a href="SignUp.aspx"> 
        <div class="auto-style3">
            <i class="fas fa-angle-right"></i> Sign Up 
        </div>
        </a>
        <a href="Cart.aspx"> 
        <div class="auto-style3">
            <i class="fas fa-angle-right"></i> Cart 
        </div>
        </a>
    </nav>

</div>

        </div>

<section class="quick-links">

    <div class="auto-style3">

    <a href="Home.aspx" class="logo"> <i class="fas fa-store"></i> shopie </a>

    </div>

    <div class="links">
        <a href="Home.aspx"> <i class="fas fa-angle-right"></i> Home </a>
        <a href="Categoty.aspx"> <i class="fas fa-angle-right"></i> Category </a>
        <a href="Product.aspx"> <i class="fas fa-angle-right"></i> Products </a>
        <a href="Login.aspx"> <i class="fas fa-angle-right"></i> Login </a>
        <a href="SignUp.aspx"> <i class="fas fa-angle-right"></i> SignUp </a>
        <a href="Logout.aspx"> <i class="fas fa-angle-right"></i> Log Out </a>
        <a href="Cart.aspx"> <i class="fas fa-angle-right"></i> Cart </a>
    </div>

    <div class="share">
        <a href="#" class="fab fa-facebook-f">
        <div>
        </div>
        </a>
        <a href="#" class="fab fa-twitter">
        <div>
        </div>
        </a>
        <a href="#" class="fab fa-instagram">
        <div>
        </div>
        </a>
        <a href="#" class="fab fa-linkedin">
        <div>
        </div>
        </a>
    </div>

</section>

<section class="auto-style6">

    <p> created by <span>mr. web designer</span> | all rights reserved! </p>

    <div>

    <img src="images/card_img.png" alt="">

    </div>

</section>

<!-- footer section ends -->




<!-- swiper js link      -->
<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

<!-- custom js file link  -->
<script src="js/script.js"></script>
    
    </div>
</body>
</html>
