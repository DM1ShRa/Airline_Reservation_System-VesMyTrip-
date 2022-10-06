<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="SignIN.ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="contact.css"/>
    <title>Document</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="background">
    <div class="container">
      <div class="screen">
        <div class="screen-header">
          <div class="screen-header-left">
            <div class="screen-header-button close"></div>
            <div class="screen-header-button maximize"></div>
            <div class="screen-header-button minimize"></div>
          </div>
          <div class="screen-header-right">
            <div class="screen-header-ellipsis"></div>
            <div class="screen-header-ellipsis"></div>
            <div class="screen-header-ellipsis"></div>
          </div>
        </div>
        <div class="screen-body">
          <div class="screen-body-item left">
            <div class="app-title">
              <span>CONTACT</span>
              <span>US</span>
                <asp:Label ID="Label1" runat="server" Text="Thank You! Our Service Provider Will Contact You" ForeColor="ForestGreen"></asp:Label>
                <asp:Label ID="Label2" runat="server" Text="Pls Fill All The Details" ForeColor="IndianRed"></asp:Label>
            </div>
            <div class="app-contact">CONTACT INFO : +92 333 0000</div>
          </div>
          <div class="screen-body-item">
            <div class="app-form">
              <div class="app-form-group">
                  <asp:TextBox ID="nametext" class="app-form-control" placeholder="Name" runat="server"></asp:TextBox>
              </div>
              <div class="app-form-group">
                <asp:TextBox ID="emailtext" class="app-form-control" placeholder="Email" runat="server"></asp:TextBox>
              </div>
              <div class="app-form-group">
                <asp:TextBox ID="contact" class="app-form-control" placeholder="Contact" runat="server"></asp:TextBox>
              </div>
              <div class="app-form-group message">
               <asp:TextBox ID="msgtext" class="app-form-control" placeholder="Message" runat="server"></asp:TextBox>
              </div>
              <div class="app-form-group buttons">
                <asp:Button ID="Button1" class="app-form-button" runat="server" Text="CANCEL" OnClick="Button1_Click" />
                <asp:Button ID="Button2" class="app-form-button" runat="server" Text="SEND" OnClick="Button2_Click" />
              </div>
            </div>
          </div>
        </div>
      </div>
   
    </div>
  </div>  
    </form>
</body>
</html>
