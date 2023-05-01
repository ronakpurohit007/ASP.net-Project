<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="login/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <section class='login' id='login'>
  <div class='head'>
  <img src="car.png" width="120px">
  <h1 class='company'>Car Rental</h1>
  </div>
  <p class='msg'>Welcome back</p>
  <div class='form'>
    </div><asp:TextBox ID="txtuser" placeholder="Username" runat="server" 
            CssClass="text1"></asp:TextBox><asp:RequiredFieldValidator 
        ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter User name" 
            ControlToValidate="txtuser" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        
    <br><br>

<asp:TextBox ID="txtpass" placeholder='•••••••••' runat="server" CssClass="text1"></asp:TextBox><br>
        <asp:RequiredFieldValidator 
        ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Password" 
            ControlToValidate="txtpass" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
			
                    
  <br>
        <br>

<asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn-10" 
            Height="35px" Width="72px"></asp:Button>
            <br /><br />

  <a href="login/forgotpass.aspx" class='forgot'>Forgot?</a><br />
  <a href="../login%201/adminLogin.aspx" class='forgot'>Admin Login!</a><br />
  <a href="login/singin.aspx" class='forgot'>create new account!</a>
  <div><center><asp:Label ID="lblerror" runat="server" ForeColor="Red" Width="120px"></asp:Label>
      </center></div>
    </form>
    </form>
    </div>
</section>

    
    </div>
    </form>
</body>
</html>
