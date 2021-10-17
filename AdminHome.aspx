<%@ Page Language="C#" AutoEventWireup="true" Inherits="BookStore.AdminHome" Codebehind="AdminHome.aspx.cs" %>

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
    <div class="centerpage">
        <h1><asp:Label ID="lblSuccess" runat="server" ></asp:Label></h1>
        <hr />
        <asp:HiddenField ID="hfBookID" runat="server" />
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="BookNo"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtBookNo" runat="server" CssClass="class4"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtName" runat="server" CssClass="class4"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Category"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtCategory" runat="server" CssClass="class4"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Price"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtPrice" runat="server" CssClass="class4"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    
                </td>
                <td colspan="2">    
                    <br />
                    <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="class5" OnClick="btnSave_Click"  />
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="class5" OnClick="btnDelete_Click" />
                    <br />
                    
                </td>
            </tr>
            <tr>
                <td>
                    
                </td>
                <td colspan="2">
                    <asp:Label ID="lblSuccessMessage" runat="server" Text="" ForeColor="Green"></asp:Label>
                </td>
                <tr>
                <td>
                    
                </td>
                <td colspan="2">
                    <asp:Label ID="lblErrorMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            </tr>
        </table>
        <br />
        <asp:GridView ID="gvBook" runat="server" CssClass="mydatagrid" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="BookNo" HeaderText="BookNo" />
                <asp:BoundField DataField="Name" HeaderText="Name" />
                <asp:BoundField DataField="Category" HeaderText="Category" />
                <asp:BoundField DataField="Price" HeaderText="Price" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%# Eval("BookID") %>' OnClick="lnk_OnClick" >View</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
