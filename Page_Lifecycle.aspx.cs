using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_JOB
{
    public partial class Page_Lifecycle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            label3.Text = "Hi page load event<br>";
            btnSubmit.Visible = false;
        }
        protected void page_preINIT(object sender, EventArgs e)
        {
            lblMesg.Text = "Hi page pre init event<br>";
        }
        protected void page_INIT(object sender, EventArgs e)
        {
            label1.Text = "hii page_INIT event<br>";
        }
        protected void page_INITComplete(object sender, EventArgs e)
        {
            label2.Text = "page init complete <br>";
        }
        protected void page_LoadComplete(object sender, EventArgs e)
        {
            label4.Text = "page load complete<br>";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (rbtTelugu.Checked)
            {
                lblTelugu.Text = "selected language is telugu";
            }
            else if (rbtHindi.Checked)
            {
                lblHindi.Text = "selected language is hindi";
            }
            else if (rbtEnglish.Checked)
            {
                lblEnglish.Text = "selected language is english";
            }
        }

        protected void txtusername_TextChanged(object sender, EventArgs e)
        {
            if (txtusername.Text.Length > 0)
            {
                btnSubmit.Visible = true;
            }
        }

        protected void rbtTelugu_CheckedChanged(object sender, EventArgs e)
        {
            if (rbtTelugu.Checked)
            {
                lblTelugu.Text = "selected language is telugu";
            }
        }

        protected void rbtHindi_CheckedChanged(object sender, EventArgs e)
        {
            if (rbtHindi.Checked)
            {
                lblHindi.Text = "selected language is:Hindi";
            }
        }

        protected void rbtEnglish_CheckedChanged(object sender, EventArgs e)
        {
            if (rbtEnglish.Checked)
            {
                lblEnglish.Text = "selected language is:English";
            }
        }

        protected void chkChess_CheckedChanged(object sender, EventArgs e)
        {
            if (chkChess.Checked)
            {
                lblChkMesg.Text = "chess is selected";
            }
        }

        protected void chkTennis_CheckedChanged(object sender, EventArgs e)
        {
            if (chkTennis.Checked)
            {
                lblChkMesg.Text = "tennis is selected";
            }
        }

        protected void chkCricket_CheckedChanged(object sender, EventArgs e)
        {
            if (chkCricket.Checked)
            {
                chkCricket.Text = "cricket is selected";
            }
        }
    }
}