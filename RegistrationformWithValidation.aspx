<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationformWithValidation.aspx.cs" Inherits="IT_JOB.RegistrationformWithValidation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center">
                <label style="font-size: 24px; font-weight: bold; margin-bottom: 20px;">Registration Form With Validation</label>
                <tr>
                    <td>
                        <asp:Label ID="lblfirstName" runat="server" Text="First Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName" 
                            ErrorMessage="First Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbllastName" runat="server" Text="Last Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName" 
                            ErrorMessage="Last Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblparentname" runat="server" Text="Parent Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtParentName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvParentName" runat="server" ControlToValidate="txtParentName" 
                            ErrorMessage="Parent Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ddlGender" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvGender" runat="server" ControlToValidate="ddlGender" InitialValue=""
                            ErrorMessage="Gender is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblDateofBirth" runat="server" Text="Date of Birth"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDateofBirth" runat="server"></asp:TextBox>
                       <%-- <asp:RequiredFieldValidator ID="rfvDateofBirth" runat="server" ControlToValidate="txtDateofBirth" 
                            ErrorMessage="Date of Birth is required" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" 
                            ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPhoneNumber" runat="server" Text="Phone"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPhoneNumber" runat="server" ControlToValidate="txtPhoneNumber" 
                            ErrorMessage="Phone Number is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"></asp:Button>
                    </td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>
