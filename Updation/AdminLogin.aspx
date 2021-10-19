<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="OnlineBookStoreProject.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <link href="css/Custom.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body style="background-image:url(AdminImage/admin_img.png);">
    <form id="form1" runat="server" style="margin-top:140px;text-align:center;">
        <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container ">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="Default.aspx">
                            <span>
                                <img src="Icon/logo.png" alt="OnlineStore" height="40" />
                            </span>OnlineBookStore
                        </a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="Default.aspx">Home</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        <div class="centerpage">

            <h1><b>Admin Login Form</b></h1>
            <div style="margin-top:50px;"></div>
            <!--TextBox UserName -->
            <asp:TextBox ID="txtUname1" runat="server"  placeholder="Enter Your Username"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RequiredFieldValidatorUname" runat="server" ErrorMessage="<br/>Please Enter Username<br/>" Cssclass="text-danger" ControlToValidate="txtUname1" ForeColor="Red"></asp:RequiredFieldValidator>
            
            <!-- Password-->
            <asp:TextBox ID="txtPass1" runat="server" TextMode="Password" placeholder="Enter Your Password"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ErrorMessage="<br/>Please Enter Password" Cssclass="text-danger" ControlToValidate="txtPass1" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="Button1_Click" CssClass="btn btn-success"/>
         </div>
        <br /><br /><br /><br /><br /><br /><br /><br /><br />
        <!--Footer Content Starts Here-->
        <hr />
        <footer>
            <div class="container ">

                <p class="pull-right "><a href="#">&nbsp; &nbsp; Back to top &nbsp; &nbsp;</a></p>
                <p class="pull-right "><a href="#">Admin Login  </a></p>
                <p>
                    &copy;&nbsp; &nbsp;2021 OnlineBookStore.co.in  <a href="Default.aspx">&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;Home&nbsp;&nbsp; &nbsp;| </a>
                    <a href="#">&nbsp;&nbsp; &nbsp;About&nbsp;&nbsp; &nbsp; | </a><a href="#">&nbsp;&nbsp; &nbsp;Contact&nbsp;&nbsp; &nbsp; | </a><a href="#">&nbsp;&nbsp; &nbsp;Products&nbsp;&nbsp; &nbsp;</a>
                </p>
            </div>

        </footer>
        <!-- Footer Content Ends Here -->
    </form>
</body>
</html>
