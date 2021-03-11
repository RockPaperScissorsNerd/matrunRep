<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="MathiasOgRune.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign up</title>
    <link rel="stylesheet" href="Style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="register">
            <h2 style="margin-bottom: 15px;">Sign up</h2>
            <asp:TextBox ID="TextBoxSignUpUsername" placeholder="username" runat="server" CssClass="inpu"></asp:TextBox>
            <div id="signupnousernameentered" class="error" visible="false" runat="server">
                <span>Enter a username</span>
            </div>
            <br />
            <br />
            <asp:TextBox ID="TextBoxSignUpPassword"  placeholder="password" runat="server" CssClass="inpu"></asp:TextBox>
            <div id="signupnopasswordentered" class="error" visible="false" runat="server">
                <span>Enter password</span>
            </div>
            <br />
            <br />
            <asp:TextBox ID="TextBoxSignUpPasswordRepeat"  placeholder="repeat password" runat="server" CssClass="inpu"></asp:TextBox>
            <div id="signupnorepeatentered" class="error" visible="false" runat="server">
                <span>Repeat password</span>
            </div>
            <div id="UserExists" runat="server" class="error" visible ="false">
                <span>This username is taken</span>
            </div>
            <br />
            <br />
            <asp:Button ID="ButtonSignUp" runat="server" Text="Continue" CssClass="butt" OnClick="ButtonSignUp_Click"/>
        </div>
        <a href="Default.aspx">Already have an account? Click here!</a>
    </form>
</body>
</html>
