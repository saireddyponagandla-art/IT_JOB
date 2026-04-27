<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ADO_Ex.aspx.cs" Inherits="IT_JOB.WebForm3" %>

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
                        <asp:Label ID="lblusername" runat="server" Text="username"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                        <%--                        <asp:RequiredFieldValidator ID="rfvusername" runat="server" ControlToValidate="txtusername" ErrorMessage="Username is required" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblpassword" runat="server" Text="password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
                        <%--                        <asp:RequiredFieldValidator ID="rfvpassword" runat="server" ControlToValidate="txtpassword" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" />

                        <asp:Button ID="btnupdate" runat="server" Text="Update" OnClick="btnupdate_Click" />

                        <asp:Button ID="btndelete" runat="server" Text="Delete" OnClick="btndelete_Click" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:GridView ID="grdData" runat="server"
                            AutoGenerateColumns="False"
                            DataKeyNames="Uid"
                            PageSize="5"
                            AllowPaging="True"
                            OnPageIndexChanging="grdData_PageIndexChanging"
                            OnRowCancelingEdit="grdData_RowCancelingEdit"
                            OnRowEditing="grdData_RowEditing"
                            OnRowUpdating="grdData_RowUpdating" 
                          
                            OnRowDeleting="grdData_RowDeleting">

                            <%--OnPageIndexChanging="grdData_PageIndexChanging"
                            OnRowEditing="grdData_RowEditing"
                            OnRowCancelingEdit="grdData_RowCancelingEdit" OnRowUpdating="grdData_RowUpdating" 
                            OnSelectedIndexChanged="grdData_SelectedIndexChanged">--%>
                            <Columns>
                                <asp:TemplateField HeaderText="Username">
                                    <ItemTemplate>
                                        <asp:Label ID="lblusername" runat="server" Text='<%# Bind("username") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtusername" runat="server" Text='<%# Bind 
                                                ("username") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Password">
                                    <ItemTemplate>
                                        <asp:Label ID="lblpassword" runat="server" Text='<%# Bind("password") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtpassword" runat="server" Text='<%# Bind 
                                                ("password") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Action">
                                    <ItemTemplate>
                                        <asp:Button ID="btnEdit" runat="server" CommandName="Edit" Text="Edit"></asp:Button>
                                        <asp:Button ID="btnDelete" runat="server" CommandName="Delete" Text="Delete"></asp:Button>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:Button ID="btnUpdate" runat="server" CommandName="Update" Text="Update"></asp:Button>
                                        <asp:Button ID="btnCancel" runat="server" CommandName="Cancel" Text="Cancel"></asp:Button>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                            </Columns>

                        </asp:GridView>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Button ID="btnsearch" runat="server" Text="Search" OnClick="btnsearch_Click" />
                    </td>
                    <td></td>
                </tr>
            </table>
        </div>

    </form>
</body>
</html>
