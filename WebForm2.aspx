<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="IT_JOB.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ALLASPXFiles</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        
        <asp:Label ID="Label1" runat="server" Text="Submit"></asp:Label>
        <asp:Label ID="lblcount" runat="server" ></asp:Label>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="WebForm1.aspx">Go to WebForm1</asp:HyperLink><br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="Page_Lifecycle.aspx">Page_Lifecycle</asp:HyperLink><br />    
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="Validation.aspx">Validation</asp:HyperLink>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="ViewState.aspx">ViewState</asp:HyperLink>
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="Without_Viewstate.aspx">WithOut_Viewstate</asp:HyperLink>
</div>
    </form>
</body>
</html>
