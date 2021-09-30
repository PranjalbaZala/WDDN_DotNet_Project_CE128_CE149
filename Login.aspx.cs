using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace BookStore
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BookstoreDB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from UserDetails where Username=@uname and Password=@pwd", con);
                cmd.Parameters.AddWithValue("@uname", txtUname1.Text);
                cmd.Parameters.AddWithValue("@pwd", txtPass1.Text);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    Session["Username"] = txtUname1.Text;
                    Response.Redirect("AfterLogin.aspx");
                }
                else
                {
                    Response.Write("<script> alert('Invalid Username or Password'); </script>");
                }
                con.Close();
            }
            
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
        }
    }
}