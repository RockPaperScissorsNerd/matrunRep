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
            <ul style="display: inline-flex;">
                <a id="homepageLink" href="Homepage.aspx">
                    <i class="fa fa-home"></i>
                </a>

                <div id="signout">
                    <asp:ImageButton src="media/signout.jpg" ID="ImageButtonSignOut" runat="server" OnClick="ImageButtonSignOut_Click"/>
                </div>
            </ul>
        </div>
        <div id="gamecontainer">
            <table>
                <tr>
                    <img src="media/rps.png" />
                    <span>Rock Paper Scissors</span>
                </tr>
                <tr>
                    <img src="media/rps.png" />
                    <span>Rock Paper Scissors</span>
                </tr>
                <tr>
                    <img src="media/rps.png" />
                    <span>Rock Paper Scissors</span>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>