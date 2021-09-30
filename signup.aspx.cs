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
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }



        protected void txtsignup_Click1(object sender, EventArgs e)
        {
          

            if(isformvalid())
            {
                using(SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings ["BookstoreDB"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Insert into UserDetails(Username,Password,Email,Phone) Values('" + txtUname.Text + "','" + txtPass.Text + "','" + txtEmail.Text + "','" + txtPhone.Text + "')", con);
                    cmd.ExecuteNonQuery();
                    //Response.Write("<script> alert('Registration Successfully Done, Please login now'); </script>");
                    Response.Write("<script>alert('Registration Successfully Done, Please login now');</script>");
                    Server.Transfer("login.aspx");
                    con.Close();
                }
                //Response.Redirect("login.aspx");
            }
        }
        private bool isformvalid()
        {
            if((txtUname.Text=="") || (txtPass.Text == "") || (txtCPass.Text == "") || (txtEmail.Text == "") || (txtPhone.Text == ""))
            {
                Response.Write("<script> alert('Please provide all details'); </script>");
                return false;
            }
            else if(txtPass.Text!=txtCPass.Text)
            {
                Response.Write("<script> alert('Password and confirm password not matching'); </script>");
                return false;
            }
            return true;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}