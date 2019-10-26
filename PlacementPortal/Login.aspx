<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PlacementPortal.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Index.css" />
    <link href="https://fonts.googleapis.com/css?family=Oswald:300&display=swap" rel="stylesheet" />
    <title></title>
</head>
<body class="login-main">
    <form id="login" runat="server" >
        <div class="login-box">
            <div class="login-box-main">
                <asp:Label Text="Registered ID" runat="server" CssClass="input-label"></asp:Label><br />
                <asp:TextBox ID="tbRegID" runat="server" CssClass="form-input"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="SIDValidator" runat="server" ControlToValidate="tbRegID" ErrorMessage="*Registered ID is a required field" Display="Dynamic" CssClass="validator"></asp:RequiredFieldValidator><br />
                <asp:Label Text="Password" runat="server" CssClass="input-label"></asp:Label><br />
                <asp:TextBox ID="tbPassword" runat="server" Text="Password" CssClass="form-input" TextMode="Password"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="PasswordValidator" runat="server" ControlToValidate="tbPassword" ErrorMessage="*Password is a required field" Display="Dynamic" CssClass="validator"></asp:RequiredFieldValidator><br />
                <asp:DropDownList ID="ddlOption" runat="server" CssClass="form-input" AutoPostBack="true"></asp:DropDownList>
                <asp:Button ID="btnLogin" runat="server" Text="Log In" CssClass="form-input button" OnClick="btnLogin_Click"/>
                <asp:Label ID="check" runat="server"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
