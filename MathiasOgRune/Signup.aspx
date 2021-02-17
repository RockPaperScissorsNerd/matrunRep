<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="MathiasOgRune.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Sign up</h2>
        <div>
            <asp:TextBox ID="TextBoxSignUpUsername" placeholder="Username" runat="server"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBoxSignUpPassword"  placeholder="Password" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="ButtonSignUp" runat="server" Text="Continue" />
        </div>
    </form>
</body>
</html>
