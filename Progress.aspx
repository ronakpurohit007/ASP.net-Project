<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Progress.aspx.cs" Inherits="Progress" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    - var texts = ['W', 'e', 'l', 'c', 'o', 'm', 'e', ': )'];
- var number_of_particle = 12;

- for (var i = 0; i < texts.length; i++)
  .background(class="background" + i)
.criterion
  - for (var i = 0; i < texts.length; i++)
    .text(class='text' + i) #{texts[i]}
  - for (var i = 0; i < texts.length; i++)
    .frame(class='frame' + i)
  - for (var i = 0; i < texts.length; i++)
    - for (var j = 0; j < number_of_particle; j++)
      .particle(class="particle" + i + j)
    </div>
    </form>
</body>
</html>
