<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="OnlineBookStoreProject.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>

    <link href="css/Custom.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
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
                            <li class="active"><a href="SignUp.aspx">SignUp</a> </li>
                            <li><a href="SignIn.aspx">SignIn</a> </li>
                            <li><a href="#">About</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- Headers of Website ends -->
        </div>

        <!-- Sign-up Code starts Here -->
        <div class="container" style="margin-top: 60px;">
            <div class="form-horizontal">
                <h2>Registration Form</h2>
                <hr />
                <div class="center-page">
                    <label class="col-xs-11">UserName:</label>
                    <div class="col-xs-11">
                        <asp:TextBox ID="txtUname" runat="server" Class="form-control" Placeholder="Enter your name"></asp:TextBox>
                    </div>

                    <label class="col-xs-11">Email:</label>
                    <div class="col-xs-11">
                        <asp:TextBox ID="txtEmail" runat="server" Class="form-control" Placeholder="Enter your email"></asp:TextBox>
                    </div>

                    <label class="col-xs-11">Password:</label>
                    <div class="col-xs-11">
                        <asp:TextBox ID="txtPass" runat="server" Class="form-control" Placeholder="Enter your password"></asp:TextBox>
                    </div>

                    <label class="col-xs-11">Confirm Password:</label>
                    <div class="col-xs-11">
                        <asp:TextBox ID="txtCPass" runat="server" Class="form-control" Placeholder="Enter your confirm password"></asp:TextBox>
                    </div>

                    <label class="col-xs-11">Phone Number:</label>
                    <div class="col-xs-11">
                        <asp:TextBox ID="txtPhone" runat="server" Class="form-control" Placeholder="Enter your phone number"></asp:TextBox>
                    </div>

                    <div class="col-xs-11" style="margin-top: 20px;">
                        <asp:Button ID="txtsignup" Class="btn btn-success" runat="server" Text="Sign-up" OnClick="txtsignup_Click" />
                    </div>
                </div>
            </div>
        </div>
        <!-- Sign-up Code ends Here -->

        <!--Footer Content Starts Here-->

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
