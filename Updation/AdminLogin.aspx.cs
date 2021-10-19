using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineBookStoreProject
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if ((txtUname1.Text == "BookStore") && (txtPass1.Text == "1234"))
            {
                Session["AUsername"] = txtUname1.Text;
                Response.Redirect("AdminHome.aspx");
            }
            else
            {
                Response.Write("<script> alert('Invalid Username or Password'); </script>");
            }
        }

    }
}