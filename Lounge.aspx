﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lounge.aspx.cs" Inherits="SignIN.Lounge" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width,
            initial-scale=1, shrink-to-fit=no"/>

    <link rel="stylesheet" href="index.css"/>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="bootstrap.min.css"/>

    <title>Restaurant Website</title>
</head>
<body>
    <form id="form1" runat="server">
        <nav>
        <ul class="nav-flex-row">
            <li class="nav-item">
                <a href="#about">About</a>
            </li>
            <li class="nav-item">
                <a href="#reservation">Reservation</a>
            </li>
            <li class="nav-item">
                <a href="#menu">Menu</a>
            </li>
            <li class="nav-item">
                <a href="#shop">Shop</a>
            </li>
        </ul>
    </nav>
    <section class="section-intro">
        <header>
            <h1> Welcome To Luxur Lounge
            </h1>
        </header>
        <div class="link-to-book-wrapper">
            <a class="link-to-book" href="#reservations">Book a table</a>
        </div>
    </section>

    <section class="about-section">
        <article>
            <h3>
                Section for the text why your restaurant is the best.
            </h3>


            <p>
                Lorem ipsum dolor sit, amet consectetur adipisicing elit. A quos, voluptatum illum mollitia dolores libero placeat nesciunt quasi adipisci impedit!Lorem ipsum dolor sit, amet consectetur adipisicing elit. A quos, voluptatum illum mollitia dolores libero
                placeat nesciunt quasi adipisci impedit! Lorem ipsum dolor sit, amet consectetur adipisicing elit. A quos, voluptatum illum mollitia dolores libero placeat nesciunt quasi adipisci impedit!Lorem ipsum dolor sit.
            </p>

        </article>
    </section>

    <!-- carousel section -->
    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="Image/food1.png" />
            </div>
            <div class="carousel-item">
               <img src="Image/food2.png" />
            </div>
            <div class="carousel-item">
                <img src="Image/food3.png" />
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true">
            </span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true">
            </span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <div class="container">
        <div class="row-flex">
            <div class="flex-column-form">
                <h3>
                    Make a booking
                </h3>
                <form class="media-centered">
                    <div class="form-group">

                        <p>
                            Please leave your number we will call to make a reservation
                        </p>


                        <input type="name" class="form-control" id="exampleInputName1" aria-describedby="nameHelp" placeholder="Enter your name">
                    </div>
                    <div class="form-group">
                        <input type="number" class="form-control" id="exampleInputphoneNumber1" placeholder="Enter your phone number">
                    </div>
                    <button type="submit" class="btn btn-primary">
                        Submit
                    </button>
                </form>
            </div>
            <div class="opening-time">
                <h3>
                    Opening times
                </h3>

                <p>
                    <span>Monday—Thursday: 08:00 — 22:00</span>
                    <span>Friday—Saturday: 09:00 — 23:00 </span>
                    <span>Sunday: 10:00 — 17:00</span>
                </p>

            </div>
            <div class="contact-address">
                <h3>
                    Contact
                </h3>

                <p>
                    <span>022 6153 2500</span>
                    <span>D10B</span>
                    <span>Vesit,Mumbai</span>
                </p>

            </div>
        </div>
    </div>



    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    </script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
    </script>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
    </script>
   </form>
</body>
</html>