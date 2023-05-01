<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>

    <link href="css/btn.css" rel="stylesheet" type="text/css" />
    <link href="css/loginc.css" rel="stylesheet" type="text/css" />
    <link href="css/textfill.css" rel="stylesheet" type="text/css" />
    <style type="text/css">

h1 { font-size: 1em; }

h1 {
margin-bottom: 10px;
}
h1, p {
margin-bottom: 10px;
}
h1 { font-size: 1em; }
strong {
font-weight: bold;
}
    strong {
font-weight: bold;
}
  .Txtstyle3[type=text], textarea {         
      transition: all 0.40s ease-in-out;         
      outline: #FEAE59;         
      border: 1px solid #FE59C9;         
  }         
  .bordereffect
{
	color: #2E8B57;
	background-color: transparent;
	padding: 10px;
	border: solid 3px #357EC7;
	font-size: 20px;
	font-weight: lighter;
	font-family: Consolas;
	webkit-border-radius: 0px 0px 0px 0px;
	-moz-border-radius: 0px 0px 0px 0px;
	border-radius: 0px 0px 0px 0px;
}
.m1
{background-color:#D6F7FB;
 
    }
.bordereffect
{
	color: #1abc9c;
	background-color: Transparent;
	width: 340px;
	padding: 10px;
	border: solid 2px #1abc9c;
	font-size: 20px;
	font-weight: lighter;
	font-family: Consolas;
	webkit-border-radius: 0px 0px 0px 0px;
	-moz-border-radius: 0px 0px 0px 0px;
	border-radius: 0px 0px 0px 0px;
}

        .style1
        {
            width: 820px;
        }

        .style2
        {
            width: 820px;
            height: 52px;
        }

    </style>
</head>
<body background="img/img1.jpg">
    <h1 align="center" class="m1">
        <align=center><strong>Welcome</strong> Please login.</h1>
        
    <fieldset class="m1">
        <form id="form1" runat="server">
        <table align="center" class="loginc">
            <tr>
                <td class="style1">
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:TextBox ID="txtname" runat="server" CssClass="Txtstyle3" Width="337px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtname" ErrorMessage="*Please Enter Your Name" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:TextBox ID="txtemail" runat="server" CssClass="Txtstyle3" Width="337px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtemail" ErrorMessage="*Please Enter Your Email" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ControlToValidate="txtemail" 
                        ErrorMessage="Input value is an invalid email address!" ForeColor="Red" 
                        ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label4" runat="server" Text="Date Of Birth "></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:TextBox ID="txtdob" runat="server" CssClass="Txtstyle3" Width="337px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtdob" ErrorMessage="*Please Enter Your BirthDate" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="txtdob" 
                        ErrorMessage="Please Enter a valid date in the format (mm/dd/yyyy)" 
                        ForeColor="Red" 
                        ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label5" runat="server" Text="UserName"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:TextBox ID="txtuser" runat="server" CssClass="Txtstyle3" Width="337px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtuser" ErrorMessage="*Please Enter Your Username" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:TextBox ID="txtpass" runat="server" CssClass="Txtstyle3" Width="337px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtpass" ErrorMessage="*Please Enter Your Password" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtpass" 
                        ErrorMessage="Password must be 8-10 characters long with at least one numeric,one upper case character and one special character." 
                        ForeColor="Red" 
                        ValidationExpression="(?=^.{8,10}$)(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&amp;*()_+}{&quot;:;'?/&gt;.&lt;,])(?!.*\s).*$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label2" runat="server" Text="Mobile"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:TextBox ID="txtmobile" runat="server" CssClass="Txtstyle3" Width="337px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtmobile" ErrorMessage="*Please Enter Your Mobile Number" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txtmobile" 
                        ErrorMessage="The PhoneNumber field is not a valid phone number" 
                        ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                </td>
            </tr></br>
           </br <tr>
                <td class="style1">
                    <asp:Button ID="btnRegistar" runat="server" CssClass="bordereffect" Text="Registar" 
                        Width="343px" /> </br></br>
                        <asp:Button ID="btnLogin" runat="server" CssClass="bordereffect" Text="Login" 
                        Width="343px" />
                    <br />
                </td>
            </tr>
        </table>
        </form>
    </fieldset>
</body>
</html>
