<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewGroups.aspx.cs" Inherits="PlacementPortal.ViewGroups" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Groups</title>
    <link rel="stylesheet" type="text/css" href="Index.css" />
    <link href="https://fonts.googleapis.com/css?family=Oswald:400&display=swap" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-main">
            <div class="form-header">
                <div class="header-btn">
                    <div class="header-btn-main">
                        <asp:Button ID="btnHome" runat="server" Text="HOME" CssClass="btn-home" OnClick="btnHome_Click"/>
                    </div>
                </div>
            </div>
            <div class="form-content gv">
                <div class="content-box gv vg">
                    <asp:Label ID="lblDetails" runat="server" Text="LIST OF ALL GROUPS" CssClass="gv-label vg"></asp:Label><br />
                    <asp:GridView ID="GridView1" runat="server" HeaderStyle-CssClass="gv-header" RowStyle-CssClass="gv-row" CellPadding="10" CellSpacing="10" CssClass="gv" BorderColor="White">
                    </asp:GridView>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
