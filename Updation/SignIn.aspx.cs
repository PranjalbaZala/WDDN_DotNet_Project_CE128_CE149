using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace OnlineBookStoreProject
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=BookstoreDB;Integrated Security=True");
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblUsers where Username=@username and Password=@pwd", con);
                cmd.Parameters.AddWithValue("@username", txtUsername.Text);
                cmd.Parameters.AddWithValue("@pwd", txtPass.Text);

                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if(dt.Rows.Count!=0)
                {
                    Response.Redirect("~/Action_Adventure.aspx");
                }

                //Response.Write("<script>alert('Registration Successfully Done, Please login now');</script>");
                Clr();
                con.Close();
            }
        }

        private void Clr()
        {
            txtPass.Text = string.Empty;
            txtUsername.Text = string.Empty;
            txtUsername.Focus();
        }
    }
}