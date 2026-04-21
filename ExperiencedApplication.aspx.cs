using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_JOB
{
    public partial class ExperiencedApplication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            }

            protected void btnSubmit_Click(object sender, EventArgs e)
            {
                if (Page.IsValid)
                {
                    StringBuilder sb = new StringBuilder();
                    sb.Append("<h3>Registration Successful!</h3>");
                    sb.Append("<b>Personal Details</b><br/>");
                    sb.Append("First Name: " + txtFirstName.Text + "<br/>");
                    sb.Append("Last Name: " + txtLastName.Text + "<br/>");
                    sb.Append("DOB: " + txtDOB.Text + "<br/>");
                    sb.Append("Gender: " + rblGender.SelectedValue + "<br/>");
                    sb.Append("Contact: " + txtContact.Text + "<br/>");
                    sb.Append("Email: " + txtEmail.Text + "<br/>");
                    sb.Append("Address: " + txtAddress.Text + "<br/><br/>");

                    sb.Append("<b>School Details</b><br/>");
                    sb.Append("Board: " + txtBoardName.Text + "<br/>");
                    sb.Append("School: " + txtSchoolName.Text + "<br/>");
                    sb.Append("Year of Passing: " + txtSchoolYOP.Text + "<br/>");
                    sb.Append("Marks: " + txtMarks.Text + "<br/><br/>");

                    sb.Append("<b>Intermediate Details</b><br/>");
                    sb.Append("College: " + txtInterCollege.Text + "<br/>");
                    sb.Append("Year of Passing: " + txtInterYOP.Text + "<br/>");
                    sb.Append("Marks: " + txtInterMarks.Text + "<br/><br/>");

                    sb.Append("<b>Graduation Details</b><br/>");
                    sb.Append("University: " + txtGradUniversity.Text + "<br/>");
                    sb.Append("Course: " + ddlGradCourse.SelectedValue + "<br/>");
                    sb.Append("Year of Passing: " + txtGradYOP.Text + "<br/>");
                    sb.Append("Marks: " + txtGradMarks.Text + "<br/><br/>");

                    sb.Append("<b>Postgraduate Details</b><br/>");
                    sb.Append("University: " + txtPGUniversity.Text + "<br/>");
                    sb.Append("Course: " + ddlPGCourse.SelectedValue + "<br/>");
                    sb.Append("Year of Passing: " + txtPGYOP.Text + "<br/>");
                    sb.Append("Marks: " + txtPGMarks.Text + "<br/><br/>");

                    sb.Append("<b>Skills</b><br/>");
                    sb.Append("Operating Systems: " + string.Join(", ", GetSelectedItems(chkOS)) + "<br/>");
                    sb.Append("Languages: " + string.Join(", ", GetSelectedItems(chkLanguages)) + "<br/>");
                    sb.Append("Databases: " + string.Join(", ", GetSelectedItems(chkDatabases)) + "<br/>");
                    sb.Append("Other Skills: " + txtOtherSkills.Text + "<br/><br/>");

                    sb.Append("<b>Experience Details</b><br/>");
                    sb.Append("Company Name: " + txtCompanyName.Text + "<br/>");
                    sb.Append("Company Address: " + txtCompanyAddress.Text + "<br/>");
                    sb.Append("Company Phone: " + txtCompanyPhone.Text + "<br/>");
                    sb.Append("Company Website: " + txtCompanyWebsite.Text + "<br/>");
                    sb.Append("Resignation Reason: " + txtResignation.Text + "<br/>");
                    sb.Append("Role & Responsibility: " + txtRoleResponsibility.Text + "<br/>");
                    sb.Append("Current CTC: " + txtCTC.Text + "<br/>");

                    Response.Write(sb.ToString());
                }
            }

            protected void btnreset_Click(object sender, EventArgs e)
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
                ddlGradCourse.SelectedIndex = 0;

                txtPGUniversity.Text = "";
                txtPGYOP.Text = "";
                txtPGMarks.Text = "";
                ddlPGCourse.SelectedIndex = 0;

                txtOtherSkills.Text = "";

                txtCompanyName.Text = "";
                txtCompanyAddress.Text = "";
                txtCompanyPhone.Text = "";
                txtCompanyWebsite.Text = "";
                txtResignation.Text = "";
                txtRoleResponsibility.Text = "";
                txtCTC.Text = "";
                rblGender.ClearSelection();
                foreach (var item in chkOS.Items) ((System.Web.UI.WebControls.ListItem)item).Selected = false;
                foreach (var item in chkLanguages.Items) ((System.Web.UI.WebControls.ListItem)item).Selected = false;
                foreach (var item in chkDatabases.Items) ((System.Web.UI.WebControls.ListItem)item).Selected = false;
            }

            private string[] GetSelectedItems(System.Web.UI.WebControls.CheckBoxList list)
            {
                var selected = new System.Collections.Generic.List<string>();
                foreach (System.Web.UI.WebControls.ListItem item in list.Items)
                {
                    if (item.Selected) selected.Add(item.Text);
                }
                return selected.ToArray();
            }
        }
    }

