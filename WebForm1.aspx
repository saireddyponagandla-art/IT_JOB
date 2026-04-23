<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="IT_JOB.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
    <title>IT Job Portal</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 0;
        }

        div {
            text-align: center;
            margin-top: 20px;
        }

        table {
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 4px 8px rgba(0,0,0,0.1);
        }

        td {
            padding: 10px;
            font-size: 14px;
        }

        input[type="text"], input[type="password"] {
            width: 200px;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .aspNetButton {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 8px 16px;
            margin: 5px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 14px;
        }

        .aspNetButton:hover {
            background-color: #0056b3;
        }

        a {
            display: inline-block;
            margin: 10px;
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
        }

        a:hover {
            color: #0056b3;
        }

        #lblWelcome {
            font-size: 20px;
            font-weight: bold;
            color: #333;
        }
    </style>
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
