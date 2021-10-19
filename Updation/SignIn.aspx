<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="OnlineBookStoreProject.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <link href="css/Custom.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
                                <img src="Icon/Logo.png" alt="OnlineStore" height="40" />
                            </span>OnlineBookStore
                        </a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="Default.aspx">Home</a></li>
                            <li><a href="SignUp.aspx">SignUp</a> </li>
                            <li class="active"><a href="SignIn.aspx">SignIn</a> </li>
                            <li><a href="#">About</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <!--Sign in starts here -->
        <div class="container" style="margin-top: 60px;">
            <div class="form-horizontal">
                <h2>Login Form</h2>
                <hr/>
                <div class="form-group">
                    <asp:Label ID="Label1" CssClass="col-md-2 control-label" runat="server" Text="UserName"></asp:Label>
                    <div class="col-md-3 ">
                        <asp:TextBox ID="txtUsername" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" ErrorMessage="Please Enter UserName" ControlToValidate="txtUsername" ForeColor="Red" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <asp:Label ID="Label3" CssClass="col-md-2 control-label" runat="server" Text="Password"></asp:Label>
                    <div class="col-md-3 ">
                        <asp:TextBox ID="txtPass" CssClass="form-control" runat="server" TextMode="Password" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ErrorMessage="Please Enter Password" ControlToValidate="txtPass" ForeColor="Red" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>


                <div class="form-group">
                    <div class="col-md-2 "></div>
                    <div class="col-md-6">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-success" OnClick="btnLogin_Click" OnClientClick="btnLogin_Click" />
                       <b> <asp:HyperLink ID="HyperLink1" runat="server" style="margin-left:20px;" NavigateUrl="~/SignUp.aspx">Sign-Up</asp:HyperLink></b>

                    </div>
                </div>
            </div>
        </div>
        <!--Sign in ends here -->

        <!--Footer Content Starts Here-->
        <hr />
        <footer class="footer-pos">
            <div class="container ">

                <p class="pull-right "><a href="#">&nbsp; &nbsp; Back to top &nbsp; &nbsp;</a></p>
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
