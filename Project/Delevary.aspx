<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Delevary.aspx.cs" Inherits="Delevary" EnableEventValidation="false" ValidateRequest="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delevary</title>

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
        .auto-style7 {
            width: 1px;
        }
        .auto-style8 {
            font-size: xx-large;
        }
        .auto-style9 {
            font-size: x-large;
        }
        </style>

</head>
<body>
    <form runat="server">
      
    <div class="auto-style3">
      
<!-- header section starts  -->

<header class="header">

    <div class="auto-style3">

    <a href="Home.aspx" class="logo"> <i class="fas fa-store"></i> shopie </a>

    </div>

    <form class="search-form">
        <input type="search" id="search-box" placeholder="search here...">
        <label for="search-box" class="fas fa-search"></label>
    </form>
     
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

</header>



    

        <div class="auto-style3">
            <table>
                <tr>
                    <td class="auto-style8" colspan="3"><strong>Delevary</strong></td>
                </tr>
                <tr>
                    <td class="auto-style9">Address</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="auto-style9" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">City</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtCity" runat="server" CssClass="auto-style9"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">Street</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtStreet" runat="server" CssClass="auto-style9"></asp:TextBox>
                    </td>
                </tr>
                <tr class="auto-style9">
                    <td colspan="3">
                        <asp:Button ID="btn" runat="server" Text="Finsh" style="font-size: large" OnClick="btn_Click" />
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
        <a href="Categoty.aspx"> 
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
    </form>
</body>
</html>
