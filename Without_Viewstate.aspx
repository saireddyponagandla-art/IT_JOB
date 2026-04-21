<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Without_Viewstate.aspx.cs" Inherits="IT_JOB.Without_Viewstate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="label1" runat="server" Text="Label"></asp:Label>
<asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        </div>
    </form>
</body>
</html>
