<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MathiasOgRune.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log In</title>
    <link rel="stylesheet" href="Style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="login">
            <h2>Login Page</h2>
            <asp:TextBox ID="TextBoxUsername" runat="server" placeholder="username" CssClass="inpu"></asp:TextBox>
            <div id="nousernameentered" class="error" visible="false" runat="server">
                <span>Enter a username.</span>
            </div>
            <br />
            <br />
            <asp:TextBox ID="TextBoxPassword" runat="server" placeholder="password" CssClass="inpu"></asp:TextBox>
            <div id="nopasswordentered" class="error" visible="false" runat="server">
                    <p>Enter Password.</p>
            </div>
            <br />
            <br />
            <asp:Button ID="ButtonLogin" runat="server" Text="Continue" OnClick="ButtonLogin_Click" CssClass="butt" />
        </div>
    </form>
</body>
</html>
