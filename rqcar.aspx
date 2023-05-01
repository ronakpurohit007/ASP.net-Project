<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rqcar.aspx.cs" Inherits="rqcar" %>

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
    <div >
    <center>
      <section class='login' id='login'>
  <div class='head'>
  <img src="img/car.png" width="120px">
  <h1 class='company'>Car Rental</h1>
  </div>
  <p class='msg'>Admin Request Car</p>
  <div class='form'>
    <asp:Label ID="Label6" runat="server" Text="Name" ForeColor="LightGray"></asp:Label>
        <asp:TextBox ID="txtname" placeholder="Name" runat="server" 
            CssClass="text1" Width="336px"></asp:TextBox><br> 
        <asp:RequiredFieldValidator 
        ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter User name" 
            ControlToValidate="txtname" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator><br>

             <asp:Label ID="Label7" runat="server" Text="Email" ForeColor="LightGray"></asp:Label>
            <asp:TextBox ID="txtEmail" placeholder="Email" runat="server" 
            CssClass="text1" Width="336px"></asp:TextBox><br/>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ControlToValidate="txtEmail" 
                        ErrorMessage="Input value is an invalid email address!" ForeColor="Red" 
                        
            ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"></asp:RegularExpressionValidator><br>


<asp:Label ID="Label1" runat="server" Text="Star Date" ForeColor="LightGray"></asp:Label>
        
        
        
        <asp:TextBox ID="txtrq_Sday" runat="server" Width="56px" CssClass="text1"></asp:TextBox>
        <asp:TextBox ID="txtrq_SMonth" runat="server" Width="56px" CssClass="text1"></asp:TextBox>
        <asp:TextBox ID="txtrq_Syear" runat="server" Width="56px" CssClass="text1"></asp:TextBox>
        
        
        <br/><br>
        <asp:Label ID="Label2" runat="server" Text="End Date" ForeColor="LightGray"></asp:Label>
        <asp:TextBox ID="txtrq_Eday" runat="server" Width="56px" CssClass="text1"></asp:TextBox>
        <asp:TextBox ID="txtrq_EMonth" runat="server" Width="56px" CssClass="text1"></asp:TextBox>
        <asp:TextBox ID="txtrq_EYear" runat="server" Width="56px" CssClass="text1"></asp:TextBox>
        
        <br/><br>
<asp:Label ID="Label3" runat="server" Text="From" ForeColor="LightGray"></asp:Label>


        <asp:TextBox ID="txtrq_carform" runat="server" CssClass="text1" Width="88px"></asp:TextBox>
       
        <asp:Label ID="Label4" runat="server" Text="To" ForeColor="LightGray"></asp:Label>
        <asp:TextBox ID="txtrq_carto" runat="server" CssClass="text1" Width="88px"></asp:TextBox>
        <br/><br>
        <asp:Label ID="Label5" runat="server" Text="Car Type" ForeColor="LightGray"></asp:Label>
        <asp:TextBox ID="txtrq_cartype" runat="server" CssClass="text1"></asp:TextBox>


        <br/><br>
         <asp:Label ID="Label8" runat="server" Text="Required" ForeColor="LightGray"></asp:Label>

            <asp:TextBox ID="txtrequirements" placeholder="car requirements" runat="server" 
            CssClass="text1" Width="336px"></asp:TextBox><br/>
        <asp:RequiredFieldValidator 
        ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Car Requirements" 
            ControlToValidate="txtrequirements" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator><br>

             <asp:Label ID="Label9" runat="server" Text="Car Name" ForeColor="LightGray"></asp:Label>
            <asp:TextBox ID="txtcarname" placeholder="Car Name" runat="server" 
            CssClass="text1" Width="336px"></asp:TextBox><br/>
        <asp:RequiredFieldValidator 
        ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Car Name" 
            ControlToValidate="txtcarname" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator><br>

           
        
    <br />
<asp:DropDownList ID="drpreq" runat="server">
    <asp:ListItem>Accept</asp:ListItem>
    <asp:ListItem>Decline</asp:ListItem>
        </asp:DropDownList><br /><br />


<asp:Button ID="Button1" runat="server" Text="Update" CssClass="btn-10" 
            Height="35px" Width="72px" onclick="Button1_Click"></asp:Button>
  
  
        
   
    </div>
</section></center>

     </div>
     </div>
     <center>
         <asp:HiddenField ID="HiddenField1" runat="server" />
     <asp:GridView ID="GridView1" runat="server" ForeColor="#333333" Height="120px" 
             Width="400px" AutoGenerateSelectButton="True" DataKeyNames="rq_id" DataSourceID="SqlDataSource1" 
             onrowdeleted="GridView1_RowDeleted" onrowdeleting="GridView1_RowDeleting" 
             AutoGenerateColumns="False" 
             onselectedindexchanged="GridView1_SelectedIndexChanged" CellPadding="4" 
             GridLines="None" AutoGenerateDeleteButton="True">
         <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
         <Columns>
             <asp:BoundField DataField="rq_id" HeaderText="id" InsertVisible="False" 
                 ReadOnly="True" SortExpression="rq_id" />
             <asp:BoundField DataField="rq_name" HeaderText="Name" 
                 SortExpression="rq_name" />
             <asp:BoundField DataField="rq_email" HeaderText="Email" 
                 SortExpression="rq_email" />
             <asp:BoundField DataField="rq_Sday" HeaderText="" 
                 SortExpression="rq_Sday" />
             <asp:BoundField DataField="rq_SMonth" HeaderText="Start Date" 
                 SortExpression="rq_SMonth" />
             <asp:BoundField DataField="rq_Syear" HeaderText="" 
                 SortExpression="rq_Syear" />
                 
             <asp:BoundField DataField="rq_Eday" HeaderText="" 
                 SortExpression="rq_Eday" />
             <asp:BoundField DataField="rq_EMonth" HeaderText="End Date" 
                 SortExpression="rq_EMonth" />
             <asp:BoundField DataField="rq_EYear" HeaderText="" 
                 SortExpression="rq_EYear" />
             <asp:BoundField DataField="rq_carform" HeaderText="Form" 
                 SortExpression="rq_carform" />
             <asp:BoundField DataField="rq_carto" HeaderText="To" 
                 SortExpression="rq_carto" />
             <asp:BoundField DataField="rq_cartype" HeaderText="Car Type" 
                 SortExpression="rq_cartype" />
             <asp:BoundField DataField="rq_carname" HeaderText="Car Name" 
                 SortExpression="rq_carname" />
             <asp:BoundField DataField="rq_carrequ" HeaderText=" Request Status" 
                 SortExpression="rq_carrequ" />
             <asp:BoundField DataField="rq_rq" HeaderText="Required" SortExpression="rq_rq" />
         </Columns>
         <EditRowStyle BackColor="#999999" />
         <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
         <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
         <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
         <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
         <SortedAscendingCellStyle BackColor="#E9E7E2" />
         <SortedAscendingHeaderStyle BackColor="#506C8C" />
         <SortedDescendingCellStyle BackColor="#FFFDF8" />
         <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
             ConnectionString="<%$ ConnectionStrings:carConnectionString %>" 
             SelectCommand="SELECT * FROM [carrequest1]"></asp:SqlDataSource>
    </center><br />
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
