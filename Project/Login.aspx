<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>
<!-- Coding By CodingNepal - youtube.com/codingnepal -->
<html lang="en" dir="ltr">
  <head runat="server">
    <meta charset="utf-8">
    <title>Login</title>
    <link rel="stylesheet" href="style.css">
  </head>
  <body>
      
    <div class="center">
      <h1>Login</h1>
      <form method="post">
          <form id="form2" runat="server">
        <div class="txt_field">
          <%--<input type="text" required>--%>
            <asp:TextBox ID="txtUser"  runat="server" placeholder="Name" required="Enter Your Name"></asp:TextBox>
          <span></span>
          
        </div>
        <div class="txt_field">
          <%--<input type="password" required>--%>
            <asp:TextBox ID="txtPass" TextMode="Password" placeholder="Password" runat="server" required="Enter Your Password"></asp:TextBox>
          <span></span>
          
        </div>
        <div class="pass">
            <asp:CheckBox ID="chkremember" runat="server" Text="Remember Me" />
        </div>
        <asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" />
        <%--<input type="submit" value="Login">--%>
        <div class="signup_link">
          Not a member? <a href="SignUp.aspx">Signup</a>
        </div>
              </form>
      </form>
    </div>
    
  </body>
</html>

