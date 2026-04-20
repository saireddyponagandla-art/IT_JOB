using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_JOB
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

     

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;
            if (username == "saikumar" && password == "9876543")
            {
                Response.Write("Login Successful!");
            }
            else
            {
                Response.Write("Invalid Username or Password.");
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Write("Registration page coming soon...");
        }
        protected void lnkFresher_Click(object sender, EventArgs e)
        {
            lnkFresher.NavigateUrl = "~/IT_FresherJobApp.aspx";
        }
        protected void lnkExperienced_Click(object sender, EventArgs e)
        {
            lnkExperienced.NavigateUrl = "~/ExperiencedApplication.aspx";
        }
    }
}