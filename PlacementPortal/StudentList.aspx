<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentList.aspx.cs" Inherits="PlacementPortal.StudentList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Students</title>
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
                <div class="content-box gv sl">
                    <asp:SqlDataSource ID="sqdStudList" runat="server" ProviderName="System.Data.SqlClient" ConnectionString="<%$ConnectionStrings: DBConStr %>"
                    SelectCommand="select * from UserDetails"></asp:SqlDataSource>
                    <asp:Label ID="lblDetails" runat="server" Text="LIST OF ALL STUDENTS" CssClass="gv-label sl"></asp:Label><br />
                    <asp:Label ID="lblInfo" runat="server" Text="(You can sort on the basis of Name and CGPA)" CssClass="gv-label info sl"></asp:Label>
                    <asp:GridView ID="gvComList" runat="server" DataSourceID="sqdStudList" AutoGenerateColumns="false" 
                        HeaderStyle-CssClass="gv-header" RowStyle-CssClass="gv-row" CellPadding="10" CellSpacing="10" CssClass="gv" BorderColor="White"  
                        PageSize="5" AllowPaging="true" AllowSorting="true">
                        <SortedAscendingHeaderStyle CssClass="gv-header-sort" />
                        <SortedAscendingHeaderStyle CssClass="gv-header-sort" />
                        <Columns>
                            <asp:TemplateField HeaderText="Name" SortExpression="First Name">
                                <ItemTemplate>
                                    <%#Eval("First Name")%> <%#Eval("Middle Name")%> <%#Eval("Last Name")%>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Permanent Address" HeaderText="Address" />
                            <asp:BoundField DataField="10th Board of Education" HeaderText="10th Board" />
                            <asp:BoundField DataField="10th Board Percentage" HeaderText="10th Marks" />
                            <asp:BoundField DataField="12th Board of Education" HeaderText="12th Board" />
                            <asp:BoundField DataField="12th Board Percentage" HeaderText="12th Marks" />
                            <asp:BoundField DataField="College" HeaderText="College" />
                            <asp:BoundField DataField="Branch" HeaderText="Branch" />
                            <asp:BoundField DataField="College CGPA" HeaderText="CGPA" SortExpression="College CGPA" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
