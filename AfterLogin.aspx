<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="AfterLogin.aspx.cs" Inherits="BookStore.AfterLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/Custom.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblSuccess" runat="server" ></asp:Label>
            <asp:Button ID="btnLogout"  runat="server" Text="Logout" CssClass="class3" OnClick="btnLogout_Click"/>
        </div>
    </form>
</body>
</html>
