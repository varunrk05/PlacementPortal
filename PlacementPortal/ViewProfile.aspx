<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewProfile.aspx.cs" Inherits="PlacementPortal.ViewProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile</title>
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
                <div class="content-box gv vp">
                    <asp:Label ID="lblDetails" runat="server" Text="YOUR PROFILE" CssClass="gv-label vp"></asp:Label><br />
                    <asp:GridView ID="GridView1" ShowHeader ="false" runat="server" AutoGenerateColumns="true" 
                        HeaderStyle-CssClass="gv-header" RowStyle-CssClass="gv-row vp" CellPadding="10" CellSpacing="10" CssClass="gv" BorderColor="White">
                        <SortedAscendingHeaderStyle CssClass="gv-header-sort" />
                        <SortedAscendingHeaderStyle CssClass="gv-header-sort" />
                    </asp:GridView>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
