<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PlacementPortal.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="login" runat="server">
        <div>
            <asp:TextBox ID="tbUserName" runat="server"></asp:TextBox><br />
            <asp:TextBox ID="tbPassword" runat="server"></asp:TextBox><br />
            <asp:DropDownList ID="ddlOption" runat="server"></asp:DropDownList>
        </div>
    </form>
</body>
</html>
