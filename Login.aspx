<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="Login.aspx.cs" Inherits="BookStore.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/Custom.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="centerpage">
            <h1>Login Form</h1>
            <asp:TextBox ID="txtUname1" runat="server" CssClass="class2" placeholder="Enter Your Username"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RequiredFieldValidatorUname" runat="server" ErrorMessage="<br/>Please Enter Username<br/>" Cssclass="text-danger" ControlToValidate="txtUname1" ForeColor="Red"></asp:RequiredFieldValidator>
            
            <asp:TextBox ID="txtPass1" runat="server" TextMode="Password" CssClass="class2" placeholder="Enter Your Password"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ErrorMessage="<br/>Please Enter Password" Cssclass="text-danger" ControlToValidate="txtPass1" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="class1" OnClick="Button1_Click"/>
            <div>OR</div>
            <asp:Button ID="btnSignUp" runat="server" Text="SignUp" CssClass="class1" OnClick="btnSignUp_Click" CausesValidation="false" />
        </div>
        
    </form>
</body>
</html>
