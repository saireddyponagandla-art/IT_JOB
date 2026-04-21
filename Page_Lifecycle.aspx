<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page_Lifecycle.aspx.cs" Inherits="IT_JOB.Page_Lifecycle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Page Life Cycle </title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblMesg" runat="server"></asp:Label>
            <asp:Label ID="label1" runat="server"></asp:Label>
            <asp:Label ID="label2" runat="server"></asp:Label>
            <asp:Label ID="label3" runat="server"></asp:Label>
            <asp:Label ID="label4" runat="server"></asp:Label>
            <br />

            <asp:TextBox ID="txtusername"
                runat="server" OnTextChanged="txtusername_TextChanged">
</asp:TextBox>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" /><br />
            <asp:RadioButton ID="rbtTelugu" runat="server" GroupName="language" AutoPostBack="true"
                OnCheckedChanged="rbtTelugu_CheckedChanged" />Telugu
            <asp:Label ID="lblTelugu" runat="server"></asp:Label><br />
                <asp:RadioButton ID="rbtHindi" runat="server" GroupName="language" AutoPostBack="true"
                    OnCheckedChanged="rbtHindi_CheckedChanged" />Hindi
                <asp:Label ID="lblHindi" runat="server"></asp:Label><br />
                <asp:RadioButton ID="rbtEnglish" runat="server" GroupName="language" />English
                <asp:Label ID="lblEnglish" runat="server"></asp:Label>
              <asp:CheckBox ID="chkChess" runat="server" AutoPostBack="true"
                  OnCheckedChanged="chkChess_CheckedChanged"/>Chess

                <asp:CheckBox ID="chkTennis" runat="server" />Tennis
                <asp:CheckBox ID="chkCricket" runat="server"/>Cricket
                <asp:Label ID="lblChkMesg" runat="server"></asp:Label>
        </div>
    </form>
</body>

</html>


