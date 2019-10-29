<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchCompanies.aspx.cs" Inherits="PlacementPortal.SearchCompanies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Search</title>
    <link rel="stylesheet" type="text/css" href="Index.css" />
    <link href="https://fonts.googleapis.com/css?family=Oswald:400&display=swap" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-main">
            <div class="form-header">
                <div class="header-btn">
                    <div class="header-btn-main">
                        <asp:Button ID="btnHome" runat="server" Text="Home" CssClass="btn-home" OnClick="btnHome_Click" />
                    </div>
                </div>
            </div>
            <div class="form-content sc">
                <div class="content-box">
                    <asp:Label ID="lblSelectOffer" runat="server" Text="Select Offer Type:" CssClass="lbl-gen sc"></asp:Label><br />
                    <asp:DropDownList ID="ddlOfferType" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlOfferType_SelectedIndexChanged" CssClass="tb-gen sc"></asp:DropDownList><br />
                    <asp:GridView ID="gvCompOffer" runat="server" AutoGenerateColumns="false"
                        HeaderStyle-CssClass="gv-header" RowStyle-CssClass="gv-row" CellPadding="10" CellSpacing="10" CssClass="gv" BorderColor="White"  
                        AllowSorting="true">
                        <SortedAscendingHeaderStyle CssClass="gv-header-sort" />
                        <SortedAscendingHeaderStyle CssClass="gv-header-sort" />
                        <Columns>
                            <asp:BoundField DataField="Name" HeaderText="Company Name" SortExpression="Name" />
                            <asp:BoundField DataField="Branches" HeaderText="Eligible Branches" />
                            <asp:BoundField DataField="CGPA" HeaderText="Min. CGPA" />
                            <asp:BoundField DataField="BL" HeaderText="Max. Backlogs" />
                            <asp:BoundField DataField="TenMarks" HeaderText="Min. 10th Marks" />
                            <asp:BoundField DataField="TwelMarks" HeaderText="Min. 12th Marks" />
                            <asp:BoundField DataField="CTC" HeaderText="CTC" SortExpression="CTC" />
                            <asp:BoundField DataField="Location" HeaderText="Location" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
