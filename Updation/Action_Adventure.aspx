<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Action_Adventure.aspx.cs" Inherits="OnlineBookStoreProject.Action_Adventure" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-right: 11px;
        }

        tr, td, th{
            padding: 5px;
            font-size:18px;
            text-align:center;
        }

        .header {
            background-color: #646464; /*Header Background color Grey*/
            font-family: Arial;
            color: White;
            border: none 0px transparent;
            height: 25px;
            text-align: center;
            font-size: 16px;
        }

        .rows {
            background-color: #fff;
            font-family: Arial;
            font-size: 14px;
            color: #000;
            min-height: 25px;
            text-align: left;
            border: none 0px transparent;
        }

        .selectedrow {
            background-color: #ff8000;
            font-family: Arial;
            color: #fff;
            font-weight: bold;
            text-align: left;
        }

        .mydatagrid a /** FOR THE PAGING ICONS **/ {
            background-color: Transparent;
            padding: 5px 5px 5px 5px;
            color: #fff;
            text-decoration: none;
            font-weight: bold;
            width:contain;
        }

        .mydatagrid span /** FOR THE PAGING ICONS CURRENT PAGE INDICATOR **/ {
            background-color: #c9c9c9;
            color: #000;
            padding: 5px 5px 5px 5px;
        }

        .pager {
            background-color: #646464;
            font-family: Arial;
            color: White;
            height: 30px;
            text-align: left;
        }

        .mydatagrid td {
            padding: 5px;
        }

        .mydatagrid th {
            padding: 5px;
        }

        .mydatagrid{
            width:100%;
            margin-left:150px;
            text-align:center;
        }
    </style>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <link href="css/Custom.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
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
                            <li class="active"><a href="Default.aspx">Home</a></li>
                            <li><a href="Cart.aspx">Cart</a></li>
                            <li><a href="#">Orders</a></li>
                            <li><a href="Default.aspx">Logout</a> </li>
                            <li><a href="#">About</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--Category Section Heading -->
            <h1 style="width: 800px;margin-top: 100px;margin-left:350px;color:brown;margin-bottom:30px;"><b>All Types Of Book Genres Are Available</b></h1>
            <hr/>
            <asp:GridView ID="GridView1" runat="server" CssClass="mydatagrid" AutoGenerateColumns="false" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True" OnPageIndexChanging="OnPageIndexChanging">
                <Columns>
                    <asp:BoundField DataField="BookNo" HeaderText="BookNo"/>
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Category" HeaderText="Category" />
                    <asp:BoundField DataField="Price" HeaderText="Price" />
                    <asp:HyperLinkField Text="Add to your WishList" DataNavigateUrlFields="BookNo,Name,Category,Price" ControlStyle-ForeColor="Brown"
                        DataNavigateUrlFormatString="Cart.aspx?BookNo={0}&Name={1}&Category={2}&Price={3}" />
                </Columns>
            </asp:GridView>
        </div>
         <!--Footer Content Starts Here-->
        <hr />
        <footer>
            <div class="container " style="margin-bottom:0px;">

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
