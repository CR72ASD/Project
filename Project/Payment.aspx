<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Payment </title>
    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/style6.css">

</head>
<body>
    
<div class="container">

    <form action="">
        <form runat="server">
        <div class="row">

            <div class="col">

                <h3 class="title">billing address</h3>

                <div class="inputBox">
                    <span>full name :</span>

                    <asp:TextBox ID="txtName" placeholder="john deo" runat="server"></asp:TextBox>
                </div>
                <div class="inputBox">
                    <span>email :</span>
                    <asp:TextBox ID="txtEmail" TextMode="Email" placeholder="example@example.com" runat="server"></asp:TextBox>

                </div>
                <div class="inputBox">
                    <span>address :</span>
                    <asp:TextBox ID="txtAddress" placeholder= "room - street - locality" runat="server"></asp:TextBox>

                </div>
                <div class="inputBox">
                    <span>city :</span>
                    <asp:TextBox ID="txtCity" placeholder="mumbai" runat="server"></asp:TextBox>

                </div>

                <div class="flex">
                    <div class="inputBox">
                        <span>state :</span>
                    <asp:TextBox ID="txtxState" placeholder="india" runat="server"></asp:TextBox>

                    </div>
                    <div class="inputBox">
                        <span>zip code :</span>
                    <asp:TextBox ID="txtZipCode" placeholder="123 456" runat="server"></asp:TextBox>

                    </div>
                </div>

            </div>

            <div class="col">

                <h3 class="title">payment</h3>

                <div class="inputBox">
                    <span>cards accepted :</span>
                    <img src="images/card_img.png" alt="">
                </div>
                <div class="inputBox">
                    <span>name on card :</span>
                    <asp:TextBox ID="txtNameCard" placeholder="mr. john deo" runat="server"></asp:TextBox>
                </div>
                <div class="inputBox">
                    <span>credit card number :</span>
                    <asp:TextBox ID="txtNumber" placeholder="1111-2222-3333-4444" runat="server"></asp:TextBox>
                </div>
                <div class="inputBox">
                    <span>exp month :</span>
                    <asp:TextBox ID="txtMonth" placeholder="january" runat="server"></asp:TextBox>
                </div>

                <div class="flex">
                    <div class="inputBox">
                        <span>exp year :</span>
                    <asp:TextBox ID="txtYear" placeholder="2022" runat="server"></asp:TextBox>
                    </div>
                    <div class="inputBox">
                        <span>CVV :</span>
                    <asp:TextBox ID="txtCVV" placeholder="1234" runat="server"></asp:TextBox>
                    </div>
                </div>

            </div>
    
        </div>

        
        <asp:Button ID="btn" runat="server" Text="Create" class="submit-btn" OnClick="btn_Click"/>

   </form>
    </form>

</div>    
</body>
</html>