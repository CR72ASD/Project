<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReportesHome.aspx.cs" Inherits="ReportesHome" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- swiper css link  -->
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    <!-- cusom css file link  -->
    <link rel="stylesheet" href="css/style.css">

</head>
<body>
    <form id="form2" runat="server">
<!-- header section starts  -->

<header class="header">

    <a href="AdminHome.aspx" class="logo"> <i class="fas fa-store"></i> shopie </a>

    <form action="" class="search-form">
    </form>

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
        <a href="AdminHome.aspx"> <i class="fas fa-angle-right"></i> Home Admin </a>
        <a href="CategoryReport.aspx"> <i class="fas fa-angle-right"></i>Category Report </a>
        <a href="CustomerReport.aspx"> <i class="fas fa-angle-right"></i> Customer Report </a>
        <a href="ProductReport.aspx"> <i class="fas fa-angle-right"></i> Product Report </a>
        <a href="ReportesHome.aspx"> <i class="fas fa-angle-right"></i> Reports Home </a>
        <a href="Login.aspx"> <i class="fas fa-angle-right"></i> Login </a>
        <a href="SignUp.aspx"> <i class="fas fa-angle-right"></i> Sign Up </a>
        <a href="Logout.aspx"> <i class="fas fa-angle-right"></i> Log Out </a>
    </nav>

</div>

<section class="quick-links">

    <a href="AdminHome.aspx" class="logo"> <i class="fas fa-store"></i> shopie </a>

    <div class="links">
        <a href="AdminHome.aspx"> <i class="fas fa-angle-right"></i> Home Admin </a>
        <a href="CategoryReport.aspx"> <i class="fas fa-angle-right"></i>Category Report </a>
        <a href="CustomerReport.aspx"> <i class="fas fa-angle-right"></i> Customer Report </a>
        <a href="ProductReport.aspx"> <i class="fas fa-angle-right"></i> Product Report </a>
        <a href="ReportesHome.aspx"> <i class="fas fa-angle-right"></i> Reports Home </a>
        <a href="Logout.aspx"> <i class="fas fa-angle-right"></i> Log Out </a>
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
