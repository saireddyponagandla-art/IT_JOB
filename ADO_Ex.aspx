<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ADO_Ex.aspx.cs" Inherits="IT_JOB.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align ="center">
                <tr>
                    <td>
                        <asp:Label ID="lblusername" runat="server" Text="username"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvusername" runat="server" ControlToValidate="txtusername" ErrorMessage="Username is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr> <td> 
                    <asp:Label ID="lblpassword" runat="server" Text="password"></asp:Label>
                     </td>
                    <td>
                        <asp:TextBox ID="txtpassword" runat="server" ></asp:TextBox>
                       <asp:RequiredFieldValidator ID="rfvpassword" runat="server" ControlToValidate="txtpassword" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
                    </td>
                </tr>
                </table>
        </div>
    </form>
</body>
</html>
