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
                <asp:LinkButton ID="signout" runat="server" OnClick="LinkButtonSignOut_Click"> <i class="fa fa-sign-out"><span style="font-size: 20px; font-family: Verdana;">Sign Out</span> </i></asp:LinkButton>
            </div>
        <div id="gamecontainer">
            <%--<img style="height: 400px; width: 400px;" src="media/rps.png"/>--%>

            <p>
                <asp:Label ID="GameTitle" runat="server" Text="Rock, Paper &amp; Scissors"></asp:Label>
            </p>
            <p>
                <asp:Label ID="RPSPicked" runat="server" Text="You picked: "></asp:Label>
            </p>

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:ImageButton ID="Rock" runat="server" ImageUrl="~/RPS images/Rock.png" OnClick="RPSPick" BorderStyle="None" Height="171px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="Paper" runat="server" ImageUrl="~/RPS images/Paper.png" style="margin-left: 22px" Width="187px" OnClick="RPSPick" BorderStyle="None" Height="171px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="Scissors" runat="server" ImageUrl="~/RPS images/Scissors.png" style="margin-left: 36px" Width="126px" OnClick="RPSPick" BorderStyle="None" Height="171px" />
            <br />
            <p>
                <asp:Label ID="BotPicked" runat="server" Text="Bot picked: "></asp:Label>
            </p>

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:ImageButton ID="BotRock" runat="server" ImageUrl="~/RPS images/Rock.png" BorderStyle="None" Height="171px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="BotPaper" runat="server" ImageUrl="~/RPS images/Paper.png" style="margin-left: 22px" Width="187px" BorderStyle="None" Height="171px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="BotScissors" runat="server" ImageUrl="~/RPS images/Scissors.png" style="margin-left: 36px" Width="126px" BorderStyle="None" Height="171px" />
            <br />
            <br />
            <br />
            
            <p>
                <asp:Label ID="GameResults" runat="server" Text="No results yet. "></asp:Label>
            </p>
        </div>
    </form>
</body>
</html>
