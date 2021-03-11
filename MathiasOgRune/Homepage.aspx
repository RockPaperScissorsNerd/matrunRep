<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="MathiasOgRune.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Homepage</title>
    <link rel="stylesheet" href="LoggedinStyle.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="navbar">
            <a href="Homepage.aspx">
                <span>Homepage</span>
            </a>
        </div>
        <div class="gamediv">
            <img src="media/rps.png" />
            <br />
            <span>Rock paper scissors</span>
        </div>
    </form>
</body>
</html>