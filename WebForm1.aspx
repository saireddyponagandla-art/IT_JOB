<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="IT_JOB.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <img src="https://img.freepik.com/premium-photo/business-man-working-laptop-with-job-search-screen_218381-8578.jpg"
     alt="IT Job Portal" width="500" height="300" />
 <br />
 <br />

 <asp:Label ID="lblWelcome" runat="server" Text="Welcome to IT Job Portal" Font-Size="Large"></asp:Label>
 <br />
 <br />
  <table align="center">
         <tr>
             <td>Username:</td>
             <td>
                 <asp:TextBox ID="txtUsername" runat="server" ></asp:TextBox></td>
         </tr>
         <tr>
             <td>Password:</td>
             <td>
                 <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" ></asp:TextBox></td>
         </tr>
         <tr>
             <td colspan="2" align="center">
                 <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click"  />
                 &nbsp;
                
                 <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
             </td>
         </tr>
     </table>
     <br />
     <asp:HyperLink ID="lnkFresher" runat="server" NavigateUrl="~/IT_FresherJobApp.aspx" OnLoad="lnkFresher_Click">Fresher Application</asp:HyperLink>
    
    
     <asp:HyperLink ID="lnkExperienced" runat="server" NavigateUrl="~/ExperiencedApplication.aspx" OnLoad="lnkExperienced_Click">Experienced Application</asp:HyperLink>
     <br />
     <br />
 

        </div>
    </form>
</body>
</html>
