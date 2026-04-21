using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_JOB
{
    public partial class Without_Viewstate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                {
                    ViewState["Counter"] = 0;
                }

            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int count = 0;
            count++;
            label1.Text = "Button clicked " + count + " times.";
        }
    }

    }