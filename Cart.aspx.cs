using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineBookStoreProject
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Request.QueryString["BookNo"];
            Label2.Text = Request.QueryString["Name"];
            Label3.Text = Request.QueryString["Category"];
            Label4.Text = Request.QueryString["Price"];
            Label5.Text = Request.QueryString["Price"];
        }

        protected void BtnOrder_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Order Placed Successfully :) ')</script>");
        }
    }
}