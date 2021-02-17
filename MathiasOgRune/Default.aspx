<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MathiasOgRune.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server"> 
        <div>
            <h2>Login Page</h2>
            <div id="login">
                <asp:TextBox ID="TextBoxUsername" runat="server" placeholder="username"></asp:TextBox>
                <br />
                <asp:TextBox ID="TextBoxPassword" runat="server" placeholder="password"></asp:TextBox>
                <asp:Button ID="ButtonLogin" runat="server" Text="Continue" OnClick="ButtonLogin_Click" />
            </div>
            <asp:Label ID="LabelTrue" runat="server" Text="Login succeded" Visible="false"></asp:Label>
            <asp:Label ID="LabelFalse" runat="server" Text="Login Failed" Visible="false"></asp:Label>
        </div>
    </form>
</body>
</html>
