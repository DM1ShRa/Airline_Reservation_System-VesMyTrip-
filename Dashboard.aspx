<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="SignIN.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="DropDown.css">
    <style>
           body{
          background-image: url('https://i.stack.imgur.com/W6Fuk.png');
        }
        .overlap{
          margin-top: -70px;
        }
    </style>
    
    <link href="input.css">
    <title></title>
</head>
<script src="https://code.jquery.com/jquery-3.6.1.min.js" ></script>
<script>
    function Set_language() {
        var language = jQuery('# language').val();
        window.location.href = 'http://127.0.0.1:5500/reservation.html/?Language=' + Language;
    }
</script>
<body>
    <div class="flex">
    <div class="w-36 mx-10 my-5">
        <img src="Image/Vesmytrip__2___1_-removebg-preview%20(1).png" />
    </div>

    </div>
  
    <div class="flex justify-center  mt-3  ">
        <nav class=" shadow-2xl rounded-lg mx-8 my-6 py-10  bg-white box">
            <ul class=" inline-flex  space-x-16">
            
              <div class="dropdown mx-5  hover:shadow-2xl">
                <button class></button>
            
              </div>
              <div class="dropdown">
                <button class="dropbtn mr-14 hover:shadow-2xl">Travelling Inf</button>
                <div class="dropdown-content">
                  <a href="https://localhost:44352/Booking.aspx">Airline Booking</a>
                  <a href="https://localhost:44352/ContactUs.aspx">Airline Enquiry</a>
                  <a href="#">Flight Cancellation</a>
                 
                  
                </div>
              </div>
              <div class="dropdown ">
                <button class="dropbtn  hover:shadow-2xl mr-14">Flight Facilities</button>
                <div class="dropdown-content">
                  <a href="#">Onboard Facilities</a>
                  <a href="#">Pickup And Drop</a>
                  <a href="http://127.0.0.1:5500/Lounge.html">Lounge Facilities</a>
                </div>
              </div>

                <div class="dropdown">
                <button class="dropbtn  hover:shadow-2xl mr-14">Security Regulation</button>
                <div class="dropdown-content">
                  <a href="#">Restricted Items</a>
                  <a href="#">Baggage</a>
                  <a href="#">Documents Required</a>
                  <a href="#">Helpline Number</a>
                </div>
              </div>

              <div class="dropdown ">
                  <a href="https://localhost:44352/LoginIn_Page" class="dropbtn hover:shadow-2xl mr-14">Login/Signup</a>
             
              </div>  
             
            </ul>
        </nav>    
    </div>
     
    <div class="overlap mb-56  bg-slate-100">
     <ul class="inline-flex px-8 py-16">
      
    </ul>
        
    
    </div>
</body>
</html>
