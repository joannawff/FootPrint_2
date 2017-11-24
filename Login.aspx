<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登录</title>
    <LINK href="images/Default.css" type=text/css rel=stylesheet>
    <LINK href="images/xtree.css" type=text/css rel=stylesheet>
    <LINK href="images/User_Login.css" type=text/css rel=stylesheet>
</head>
<body id=userlogin_body>
    <form id="form1" runat="server">
        <DIV id=user_login>
<DL>
  <DD id=user_top>
  <UL>
    <LI class=user_top_l></LI>
    <LI class=user_top_c></LI>
    <LI class=user_top_r></LI></UL>
  <DD id=user_main>
  <UL>
    <LI class=user_main_l></LI>
    <LI class=user_main_c>
    <DIV class=user_main_box>
    <UL>
      <LI class=user_main_text>用户名： </LI>
      <LI class=user_main_input><asp:TextBox class=TxtUserNameCssClass id=TxtUserName 
      maxLength=20 name=TxtUserName runat="server"></asp:TextBox> </LI></UL>
    <UL>
      <LI class=user_main_text>密 码： </LI>
      <LI class=user_main_input><asp:TextBox class=TxtPasswordCssClass id=TxtPassword 
      type=password name=TxtPassword runat="server"></asp:TextBox> </LI></UL>
    </DIV></LI>
    <LI class=user_main_r>
        <asp:ImageButton runat="server" class=IbtnEnterCssClass id=IbtnEnter 
    style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px" type=image src="images/user_botton.gif" name=IbtnEnter OnClick="login_Click" /> </LI></UL>
  <DD id=user_bottom>
  <UL>
    <LI class=user_bottom_l></LI>
    <LI class=user_bottom_c><SPAN style="MARGIN-TOP: 40px"></SPAN> </LI>
    <LI class=user_bottom_r></LI></UL></DD></DL></DIV><SPAN id=ValrUserName 
style="DISPLAY: none; COLOR: red"></SPAN><SPAN id=ValrPassword 
style="DISPLAY: none; COLOR: red"></SPAN><SPAN id=ValrValidateCode 
style="DISPLAY: none; COLOR: red"></SPAN>
<DIV id=ValidationSummary1 style="DISPLAY: none; COLOR: red"></DIV>

<DIV></DIV>
    </form>
</body>
</html>
