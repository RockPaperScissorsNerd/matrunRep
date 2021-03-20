<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RPS.aspx.cs" Inherits="MathiasOgRune.RPS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rock Paper Scissors</title>
    <link rel="stylesheet" href="RPSStyle.css" />
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
        <div id="gamecontainer">
            <img style="height: 400px; width: 400px;" src="media/rps.png"/>
        </div>
    </form>
</body>
</html>
