<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddCar.aspx.cs" Inherits="rqcar" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/rq.css" rel="stylesheet" type="text/css" />
    <link href="css/footer.css" rel="stylesheet" type="text/css" />
    
    <link href="css/usercar.css" rel="stylesheet" type="text/css" />
    <link href="css/rqcar.css" rel="stylesheet" type="text/css" />
   
    <!--HEADER-->
<header>
<div class="banner">
<span>
<a href="emailto:"><i class="fa fa-envelope"></i> info@gmail.com</a>
<a href="tel:xxxxxxxxxx"><i class="fa fa-phone"></i> XXXX-XXX-XXXX</a>
</span>
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
<a href="login/login.aspx">Logout</a>
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


</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div >
    <center>
      <section class='login' id='login'>
  <div class='head'>
  <asp:Label ID="lblerror" runat="server" Text="" ForeColor="Red"></asp:Label><br />
  <img src="img/car.png" width="120px">
  <h1 class='company'>Car Rental</h1>
  </div>
  <p class='msg'>Add Car</p>
  <div class='form'>
    
        <asp:TextBox ID="txtCarName" placeholder="Car Name" runat="server" 
            CssClass="text1" Width="336px"></asp:TextBox><br> 
       <asp:RegularExpressionValidator 
        ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter User name" 
            ControlToValidate="txtcarname" ForeColor="Red" SetFocusOnError="True" 
            ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
           
            <br>

             <asp:TextBox ID="txtCompanyName" placeholder="Company Name" runat="server" 
            CssClass="text1" Width="336px"></asp:TextBox><br> 
        <asp:RegularExpressionValidator 
        ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter User name" 
            ControlToValidate="txtCompanyName" ForeColor="Red" SetFocusOnError="True" 
            ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator><br>

             <asp:TextBox ID="txtditails" placeholder="Car Ditails" runat="server" 
            CssClass="text1" Width="336px"></asp:TextBox><br>
        <asp:RegularExpressionValidator 
        ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter User name" 
            ControlToValidate="txtditails" ForeColor="Red" SetFocusOnError="True" 
            ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator><br>
            

             <asp:TextBox ID="txtCarNumber" placeholder="Car Number" runat="server" 
            CssClass="text1" Width="336px"></asp:TextBox><br> 
        <asp:RequiredFieldValidator 
        ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter User Car Number" 
            ControlToValidate="txtCarNumber" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator><br>

             <asp:TextBox ID="txtPrice" placeholder="Price" runat="server" 
            CssClass="text1" Width="336px"></asp:TextBox><br> 
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txtPrice" 
                        ErrorMessage="Enter Price" 
                        ForeColor="Red" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator><br>
<asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload>
           
    <br> <br>

<asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn-10" 
            Height="35px" Width="72px" onclick="btnAdd_Click"></asp:Button>
  
  
    
   
    </div>
</section></center>
<center>
            
        
        </center>
     </div>
     </div>
      <!--FOOTER-->
<footer>
<div class="footer">
<div class="column">
<ul>
<li class="title"><img src="img/Logo.png" alt="Car Rental"></li>
<li>National Car Rental No. xxxx</li>
<li>VAT Registered No. xxxxxxxxx</li>
<li>Regulated by the ICO for the Data Protection Act 2022-23</li>
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
<li><a href="Default2.aspx">Home </a></li>
<li><a href="contactus.aspx">Contact Us</a></li>
<li><a href="About As.aspx">About Us</a></li>
<li><a href="login/login.aspx">Logout</a></li>

</ul>
</div>

<div class="column">
<ul>
<li class="title">CARDS ACCEPTED</li>
<li><i class="fa fa-cc-visa"></i> <i class="fa fa-cc-mastercard"></i> <i class="fa fa-cc-paypal"></i></li>
<li>Head office, address, country, pincode: xxx xxx</li>
<li>Tel: xxx xxx xxxx</li>
</ul>
</div>
</div>
</footer>
<div class="sub-footer">
© Car Rental System 2022-23 - All rights reserved || Designed By: Ronak Purohit
</div>

    </form>
   
</body>
</html>
