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
            <asp:LinkButton ID="signout" runat="server" OnClick="LinkButtonSignOut_Click">
                <i class="fa fa-sign-out">
                    <span style="font-size: 20px; font-family: Verdana;">Sign Out</span>
                </i>
            </asp:LinkButton>
        </div>

        <div id="gamelist" style="margin: 30px;">
            <div class="gamelink" style="width: 20%;">
                <img src="media/rps.png" />
                <br />
                <span>Rock Paper Scissors</span>
            </div>

            <div class="gamelink">
                <img src="media/rps.png" />
                <br />
                <span>Snake</span>
            </div>

            <div class="gamelink">
                <img src="media/rps.png" />
                <br />
                <span>Tic Tac Toe</span>
            </div>
        </div>
    </form>
</body>
</html>