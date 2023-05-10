<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="UTF-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <link rel="stylesheet" href="css/style2.css"/>
  <title>Sign Up</title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="container">
    <!-- Form Wrap Start -->
    <div class="form-wrap">
      <h1>Sign Up</h1>
      <p>It's Free and Only takes a minute</p>
      <!-- Form Start -->
      <form>
        <div class="form-group">
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Your Name" ControlToValidate="txtuserName"></asp:RequiredFieldValidator>
        <asp:TextBox ID="txtuserName" runat="server" placeholder="enter your name" class="box"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Your Email" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
        <asp:TextBox ID="txtEmail" runat="server" placeholder="enter your email" TextMode="Email" class="box"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Your Password" ControlToValidate="txtPass"></asp:RequiredFieldValidator>
        <asp:TextBox ID="txtPass" runat="server" placeholder="enter your password" TextMode="Password" class="box"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Your RePassword" ControlToValidate="txtPass"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Invaled Password" ControlToValidate="txtRePass" ControlToCompare="txtPass"></asp:CompareValidator>        
        <asp:TextBox ID="txtRePass" runat="server" placeholder="re-enter your name" TextMode="Password" class="box"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Your Phone" ControlToValidate="txtPhone"></asp:RequiredFieldValidator>
        <asp:TextBox ID="txtPhone" runat="server" placeholder="enter your phone" class="box"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Address" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
        <asp:TextBox ID="txtAddress" runat="server" placeholder="enter your Address" class="box"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter Your Quistion" ControlToValidate="txtQuistion"></asp:RequiredFieldValidator>
        <asp:TextBox ID="txtQuistion" runat="server" placeholder="enter your quistion" class="box"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Enter Your Answer" ControlToValidate="txtAnswer"></asp:RequiredFieldValidator>
        <asp:TextBox ID="txtAnswer" runat="server" placeholder="enter your answer" class="box"></asp:TextBox>
        <asp:Button ID="btngo" runat="server" Text="Register Now" class="btn" OnClick="btngo_Click"/>
      </form>
      <!-- Form Close -->
    </div>
    <!-- Form Wrap Close -->
    <footer>
      <p>Already Have an Account? <a href="Login.aspx">Login Here</a></p>
    </footer>
  </div>
    </form>
</body>
</html>
