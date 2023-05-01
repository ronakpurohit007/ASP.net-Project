<%@ Page Language="C#" AutoEventWireup="true" CodeFile="con_display.aspx.cs" Inherits="con_display" %>

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
    <div>
    
        <br />
        <asp:DataList ID="DataList1" runat="server" CellPadding="4" 
            DataKeyField="co_id" DataSourceID="SqlDataSource1" ForeColor="#333333" 
            RepeatDirection="Horizontal" CellSpacing="4" Font-Bold="False" 
            Font-Italic="False" Font-Overline="False" Font-Strikeout="False" 
            Font-Underline="False" RepeatColumns="6">
            <AlternatingItemStyle BackColor="White" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#E3EAEB" />
            <ItemTemplate>
               
                 <asp:Label ID="Label16" runat="server" Text="id :" ForeColor="green"></asp:Label>
                <asp:Label ID="co_idLabel" runat="server" Text='<%# Eval("co_id") %>' />
                <br />
               
                <asp:Label ID="Label1" runat="server" Text="Name :" ForeColor="green"></asp:Label>
                <asp:Label ID="co_nameLabel" runat="server" Text='<%# Eval("co_name") %>' />
                <br />
                
                <asp:Label ID="Label2" runat="server" Text="Email :" ForeColor="green"></asp:Label>
                <asp:Label ID="co_emailLabel" runat="server" Text='<%# Eval("co_email") %>' />
                <br />
                
                <asp:Label ID="Label3" runat="server" Text="Subgect :" ForeColor="green"></asp:Label>
                <asp:Label ID="co_subLabel" runat="server" Text='<%# Eval("co_sub") %>' />
                <br />
                
                <asp:Label ID="Label4" runat="server" Text="Message :" ForeColor="green"></asp:Label>
                <asp:Label ID="co_messLabel" runat="server" Text='<%# Eval("co_mess") %>' />
                <br /><br />
               
                          
                        
                      
<br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:carConnectionString4 %>" 
            SelectCommand="SELECT * FROM [contactus]"></asp:SqlDataSource>
    
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
