<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentForm.aspx.cs" Inherits="IT_JOB.StudentForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center">
                <tr>
                    <td>
                        <asp:Label ID="lblname" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblage" runat="server" Text="Age"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblparentname" runat="server" Text="Parentname"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtparentname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <
                <tr>
                    <td>
                        <asp:Label ID="lblgender" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtgender" runat="server"></asp:TextBox>   
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnupdate" runat="server" Text="Update" OnClick="btnupdate_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btndelete" runat="server" Text="Delete" OnClick="btndelete_Click" />
                    </td>
                </tr>
                 <tr>
                     <td colspan="2">
                         <asp:GridView ID="grdData" runat="server" AutoGenerateColumns="true"></asp:GridView>
                     </td>
                 </tr>
            </table>
        </div>
    </form>
</body>
</html>
