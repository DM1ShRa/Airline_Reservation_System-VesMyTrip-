<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginIn_Page.aspx.cs" Inherits="SignIN.LoginIn_Page" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>Login</title>
    <link rel="preconnect" href="https://fonts.gstatic.com"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet"/>
    <link href="style.css" rel="stylesheet" />
  </head>
 <body>
    <div class="background">
        <div class="shape"></div>
        <div class="shape"></div>
    </div>
     <form id="form1" runat="server">
        <h3>Login Here</h3>
        <asp:TextBox ID="usernametext" placeholder="Username" runat="server"></asp:TextBox>
        <asp:TextBox ID="passtext" placeholder="Password" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="LogIn" OnClick="Button1_Click1" />
        <div class="social">
          <div class="go"><i class="fab fa-google"></i>  Google</div>
          <div class="fb"><i class="fab fa-facebook"></i>  Facebook<br />
            </div>
        </div>
         <asp:Button ID="Button2" runat="server" Text="Register" OnClick="Button2_Click" />

         <p>
             &nbsp;</p>
         <p>
             &nbsp;</p>
         <p>
             &nbsp;</p>
         <p>
             &nbsp;</p>
         <p>
             &nbsp;</p>
         <p>
             &nbsp;</p>
         <p>
              <asp:Label ID="Label1" runat="server" Text="Incorrect Credentials" ForeColor="Red"></asp:Label>
            </p>
     </form>
</body>
</html>

