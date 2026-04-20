<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IT_FresherJobApp.aspx.cs" Inherits="IT_JOB.IT_FresherJobApp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>IT FRESHER FORM</title>

    <style type="text/css">
        .auto-style1 {
            width: 676px;
            height: 544px;
        }

        .auto-style2 {
            height: 544px;
        }
    </style>




    <%-- -------------- ctrl K+C is COMMENT IT---------------%>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 700px; margin: auto;">
            <h2>FRESHERS'S APPLICATION FORM</h2>
            <table>
                <tr>
                    <td class="auto-style1" style="red">
                        <h3>Personal Details</h3>
                        First Name:
                        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFirstName" runat="server"
                            ControlToValidate="txtFirstName" ErrorMessage="First Name is required"
                            ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revFirstName" runat="server"
                            ControlToValidate="txtFirstName" ValidationExpression="^[A-Za-z]+$"
                            ErrorMessage="Only alphabets allowed"
                            ForeColor="Red"></asp:RegularExpressionValidator>
                        <br />
                        <br />

                        Last Name:
                        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvLastName" runat="server"
                            ControlToValidate="txtLastName" ErrorMessage="Last Name is required"
                            ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revLastName" runat="server"
                            ControlToValidate="txtLastName" ValidationExpression="^[A-Za-z]+$"
                            ErrorMessage="Only alphabets allowed"
                            ForeColor="Red"></asp:RegularExpressionValidator>
                        <br />
                        <br />

                        Gender:
                       
                        <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Value="">--Select--</asp:ListItem>
                            <asp:ListItem Value="Male">Male</asp:ListItem>
                            <asp:ListItem Value="Female">Female</asp:ListItem>
                        </asp:RadioButtonList>

                        <asp:RequiredFieldValidator ID="rfvGender" runat="server"
                            ControlToValidate="rblGender"
                            InitialValue=""
                            ErrorMessage="Gender is required"
                            ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        Date of Birth:
                        <asp:TextBox ID="txtDOB" runat="server" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFVDOB" runat="server" ControlToValidate="txtDOB" ErrorMessage="Date of Birth is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        Contact Number:
                       <asp:TextBox ID="txtContact" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvContact" runat="server"
                            ControlToValidate="txtContact"
                            ErrorMessage="Contact Number is required"
                            ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revContact" runat="server"
                            ControlToValidate="txtContact"
                            ValidationExpression="^\d{10}$"
                            ErrorMessage="Enter a valid 10-digit number"
                            ForeColor="Red"></asp:RegularExpressionValidator>
                        <br />
                        <br />
                        Email ID:
                       <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                            ControlToValidate="txtEmail"
                            ErrorMessage="Email ID is required"
                            ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revEmail" runat="server"
                            ControlToValidate="txtEmail"
                            ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
                            ErrorMessage="Enter a valid email (must contain @ and .)"
                            ForeColor="Red"></asp:RegularExpressionValidator>
                        <br />
                        Address:
                        <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFVAddress" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <h4>SCHOOL DETAILS</h4>
                        <table>
                            <tr>
                                <td>Board Name:
            <asp:TextBox ID="txtBoardName" runat="server" Width="300px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RFVBoardName" runat="server" ControlToValidate="txtBoardName" ErrorMessage="Board Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>School Name:
            <asp:TextBox ID="txtSchoolName" runat="server" Width="300px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvSchoolName" runat="server" ControlToValidate="txtSchoolName" ErrorMessage="School Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>Year of Passing:
            <asp:TextBox ID="txtSchoolYOP" runat="server" Width="150px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RFVSchoolYOP" runat="server" ControlToValidate="txtSchoolYOP" ErrorMessage="Year of Passing is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>Marks (%):
            <asp:TextBox ID="txtMarks" runat="server" Width="100px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RFVMarks" runat="server" ControlToValidate="txtMarks" ErrorMessage="Marks are required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>

                        <h4>INTERMEDIATE DETAILS</h4>
                        <table>
                            <tr>
                                <td>College Name:
            <asp:TextBox ID="txtInterCollege" runat="server" Width="300px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RFVInterCollege" runat="server" ControlToValidate="txtInterCollege" ErrorMessage="College Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>Year of Passing:
            <asp:TextBox ID="txtInterYOP" runat="server" Width="150px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvInterYOP" runat="server"
                                        ControlToValidate="txtInterYOP" ErrorMessage="Year of Passing is required"
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>Marks (%):
            <asp:TextBox ID="txtInterMarks" runat="server" Width="100px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvInterMarks" runat="server"
                                        ControlToValidate="txtInterMarks" ErrorMessage="Marks are required"
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>

                        <h4>GRADUATION DETAILS</h4>
                        <table>
                            <tr>
                                <td>University Name:
            <asp:TextBox ID="txtGradUniversity" runat="server" Width="300px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvGradUniversity" runat="server"
                                        ControlToValidate="txtGradUniversity" ErrorMessage="University Name is required"
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>Course:
            <asp:DropDownList ID="ddlGradCourse" runat="server">
                <asp:ListItem Value="">--Select--</asp:ListItem>
                <asp:ListItem>B.Tech</asp:ListItem>
                <asp:ListItem>B.Sc</asp:ListItem>
                <asp:ListItem>B.Com</asp:ListItem>
            </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvGradCourse" runat="server"
                                        ControlToValidate="ddlGradCourse" InitialValue=""
                                        ErrorMessage="Course is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>Year of Passing:
            <asp:TextBox ID="txtGradYOP" runat="server" Width="150px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvGradYOP" runat="server"
                                        ControlToValidate="txtGradYOP" ErrorMessage="Year of Passing is required"
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>Marks (%):
            <asp:TextBox ID="txtGradMarks" runat="server" Width="100px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvGradMarks" runat="server"
                                        ControlToValidate="txtGradMarks" ErrorMessage="Marks are required"
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>

                        <h4>POSTGRADUATE DETAILS (if any)</h4>
                        <table>
                            <tr>
                                <td>University Name:
            <asp:TextBox ID="txtPGUniversity" runat="server" Width="300px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvPGUniversity" runat="server"
                                        ControlToValidate="txtPGUniversity" ErrorMessage="University Name is required"
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>Course:
            <asp:DropDownList ID="ddlPGCourse" runat="server">
                <asp:ListItem Value="">--Select--</asp:ListItem>
                <asp:ListItem>M.Tech</asp:ListItem>
                <asp:ListItem>M.Sc</asp:ListItem>
                <asp:ListItem>MBA</asp:ListItem>
            </asp:DropDownList>
                                    <%--   <asp:RequiredFieldValidator ID="rfvPGCourse" runat="server"
                                        ControlToValidate="ddlPGCourse" InitialValue=""
                                        ErrorMessage="Course is required" ForeColor="Red"></asp:RequiredFieldValidator> --%>
                                </td>
                            </tr>
                            <tr>
                                <td>Year of Passing:
            <asp:TextBox ID="txtPGYOP" runat="server" Width="150px"></asp:TextBox>
                                    <%--  <asp:RequiredFieldValidator ID="rfvPGYOP" runat="server"
                                        ControlToValidate="txtPGYOP" ErrorMessage="Year of Passing is required"
                                        ForeColor="Red"></asp:RequiredFieldValidator>--%>
                                </td>
                            </tr>
                            <tr>
                                <td>Marks (%):
            <asp:TextBox ID="txtPGMarks" runat="server" Width="100px"></asp:TextBox>
                                    <%--                                    <asp:RequiredFieldValidator ID="rfvPGMarks" runat="server"
                                        ControlToValidate="txtPGMarks" ErrorMessage="Marks--%> <%--are required"
                                        ForeColor="Red"></asp:RequiredFieldValidator>--%>
                                </td>
                            </tr>
                        </table>


                        <h3>Skill Set</h3>
                        <table>
                            <tr>
                                <td>Operating Systems: 
        <asp:CheckBoxList ID="chkOS" runat="server">
            <asp:ListItem>Windows</asp:ListItem>
            <asp:ListItem>Linux</asp:ListItem>
            <asp:ListItem>MacOS</asp:ListItem>
        </asp:CheckBoxList></td>
                            </tr>
                            <tr>
                                <td>Programming Languages: 
        <asp:CheckBoxList ID="chkLanguages" runat="server">
            <asp:ListItem>C</asp:ListItem>
            <asp:ListItem>C++</asp:ListItem>
            <asp:ListItem>Java</asp:ListItem>
            <asp:ListItem>Python</asp:ListItem>
        </asp:CheckBoxList></td>
                            </tr>
                            <tr>
                                <td>Databases: 
        <asp:CheckBoxList ID="chkDatabases" runat="server">
            <asp:ListItem>SQL Server</asp:ListItem>
            <asp:ListItem>MySQL</asp:ListItem>
            <asp:ListItem>Oracle</asp:ListItem>
        </asp:CheckBoxList></td>
                            </tr>
                            <tr>
                                <td>Other Skills: 
        <asp:TextBox ID="txtOtherSkills" runat="server" TextMode="MultiLine" Width="400px" Height="60px"></asp:TextBox></td>
                            </tr>
                        </table>

                        <asp:Button ID="btnSubmit" runat="server" Text="Submit Application" OnClick="btnSubmit_Click" />
                        <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" />
                        <asp:Label ID="lblResult" runat="server" ForeColor="pink"></asp:Label>
        </div>
    </form>
</body>
</html>
