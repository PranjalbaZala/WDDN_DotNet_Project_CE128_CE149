using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineBookStoreProject
{
    public partial class AdminHome : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BookstoreDB"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AUsername"] != null)
            {
                lblSuccess.Text = "Welcome to Admin's Home Page";

                FillGridView();

            }
            else
            {
                Response.Redirect("AdminLogin.aspx");
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand cmd = new SqlCommand("BookCreateOrUpdate", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@BookID", (hfBookID.Value == "" ? 0 : Convert.ToInt32(hfBookID.Value)));
            cmd.Parameters.AddWithValue("@BookNo", txtBookNo.Text.Trim());
            cmd.Parameters.AddWithValue("@Name", txtName.Text.Trim());
            cmd.Parameters.AddWithValue("@Category", txtCategory.Text.Trim());
            cmd.Parameters.AddWithValue("@Price", txtPrice.Text.Trim());
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            string bookID = hfBookID.Value;
            Clear();
            if (bookID == "")
                lblSuccessMessage.Text = "Saved Successfully";
            else
                lblSuccessMessage.Text = "Updated Successfully";
            FillGridView();
        }
        public void Clear()
        {
            hfBookID.Value = "";
            txtBookNo.Text = txtName.Text = txtCategory.Text = txtPrice.Text = "";
            lblSuccessMessage.Text = lblErrorMessage.Text = "";
            btnSave.Text = "Save";
            //btnDelete.Enabled = false;
        }

        public void btnClear_Click(object sender, EventArgs e)
        {
            txtBookNo.Text = txtName.Text = txtCategory.Text = txtPrice.Text = "";
        }

        private void FillGridView()
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("BookView", con);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            con.Close();
            gvBook.DataSource = dtbl;
            gvBook.DataBind();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand sqlCmd = new SqlCommand("BookDeleteByID", con);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@BookID", Convert.ToInt32(hfBookID.Value));
            sqlCmd.ExecuteNonQuery();
            con.Close();
            Clear();
            FillGridView();
            lblSuccessMessage.Text = "Deleted Successfully";
        }

        protected void lnk_OnClick(object sender, EventArgs e)
        {
            int bookID = Convert.ToInt32((sender as LinkButton).CommandArgument);
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("BookViewByID", con);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqlDa.SelectCommand.Parameters.AddWithValue("@BookID", bookID);
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);

            con.Close();

            hfBookID.Value = bookID.ToString();
            txtBookNo.Text = dtbl.Rows[0]["BookNo"].ToString();
            txtName.Text = dtbl.Rows[0]["Name"].ToString();
            txtCategory.Text = dtbl.Rows[0]["Category"].ToString();
            txtPrice.Text = dtbl.Rows[0]["Price"].ToString();
            btnSave.Text = "Update";
            //btnDelete.Enabled = true;
        }

        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvBook.PageIndex = e.NewPageIndex;
            gvBook.DataBind();
        }

    }
}