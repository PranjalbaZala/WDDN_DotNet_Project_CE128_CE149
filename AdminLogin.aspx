<%@ Page Language="C#" AutoEventWireup="True" CodeFile="AdminLogin.aspx.cs" Inherits="BookStore.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <link href="css/Custom.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
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
                            <li><a href="#">Categories</a> </li>
                            <li><a href="#">Cart</a></li>
                            <li><a href="#">Orders</a></li>
                            <li><a href="Login.aspx">Sign in</a> </li>
                            <li><a href="About.aspx">About</a> </li>
                        </ul>
                    </div>
                </div>
            </div>
        <div class="centerpage">

            <h1>Admin Login Form</h1>
            <asp:TextBox ID="txtUname1" runat="server" CssClass="class2" placeholder="Enter Your Username"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RequiredFieldValidatorUname" runat="server" ErrorMessage="<br/>Please Enter Username<br/>" Cssclass="text-danger" ControlToValidate="txtUname1" ForeColor="Red"></asp:RequiredFieldValidator>
            
            <asp:TextBox ID="txtPass1" runat="server" TextMode="Password" CssClass="class2" placeholder="Enter Your Password"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ErrorMessage="<br/>Please Enter Password" Cssclass="text-danger" ControlToValidate="txtPass1" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="class1" OnClick="Button1_Click"/>
         </div>
        <br /><br /><br /><br /><br /><br /><br /><br /><br />
        <!--Footer Content Starts Here-->
        <hr />
        <footer>
            <div class="container ">

                <p class="pull-right "><a href="#">&nbsp; &nbsp; Back to top &nbsp; &nbsp;</a></p>
                <p class="pull-right "><a href="AdminHome.aspx">Admin Login  </a></p>
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
