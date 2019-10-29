<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="PlacementPortal.Index" Theme="Blue"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome</title>
    <link rel="stylesheet" type="text/css" href="Index.css" />
    <link href="https://fonts.googleapis.com/css?family=Oswald:400&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Press+Start+2P&display=swap" rel="stylesheet">
</head>
<body class="index">
    <form id="form1" runat="server">
        <div class="main">
            <div class="left-main">
                <asp:Panel ID="luPnl" runat="server" CssClass="left-main-upper">
                    <asp:Image ID="imgLogo" runat="server" ImageUrl="~/Images/mitLogo.png" Height="300px" Width="300px" />
                    <asp:Label ID="lblName" runat="server" CssClass="name-main" Text="Manipal Institute of Technology"></asp:Label>
                </asp:Panel>
                <asp:Panel ID="llPnl" runat="server" CssClass="left-main-lower">
                    <asp:Label ID="lblWel" runat="server" CssClass="wel-text" Text="Choose from the options on the right side"></asp:Label>
                </asp:Panel>
            </div>
            <div class="right-main">
                <div class="right-main-box">
                    <asp:Button ID="btnTheme" runat="server" CssClass="btn-theme" Text="THEME" OnClick="btnTheme_Click"/><br />
                    <asp:Button ID="btnLogIn" runat="server" CssClass="btn-theme" Text="LOG IN" OnClick="btnLogIn_Click"/><br />
                    <asp:Button ID="btnSignUp" runat="server" CssClass="btn-theme" Text="SIGN UP" OnClick="btnSignUp_Click"/>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
