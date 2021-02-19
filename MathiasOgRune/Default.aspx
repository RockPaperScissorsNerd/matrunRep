<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MathiasOgRune.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log In</title>
    <link rel="stylesheet" href="Style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="register">
            <h2 style="margin-bottom: 15px;">Login Page</h2>
            <asp:TextBox ID="TextBoxUsername" runat="server" placeholder="username" CssClass="inpu"></asp:TextBox>
            <div id="nousernameentered" class="error" visible="false" runat="server">
                <span>Enter a username.</span>
            </div>
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBoxPassword" runat="server" placeholder="password" CssClass="inpu"></asp:TextBox>
            <div id="nopasswordentered" class="error" visible="false" runat="server">
                <span>Enter Password.</span>
            </div>
            <div id="invalidLogin" class="error" visible="false" runat="server">
                <span>Wrong username or password.</span>
            </div>
            <br />
            <br />
            <br />
            <asp:Button ID="ButtonLogin" runat="server" Text="Continue" OnClick="ButtonLogin_Click" CssClass="butt" />
            <br />
        </div>
        <a style="text-align: center;" href="Signup.aspx">Don't have an account? Make one!</a>
    </form>
</body>
</html>
