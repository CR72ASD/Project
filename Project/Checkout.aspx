<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="Checkout" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Payment Checkout Form</title>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css">
	<link rel="stylesheet" href="styles3.css">

</head>
<body>
	

    <form runat="server">
<div class="wrapper">
  <div class="payment">
    <div class="payment-logo">
      <p>p</p>
    </div>
    
    
    <h2>Payment Gateway</h2>
    <div class="form">
      <div class="card space icon-relative">
        <label class="label">Card Full Name:</label>
          <asp:TextBox ID="txtFullName" runat="server" placeholder="Coding Market" class="input"></asp:TextBox>

        <i class="fas fa-user"></i>
      </div>
      <div class="card space icon-relative">
        <label class="label">Card Number:</label>
          <asp:TextBox ID="txtNumper" runat="server" data-mask="0000 0000 0000 0000" placeholder="Card Number" class="input"></asp:TextBox>

          <i class="far fa-credit-card"></i>
      </div>
      <div class="card-grp space">
        <div class="card-item icon-relative">
          <label class="label">CVC:</label>
            <asp:TextBox ID="txtCvv" data-mask="000" placeholder="000" runat="server" class="input"></asp:TextBox>
          <i class="fas fa-lock"></i>
          <i class="fas fa-lock"></i>
        </div>
      </div>
        
      <div class="btn">
          <asp:Button ID="btnPay" runat="server" Text="Pay" OnClick="btnPay_Click" />

      </div> 
        <div class="btn">
          <asp:Button ID="btnGo" runat="server" Text="I Dont Have one" class="submit-btn" OnClick="btnGo_Click"/>
      </div> 
      
    </div>
  </div>
</div>

	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
</form>
</body>
</html>
