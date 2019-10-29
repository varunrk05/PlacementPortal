<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyList.aspx.cs" Inherits="PlacementPortal.CompanyList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Companies</title>
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
                <div class="content-box gv">
                    <asp:SqlDataSource ID="sqdComList" runat="server" ProviderName="System.Data.SqlClient" ConnectionString="<%$ConnectionStrings: DBConStr %>"
                    SelectCommand="select * from Company"></asp:SqlDataSource>
                    <asp:Label ID="lblDetails" runat="server" Text="LIST OF ALL COMPANIES" CssClass="gv-label"></asp:Label><br />
                    <asp:Label ID="lblInfo" runat="server" Text="(You can sort on the basis of Name and CTC)" CssClass="gv-label info"></asp:Label>
                    <asp:GridView ID="gvComList" runat="server" DataSourceID="sqdComList" AutoGenerateColumns="false" 
                        HeaderStyle-CssClass="gv-header" RowStyle-CssClass="gv-row" CellPadding="10" CellSpacing="10" CssClass="gv" BorderColor="White"  
                        PageSize="5" AllowPaging="true" AllowSorting="true">
                        <SortedAscendingHeaderStyle CssClass="gv-header-sort" />
                        <SortedAscendingHeaderStyle CssClass="gv-header-sort" />
                        <Columns>
                            <asp:BoundField DataField="Name" HeaderText="Company Name" SortExpression="Name" />
                            <asp:TemplateField HeaderText="Offers">
                                <ItemTemplate>
                                    <%#((int)Eval("PlaceIntern") == 1) ? "P+I " : "" %>
                                    <%#((int)Eval("Placement") == 1) ? "P " : "" %>
                                    <%#((int)Eval("Internship") == 1) ? "I" : "" %>
                                </ItemTemplate>
                            </asp:TemplateField>
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
