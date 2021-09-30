<%@ Page Language="C#" AutoEventWireup="true" Inherits="BookStore.signup" Codebehind="signup.aspx.cs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Signup</title> 
    <link href="css/Custom.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="centerpage">
            <h1>Registeration Form</h1>
            <asp:TextBox ID="txtUname" runat="server" CssClass="class2" placeholder="Your Name"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtEmail" runat="server" CssClass="class2" placeholder="Your Email"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtPass" runat="server" TextMode="Password" CssClass="class2" placeholder="Your Password"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtCPass" runat="server" TextMode="Password" CssClass="class2" placeholder="Re-enter Password"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtPhone" runat="server" CssClass="class2" placeholder="Your Phone Number"></asp:TextBox>
            <br />
            <asp:Button ID="txtsignup" runat="server" Text="Sign Up" CssClass="class1" OnClick="txtsignup_Click1" />
            <div>OR</div>
            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="class1" OnClick="btnLogin_Click"/>
        </div>
    </form>
</body>
</html>
