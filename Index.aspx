<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<frameset cols="*" rows="136, *" id="frame_main"  border="0">
    <frame src="UI/header.aspx" noresize="noresize" name="header">
    
    <frameset cols="150, *">
    	<frame src="UI/menu.aspx" name="menu" />
    	<frame src="Project.aspx" name="main">
    </frameset>
</frameset>

<noframes><body>
</body>
</noframes>
</html>
