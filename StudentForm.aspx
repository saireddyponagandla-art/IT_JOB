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
                        <asp:Label ID="lblname" runat="server" Text="StudentName"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblage" runat="server" Text="StudentAge"></asp:Label>
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
                <tr>
                    <td>
                        <asp:Label ID="lbldateofbirth" runat="server" Text="DateofBirth"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtdateofbirth" runat="server"></asp:TextBox>
                        <asp:DropDownList ID="ddlDateOfBirth" runat="server">
                            <asp:ListItem Text="Select Date" Value=""></asp:ListItem>
                            <asp:ListItem Text="1" Value="1"></asp:ListItem>
                            <asp:ListItem Text="2" Value="2"></asp:ListItem>
                            <asp:ListItem Text="3" Value="3"></asp:ListItem>
                            <asp:ListItem Text="4" Value="4"></asp:ListItem>
                            <asp:ListItem Text="5" Value="5"></asp:ListItem>
                            <asp:ListItem Text="6" Value="6"></asp:ListItem>
                            <asp:ListItem Text="7" Value="7"></asp:ListItem>
                            <asp:ListItem Text="8" Value="8"></asp:ListItem>
                            <asp:ListItem Text="9" Value="9"></asp:ListItem>
                            <asp:ListItem Text="10" Value="10"></asp:ListItem>
                            <asp:ListItem Text="11" Value="11"></asp:ListItem>
                            <asp:ListItem Text="12" Value="12"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlMonthOfBirth" runat="server">
                            <asp:ListItem Text="Select Month" Value=""></asp:ListItem>
                            <asp:ListItem Text="January" Value="January"></asp:ListItem>
                            <asp:ListItem Text="February" Value="February"></asp:ListItem>
                            <asp:ListItem Text="March" Value="March"></asp:ListItem>
                            <asp:ListItem Text="April" Value="April"></asp:ListItem>
                            <asp:ListItem Text="May" Value="May"></asp:ListItem>
                            <asp:ListItem Text="June" Value="June"></asp:ListItem>
                            <asp:ListItem Text="July" Value="July"></asp:ListItem>
                            <asp:ListItem Text="August" Value="August"></asp:ListItem>
                            <asp:ListItem Text="September" Value="September"></asp:ListItem>
                            <asp:ListItem Text="October" Value="October"></asp:ListItem>
                            <asp:ListItem Text="November" Value="November"></asp:ListItem>
                            <asp:ListItem Text="December" Value="December"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlYearOfBirth" runat="server">
                            <asp:ListItem Text="Select Year" Value=""></asp:ListItem>
                            <asp:ListItem Text="2000" Value="2000"></asp:ListItem>
                            <asp:ListItem Text="2001" Value="2001"></asp:ListItem>
                            <asp:ListItem Text="2002" Value="2002"></asp:ListItem>
                            <asp:ListItem Text="2003" Value="2003"></asp:ListItem>
                            <asp:ListItem Text="2004" Value="2004"></asp:ListItem>
                            <asp:ListItem Text="2005" Value="2005"></asp:ListItem>
                            <asp:ListItem Text="2006" Value="2006"></asp:ListItem>
                            <asp:ListItem Text="2007" Value="2007"></asp:ListItem>
                            <asp:ListItem Text="2008" Value="2008"></asp:ListItem>
                            <asp:ListItem Text="2009" Value="2009"></asp:ListItem>
                            <asp:ListItem Text="2010" Value="2010"></asp:ListItem>
                            </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblgender" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td>
                        
                        <asp:TextBox ID="txtgender" runat="server"></asp:TextBox>
                        <asp:RadioButtonList ID="rblgender" runat="server">
                            <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                            <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                            <asp:ListItem Text="Other" Value="Other"></asp:ListItem>

                           
                        </asp:RadioButtonList>
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbllocation" runat="server" Text="Location"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtlocation" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPhoneNumber" runat="server" Text="PhoneNumber"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
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
                         <asp:GridView ID="grdData" runat="server" AllowPaging="true" OnPageIndexChanging="5"></asp:GridView>
                     </td>
                 </tr>
            </table>
        </div>
    </form>
</body>
</html>
