<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- swiper css link  -->
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    <!-- cusom css file link  -->
    <link rel="stylesheet" href="css/style.css">

</head>
<body>
<!-- header section starts  -->

<header class="header">

    <a href="Home.aspx" class="logo"> <i class="fas fa-store"></i> shopie </a>

    <form action="" class="search-form">
        <input type="search" id="search-box" placeholder="search here...">
        <label for="search-box" class="fas fa-search"></label>
    </form>
    <form id="form2" runat="server">

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
        <img src="images/user-img.png" alt="">
        <h3>shaikh anas</h3>
        <a href="Logout.aspx">log out</a>
    </div>

    <nav class="navbar">
       <a href="Home.aspx"> <i class="fas fa-angle-right"></i> Home </a>
        <a href="Category.aspx"> <i class="fas fa-angle-right"></i> Category </a>
        <a href="Product.aspx"> <i class="fas fa-angle-right"></i> Products </a>
        <a href="Login.aspx"> <i class="fas fa-angle-right"></i> Login </a>
        <a href="SignUp.aspx"> <i class="fas fa-angle-right"></i> SignUp </a>
        <a href="Logout.aspx"> <i class="fas fa-angle-right"></i> Log Out </a>
        <a href="Cart.aspx"> <i class="fas fa-angle-right"></i> Cart </a>
    </nav>

</div>

<!-- side-bar section ends -->

<!-- home section starts  -->

<section class="home">

    <div class="swiper home-slider">

        <div class="swiper-wrapper">

        <div class="swiper-slide slide">
            <div class="image">
                <img src="images/home-img-1.jpg" alt="">
            </div>
            <div class="content">
                <span>upto 50% off</span>
                <h3>smartphones</h3>
                <a href="Category.aspx" class="btn">shop now</a>
            </div>
        </div>

        <div class="swiper-slide slide">
            <div class="image">
                <img src="images/home-img-2.jpg" alt="">
            </div>
            <div class="content">
                <span>upto 50% off</span>
                <h3>smartwatch</h3>
                <a href="Category.aspx" class="btn">shop now</a>
            </div>
        </div>

        <div class="swiper-slide slide">
            <div class="image">
                <img src="images/home-img-3.jpg" alt="">
            </div>
            <div class="content">
                <span>upto 50% off</span>
                <h3>headphones</h3>
                <a href="Category.aspx" class="btn">shop now</a>
            </div>
        </div>

        </div>

        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>

    </div>

</section>

<!-- home section ends -->

<!-- banner section starts  -->

<section class="banner">

    <div class="box-container">

        <a href="Product.aspx" class="box">
            <img src="images/banner-1.jpg" alt="">
            <div class="content">
                <span>special offer</span>
                <h3>upto 50% off</h3>
            </div>
        </a>

        <a href="Product.aspx" class="box">
            <img src="images/banner-2.jpg" alt="">
            <div class="content">
                <span>special offer</span>
                <h3>upto 50% off</h3>
            </div>
        </a>

        <a href="Product.aspx" class="box">
            <img src="images/banner-3.jpg" alt="">
            <div class="content">
                <span>special offer</span>
                <h3>upto 50% off</h3>
            </div>
        </a>
        
    </div>

</section>

<!-- banner section ends -->

<!-- arrivals section starts  -->

<section class="arrivals">

    <h1 class="heading"> new <span>arrivals</span> </h1>

    <div class="box-container">

        <div class="box">
            <div class="image">
                <img src="images/arrival-1.jpg" class="main-img" alt="">
                <img src="images/arrival-1-hover.jpg" class="hover-img" alt="">
            </div>
            <div class="content">
                <h3>HD television</h3>
                <div class="price"> $249.99 <span>$399.99</span> </div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="images/arrival-2.jpg" class="main-img" alt="">
                <img src="images/arrival-2-hover.jpg" class="hover-img" alt="">
            </div>
            <div class="content">
                <h3>lenovo laptop</h3>
                <div class="price"> $249.99 <span>$399.99</span> </div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="images/arrival-3.jpg" class="main-img" alt="">
                <img src="images/arrival-3-hover.jpg" class="hover-img" alt="">
            </div>
            <div class="content">
                <h3>new smartphone</h3>
                <div class="price"> $249.99 <span>$399.99</span> </div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="images/arrival-4.jpg" class="main-img" alt="">
                <img src="images/arrival-4-hover.jpg" class="hover-img" alt="">
            </div>
            <div class="content">
                <h3>new printer</h3>
                <div class="price"> $249.99 <span>$399.99</span> </div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="images/arrival-5.jpg" class="main-img" alt="">
                <img src="images/arrival-5-hover.jpg" class="hover-img" alt="">
            </div>
            <div class="content">
                <h3>new headphones</h3>
                <div class="price"> $249.99 <span>$399.99</span> </div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="images/arrival-6.jpg" class="main-img" alt="">
                <img src="images/arrival-6-hover.jpg" class="hover-img" alt="">
            </div>
            <div class="content">
                <h3>new speakers</h3>
                <div class="price"> $249.99 <span>$399.99</span> </div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>
        </div>

    </div>

</section>

<!-- arrivals section ends -->
















<!-- footer section starts  -->

<section class="quick-links">

    <a href="Home.aspx" class="logo"> <i class="fas fa-store"></i> shopie </a>

    <div class="links">
        <a href="Home.aspx"> <i class="fas fa-angle-right"></i> Home </a>
        <a href="Category.aspx"> <i class="fas fa-angle-right"></i> Category </a>
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


