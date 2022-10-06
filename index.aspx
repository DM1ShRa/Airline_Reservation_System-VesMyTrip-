<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="SignUp_Form.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet"/>
<title>Bootstrap Simple Login Form with Blue Background</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<link href="index.css" rel="stylesheet" />
</head>
<body style="text-align: left">
        <div style="text-align: center">  
            <div class="signup-form">
    <form id="form1" runat="server">
        <asp:HiddenField ID="HfUserId" runat="server" />
		<h2>Sign Up</h2>
		<p>Please fill in this form to create an account!</p>
		<hr/>
     
        <div class="form-group">
			<div class="row">
				<div class="col-xs-6">
                    <asp:TextBox ID="FNameText" class="form-control" placeholder="Firstname"  runat="server"></asp:TextBox></div>
				<div class="col-xs-6">
                    <asp:TextBox ID="LNameText" class="form-control" placeholder="Lastname" runat="server"></asp:TextBox> </div>
			</div>        	
        </div>
         <div class="form-group">
            <asp:TextBox ID="ContactText" class="form-control" placeholder="Contact" runat="server"></asp:TextBox>
        </div>
        <div>
             Gender
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>

            
        </div><br>
          <asp:TextBox ID="AddressText" class="form-control" placeholder="Address" runat="server"></asp:TextBox>

       
        <div class="form-group">
            <asp:TextBox ID="USRText" class="form-control" placeholder="Username" runat="server"></asp:TextBox>
        </div>
       
		<div class="form-group">
             <asp:TextBox ID="PASSText" class="form-control" placeholder="Password" runat="server"></asp:TextBox>
        </div>  
        <div class="form-group">
            <asp:TextBox ID="ConfirmText" class="form-control" placeholder="Confirm Password" runat="server"></asp:TextBox>
        </div>       
        <div class="form-group">
			<label class="checkbox-inline"><input type="checkbox" required="required"> I accept the <a href="#">Terms of Use</a> &amp; <a href="#">Privacy Policy</a></label>
		</div>
		<div class="form-group">
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
        </div>
         <p>
            <asp:Label ID="Label1" runat="server" Text="Sucess" style="color: #00CC00; text-decoration: underline"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Error" style="color: #FF3300"></asp:Label>
        </p>
    </form>
</div>
</body>
</html>