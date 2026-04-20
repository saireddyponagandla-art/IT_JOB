using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_JOB
{
    public partial class IT_FresherJobApp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string details = "Your Application Details:<br/>" +
                                 "First Name: " + txtFirstName.Text + "<br/>" +
                                 "Last Name: " + txtLastName.Text + "<br/>" +
                                 "DOB: " + txtDOB.Text + "<br/>" +
                                 "Gender: " + rblGender.SelectedValue + "<br/>" +
                                 "Contact: " + txtContact.Text + "<br/>" +
                                 "Email: " + txtEmail.Text + "<br/>" +
                                 "Address: " + txtAddress.Text + "<br/>" +
                                 "School Board: " + txtBoardName.Text + "<br/>" +
                                 "School Name: " + txtSchoolName.Text + "<br/>" +
                                 "School YOP: " + txtSchoolYOP.Text + "<br/>" +
                                 "School Marks: " + txtMarks.Text + "<br/>" +
                                 "Intermediate College: " + txtInterCollege.Text + "<br/>" +
                                 "Intermediate YOP: " + txtInterYOP.Text + "<br/>" +
                                 "Intermediate Marks: " + txtInterMarks.Text + "<br/>" +
                                 "Graduation University: " + txtGradUniversity.Text + "<br/>" +
                                 "Graduation Course: " + ddlGradCourse.SelectedValue + "<br/>" +
                                 "Graduation YOP: " + txtGradYOP.Text + "<br/>" +
                                 "Graduation Marks: " + txtGradMarks.Text + "<br/>" +
                                 "PG University: " + txtPGUniversity.Text + "<br/>" +
                                 "PG Course: " + ddlPGCourse.SelectedValue + "<br/>" +
                                 "PG YOP: " + txtPGYOP.Text + "<br/>" +
                                 "PG Marks: " + txtPGMarks.Text + "<br/>" +
                                 "Other Skills: " + txtOtherSkills.Text;

                lblResult.Text = details;
            }
        }



        protected void btnReset_Click(object sender, EventArgs e)
        {
            
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtDOB.Text = "";
            txtContact.Text = "";
            txtEmail.Text = "";
            txtAddress.Text = "";

            txtBoardName.Text = "";
            txtSchoolName.Text = "";
            txtSchoolYOP.Text = "";
            txtMarks.Text = "";

            txtInterCollege.Text = "";
            txtInterYOP.Text = "";
            txtInterMarks.Text = "";

            txtGradUniversity.Text = "";
            txtGradYOP.Text = "";
            txtGradMarks.Text = "";

            txtPGUniversity.Text = "";
            txtPGYOP.Text = "";
            txtPGMarks.Text = "";
            txtOtherSkills.Text = "";

        
            ddlGradCourse.SelectedIndex = 0;
            ddlPGCourse.SelectedIndex = 0;

            foreach (var item in chkOS.Items) ((System.Web.UI.WebControls.ListItem)item).Selected = false;
            foreach (var item in chkLanguages.Items) ((System.Web.UI.WebControls.ListItem)item).Selected = false;
            foreach (var item in chkDatabases.Items) ((System.Web.UI.WebControls.ListItem)item).Selected = false;

            rblGender.ClearSelection();
        }
    }
}