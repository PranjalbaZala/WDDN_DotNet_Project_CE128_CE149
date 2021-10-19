using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineBookStoreProject
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtsignup_Click(object sender, EventArgs e)
        {
            if(isformvalid())
            {
                SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=BookstoreDB;Integrated Security=True");
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Insert into tblUsers(Username,Email,Password,Phone)Values ('" + txtUname.Text + "','" + txtEmail.Text + "','" + txtPass.Text + "','" + txtPhone.Text + "')", con);

                    cmd.ExecuteNonQuery();

                    Response.Write("<script>alert('Registration Successfully Done, Please login now');</script>");
                    clr();
                    con.Close();
                }
                Response.Redirect("~/SignIn.aspx");
            }
            else
            {
                Response.Write("<script>alert('Registration Failed,Please try again');</script>");
            }

        }

        private bool isformvalid()
        {
            if ((txtUname.Text == "") || (txtPass.Text == "") || (txtCPass.Text == "") || (txtEmail.Text == "") || (txtPhone.Text == ""))
            {
                Response.Write("<script> alert('Please provide all details'); </script>");
                return false;
            }
            else if (txtPass.Text != txtCPass.Text)
            {
                Response.Write("<script> alert('Password and confirm password not matching'); </script>");
                return false;
            }
            return true;
        }

        private void clr()
        {
            txtUname.Text = string.Empty;
            txtPass.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtPhone.Text = string.Empty;
            txtCPass.Text = string.Empty;
        }
    
    }
}