<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="MathiasOgRune.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Homepage</title>
    <link rel="stylesheet" href="LoggedinStyle.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="navbar">
            <a id="homepageLink" href="Homepage.aspx">
                <i class="fa fa-home"></i>
            </a>
            <asp:ImageButton ID="ImageButtonSignOut" runat="server" CssClass="fa fa-sign-out" OnClick="ImageButtonSignOut_Click" />
        </div>
        <div id="gamecontainer">
            <div class="gamediv">
                <img src="media/rps.png" />
                <br />
                <span>Rock paper scissors</span>
            </div>
            <div class="gamediv">
                <img />
                <br />
                <span>geh</span>
            </div>
        </div>
    </form>
</body>
</html>