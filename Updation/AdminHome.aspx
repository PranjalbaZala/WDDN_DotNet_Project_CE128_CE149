<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="OnlineBookStoreProject.AdminHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Home Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <link href="css/Custom.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        tr, td, th {
            padding: 5px;
            font-size: 18px;
            text-align:center;
        }

        .header {
            background-color: #646464;
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

            .rows:hover {
                background-color:forestgreen;
                font-family: Arial;
                color: #fff;
                text-align: left;
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
        }

            .mydatagrid a:hover /** FOR THE PAGING ICONS HOVER STYLES**/ {
                background-color: White;
                color: White;
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
           margin-left:0px;
           border-spacing:15px;  
           width:100%;
        }
    </style>
</head>
<body style="background-image:url(AdminImage/admin_img.png);">
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
                                <img src="Icon/Logo.png" alt="OnlineStore" height="40" />
                            </span>OnlineBookStore
                        </a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="Default.aspx">Home</a></li>
                            <li><a href="AdminLogin.aspx">Logout</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        <div class="centerpage" style="margin-top: 60px;">
            <h1>
                <asp:Label ID="lblSuccess" runat="server"></asp:Label></h1>
            <hr />
            <!--Hidden Home Field for Book ID-->
            <asp:HiddenField ID="hfBookID" runat="server" />
            <table style="margin-left:400px;">
                <tr>
                    <!--Book Number -->
                    <th>
                        <asp:Label ID="Label1" runat="server" Text="BookNo"></asp:Label></th>
                    <td colspan="2">
                        <asp:TextBox ID="txtBookNo" runat="server" CssClass="class4"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <!--Book Name -->
                    <th>
                        <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label></th>
                    <td colspan="2">
                        <asp:TextBox ID="txtName" runat="server" CssClass="class4"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <!-- Book Category-->
                    <th>
                        <asp:Label ID="Label3" runat="server" Text="Category"></asp:Label>
                    </th>
                    <td colspan="2">
                        <!--<select id="txtCategory">
                            <option>Action And Adventure</option>
                            <option>Classics</option>
                            <option>Comics</option>
                            <option>Fantasy</option>
                            <option>Horror</option>
                            <option>Historical</option>
                        </select> -->
                        <asp:TextBox ID="txtCategory" runat="server" CssClass="class4"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <!-- Book Price-->
                    <th>
                        <asp:Label ID="Label4" runat="server" Text="Price"></asp:Label></th>
                    <td colspan="2">
                        <asp:TextBox ID="txtPrice" runat="server" CssClass="class4"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">
                        <br />
                        <!--Save and Delete Button -->
                        <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="class5" OnClick="btnSave_Click" />
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="class5" OnClick="btnDelete_Click" />
                        <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="class5" OnClick="btnClear_Click" />
                        <br />

                    </td>
                </tr>
                <tr>
                    <td></td>
                    <!--Success Message -->
                    <td colspan="2">
                        <asp:Label ID="lblSuccessMessage" runat="server" Text="" ForeColor="Green"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <!--Error Message -->
                    <td colspan="2">
                        <asp:Label ID="lblErrorMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <!-- Tabel that displays the Book Details-->

            <asp:GridView ID="gvBook" runat="server" CssClass="mydatagrid" AutoGenerateColumns="false" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True" OnPageIndexChanging="OnPageIndexChanging">
                <Columns>
                    <asp:BoundField DataField="BookNo" HeaderText="BookNo" />
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Category" HeaderText="Category" />
                    <asp:BoundField DataField="Price" HeaderText="Price" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkView" Style="color: black;" runat="server" CommandArgument='<%# Eval("BookID") %>' OnClick="lnk_OnClick">View</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>
            </asp:GridView>
        </div>
        <!--Footer Content Starts Here-->
        <div></div>
        <hr />
        <footer>
            <div class="container">

                <p class="pull-right "><a href="#">&nbsp; &nbsp; Back to top &nbsp; &nbsp;</a></p>
                <p class="pull-right "><a href="AdminLogin.aspx">Admin Login  </a></p>
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
