using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_JOB
{
    public partial class RegistrationformWithValidation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=saireddy_2005\\SQLEXPRESS;Initial Catalog=DP1;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Registrationform values('" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtParentName.Text + "','" + ddlGender.Text + "','" + txtDateofBirth.Text + "','" + txtEmail.Text + "','" + txtPhoneNumber.Text + "')", con);

             cmd.ExecuteNonQuery();
            Response.Write("login details submitted Successfully");
            con.Close();
        }
    }
}