<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewProfile.aspx.cs" Inherits="WebApplication3.ViewProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            STUDENT PROFILE:</p>
        <p>
            <asp:GridView ID="GridView1" ShowHeader ="false" CssClass="Grid" HeaderStyle-CssClass="header" runat="server"
    AutoGenerateColumns="true">
</asp:GridView>
        </p>
    </form>
</body>
</html>
