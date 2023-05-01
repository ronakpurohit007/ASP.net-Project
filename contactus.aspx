<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="Default2" %>

<%-- Add content controls here --%>
<asp:Content ID="Content1" runat="server" 
    
    contentplaceholderid="ContentPlaceHolder1">
    <link href="css/contact%20Us.css" rel="stylesheet" type="text/css" />
     <link href="css/rq.css" rel="stylesheet" type="text/css" />
    
    <!--HEADER-->
<header>
<div class="banner">

<span>
<a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a>
<a href="https://twitter.com/login"><i class="fa fa-twitter"></i></a>
<a href="https://www.instagram.com/"><i class="fa fa-instagram"></i></a>
<a href="https://www.youtube.com/"><i class="fa fa-youtube"></i></a>
</span>
</div>
<!--NAVIGATION-->
<div class="topnav" id="myTopnav">
<a href="Default2.aspx" id="logo"><img src="img/Logo.png"></a>
<a href="Login.aspx">Logout</a>
<a href="About As.aspx">About Us</a>
<a href="contactus.aspx">Contact Us</a>
<a href="AddCar.aspx">Add Car</a>

<a href="rqcar.aspx"> Request Car</a>
<a href="Default2.aspx">Home</a>
</div> 



</div>
</header>


<div id="navbar">
<a href="#" id="logo">LEVIOOSA.</a>
<a href="#contact">ContactUs</a>
<a href="#gallery">Gallery</a>
<div class="dropdown">
<button class="dropbtn">Shop 
<i class="fa fa-caret-down"></i>
</button>
<div class="dropdown-content">
<a href="#">Levioosa Store</a>
<a href="#">Ebay Store</a>
</div>
</div> 
<div class="dropdown">
<button class="dropbtn">Prestige Hire
<i class="fa fa-caret-down"></i>
</button>
<div class="dropdown-content">
<a href="#">PCO Car Rental</a>
<a href="#">Luxury Car Rental</a>
</div>
</div> 
<a href="#about">Home</a>
</div>

    <div class="wrapper">
  <div class="container">
    <div class="contactus">
      <h1>Let Us know, What's in your Head.</h1>
      <div class="item name_email">
        <input type="text" placeholder="Your name">
        <input type="text" placeholder="Email">
      </div>
      <div class="item">
        <input type="text" placeholder="Subject">
      </div>
      <div class="item">
        <textarea placeholder="Message"></textarea>
      </div>
      <div class="btn1">
      <br />
      <a href="#">send</a>
          <a href="con_display.aspx">Show Message</a>
      </div>
    </div>
  </div>
</div>

<!--FOOTER-->
<footer>
<div class="footer">
<div class="column">
<ul>
<li class="title"><img src="img/Logo.png" alt="ANGEL GROUP"></li>
<li>Registered country Company No. xxxx</li>
<li>VAT Registered No. xxxxxxxxx</li>
<li>Regulated by the ICO for the Data Protection Act 1998</li>
</ul>
</div>

<div class="column">
<ul>
<li class="title">OTHER LINKS</li>
<li><a href="https://www.gmail.com/">Gmail</a></li>
<li><a href="https://www.facebook.com/">Facebook</a></li>
<li><a href="https://www.instagram.com/">Instagram</a></li>
<li><a href="https://twitter.com/i/flow/login">Twitter</a></li>
</ul>
</div>

<div class="column">
<ul>
<li class="title">SHORT CUT</li>
<li><a href="Default2.aspx">Home</a></li>
<li><a href="About As.aspx"> Car </a></li>
<li><a href="About As.aspx">About Us</a></li>
<li><a href="Login.aspx">Logout</a></li>

</ul>
</div>

<div class="column">
<ul>
<li class="title">CARDS ACCEPTED</li>
<li><i class="fa fa-cc-visa"></i> <i class="fa fa-cc-mastercard"></i> <i class="fa fa-cc-paypal"></i></li>
<li>Head office, address, country, pincode</li>
<li>Tel: xxx xxx xxxx</li>
</ul>
</div>
</div>
</footer>
<div class="sub-footer">
© Car Rental System 2022-23 - All rights reserved || Designed By: Ronak Purohit
</div>
<script src="date.js" type="text/javascript"></script>
</asp:Content>

