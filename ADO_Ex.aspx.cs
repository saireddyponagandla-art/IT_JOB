using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Permissions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_JOB
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridData();
            }

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=saireddy_2005\\SQLEXPRESS;Initial Catalog=DP1;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into LoginDetails (username, password) values(@username, @password)", con);
            cmd.Parameters.AddWithValue("@username", txtusername.Text);
            cmd.Parameters.AddWithValue("@password", txtpassword.Text);
            cmd.ExecuteNonQuery();
            Response.Write("login details submitted Successfully");
            con.Close();
            BindGridData();
        }
        private void BindGridData()
        {
            SqlConnection con = new SqlConnection("Data Source=saireddy_2005\\SQLEXPRESS;Initial Catalog=DP1;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from LoginDetails", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            grdData.DataSource = ds;
            grdData.DataBind();
            con.Close();
        }
        protected void btnsearch_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=saireddy_2005\\SQLEXPRESS;Initial Catalog=DP1;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from LoginDetails where username LIKE '%" + txtusername.Text + "%'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            grdData.DataSource = ds;
            grdData.DataBind();
            con.Close();
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=saireddy_2005\\SQLEXPRESS;Initial Catalog=DP1;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("update LoginDetails set password=@password " +
                "where username=@username", con);
            cmd.Parameters.AddWithValue("@password", txtpassword.Text);
            cmd.Parameters.AddWithValue("@username", txtusername.Text);
            cmd.ExecuteNonQuery();
            Response.Write("Login details updated successfully");
            con.Close();
            BindGridData();
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=saireddy_2005\\SQLEXPRESS;Initial Catalog=DP1;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from LoginDetails where username='" + txtusername.Text + "'", con);
            cmd.ExecuteNonQuery();
            Response.Write("Login details deleted successfully");
            con.Close();
            BindGridData();


        }



        protected void grdData_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdData.EditIndex = e.NewEditIndex;
            BindGridData();

        }

        protected void grdData_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdData.PageIndex = e.NewPageIndex;
            BindGridData();

        }

        protected void grdData_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdData.EditIndex = -1;
            BindGridData();

        }

        protected void grdData_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=saireddy_2005\\SQLEXPRESS;Initial Catalog=DP1;Integrated Security=True");
            con.Open();
            GridViewRow row = grdData.Rows[e.RowIndex];
            int Uid = Convert.ToInt32(grdData.DataKeys[e.RowIndex].Value);
            string username = ((TextBox)row.FindControl("txtusername")).Text;
            string password = ((TextBox)row.FindControl("txtpassword")).Text;

            SqlCommand cmd = new SqlCommand("update LoginDetails set username=@username, password=@password " +
                "where Uid=@Uid", con);
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@password", password);
            cmd.Parameters.AddWithValue("@Uid", Uid);
            cmd.ExecuteNonQuery();
            Response.Write("Login details updated successfully");
            con.Close();
            BindGridData();
        }

        protected void grdData_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=saireddy_2005\\SQLEXPRESS;Initial Catalog=DP1;Integrated Security=True");
            con.Open();
            int Uid = Convert.ToInt32(grdData.DataKeys[e.RowIndex].Value);
            SqlCommand cmd = new SqlCommand("delete from LoginDetails where Uid=@Uid", con);
            cmd.Parameters.AddWithValue("@Uid", Uid);
            cmd.ExecuteNonQuery();
            Response.Write("Login details deleted successfully");
            con.Close();
            BindGridData();

        }
    }
}