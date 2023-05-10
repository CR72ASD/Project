<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProductDetails.aspx.cs" Inherits="ProductDetails" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Details</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- swiper css link  -->
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    <!-- cusom css file link  -->
    <link rel="stylesheet" href="css/style.css">

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style3 {
            width: 299px;
            text-align: center;
        }
        .auto-style5 {
            font-size: large;
        }
        .auto-style6 {
            font-size: large;
            color: #FFFFFF;
        }
        .auto-style7 {
            color: #FFFFFF;
        }
        .auto-style8 {
            text-align: center;
        }
        .auto-style9 {
            text-align: left;
        }
    </style>

</head>
<body>
    <form id="form" runat="server">
        <div class="auto-style8">
<!-- header section starts  -->

<header class="header">

    <a href="Home.aspx" class="logo"> <i class="fas fa-store"></i> shopie </a>

            </header>
&nbsp;<label for="search-box" class="fas fa-search"></label><table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="3">Product Details</td>
                </tr>
                <tr>
                    <td class="auto-style3" rowspan="4">
                        <asp:Image ID="imgProduct" runat="server" Height="157px" Width="244px" />
                    </td>
                    <td class="auto-style9">
                        <asp:Label ID="lblProductName" runat="server" CssClass="auto-style5"></asp:Label>
                    </td>
                    <td rowspan="4">
                        <asp:Image ID="Image1" runat="server" Height="142px" Width="194px" ImageUrl="~/1200px-Shopping_Basket_Flat_Icon_Vector.svg.png" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="lblPrice" runat="server" CssClass="auto-style5"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="lblQuintaty" runat="server" CssClass="auto-style5"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtuser" runat="server" Width="48px">1</asp:TextBox>
&nbsp;<asp:ImageButton ID="btnshop" runat="server" Height="23px" Width="31px" ImageUrl="~/download.png" OnClick="btnshop_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblProductId" runat="server" CssClass="auto-style6"></asp:Label>
                        <span class="auto-style7">&nbsp; </span>
                        <asp:Label ID="lblCategory" runat="server" CssClass="auto-style6"></asp:Label>
&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
            </table>
&nbsp;</div>
    </form>





    <div class="icons">
        <div id="menu-btn" class="fas fa-bars"></div>
        <div id="search-btn" class="fas fa-search"></div>
        <a href="Login.aspx" class="fas fa-user"></a>
        <a href="Cart.aspx" class="fas fa-shopping-cart"></a>
    </div>

</header>

<!-- header section ends -->

<!-- side-bar section starts -->

<div class="side-bar">

    <div id="close-side-bar" class="fas fa-times"></div>

    <div class="user">
        <%--<img src="images/user-img.png" alt="">
        <h3>shaikh anas</h3>--%>
        <a href="Logout.aspx">Log out</a>
    </div>

    <nav class="navbar">
        <a href="Home.aspx"> <i class="fas fa-angle-right"></i> Home </a>
        <a href="Categoty.aspx"> <i class="fas fa-angle-right"></i> Category </a>
        <a href="Product.aspx"> <i class="fas fa-angle-right"></i> Products </a>
        <a href="Login.aspx"> <i class="fas fa-angle-right"></i> Login </a>
        <a href="SignUp.aspx"> <i class="fas fa-angle-right"></i> SignUp </a>
        <a href="Logout.aspx"> <i class="fas fa-angle-right"></i> Log Out </a>
        <a href="Cart.aspx"> <i class="fas fa-angle-right"></i> Cart </a>
    </nav>

</div>

<section class="quick-links">

    <a href="home.html" class="logo"> <i class="fas fa-store"></i> shopie </a>

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
        <a href="#" class="fab fa-facebook-f"></a>
        <a href="#" class="fab fa-twitter"></a>
        <a href="#" class="fab fa-instagram"></a>
        <a href="#" class="fab fa-linkedin"></a>
    </div>

</section>

<section class="credit">

    <p> created by <span>mr. web designer</span> | all rights reserved! </p>

    <img src="images/card_img.png" alt="">

</section>

<!-- footer section ends -->




<!-- swiper js link      -->
<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

<!-- custom js file link  -->
<script src="js/script.js"></script>
    </form>
</body>
</html>
