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

            <asp:Button ID="ButtonSignOut" CssClass="fa fa-sign-out" runat="server" Text="Sign Out" OnClick="ButtonSignOut_Click" />
        </div>
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
    </form>
</body>
</html>