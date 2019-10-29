<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddMembers.aspx.cs" Inherits="PlacementPortal.AddMembers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add members</title>
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBConStr %>" 
                        SelectCommand="SELECT [Registration Number] AS Registraton_Number, [First Name] AS First_Name, [Middle Name] AS Middle_Name, [Last Name] AS Last_Name, [College], [College CGPA] AS College_CGPA FROM [UserDetails]">
                    </asp:SqlDataSource>
                    <asp:Label ID="lblDetails" runat="server" Text="LIST OF ALL STUDENTS" CssClass="gv-label"></asp:Label><br />
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Registraton_Number" DataSourceID="SqlDataSource1"
                        HeaderStyle-CssClass="gv-header" RowStyle-CssClass="gv-row" CellPadding="10" CellSpacing="10" CssClass="gv" BorderColor="White">
                        <SortedAscendingHeaderStyle CssClass="gv-header-sort" />
                        <SortedAscendingHeaderStyle CssClass="gv-header-sort" />
                        <Columns>
                            <asp:BoundField DataField="Registraton_Number" HeaderText="Registraton_Number" ReadOnly="True" SortExpression="Registraton_Number" />
                            <asp:BoundField DataField="First_Name" HeaderText="First_Name" SortExpression="First_Name" />
                            <asp:BoundField DataField="Middle_Name" HeaderText="Middle_Name" SortExpression="Middle_Name" />
                            <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name" />
                            <asp:BoundField DataField="College" HeaderText="College" SortExpression="College" />
                            <asp:BoundField DataField="College_CGPA" HeaderText="College_CGPA" SortExpression="College_CGPA" />
                            <asp:TemplateField HeaderText="Select Data">  
                                <EditItemTemplate>  
                                    <asp:CheckBox ID="CheckBox1" runat="server" />  
                                </EditItemTemplate>  
                                <ItemTemplate>  
                                    <asp:CheckBox ID="CheckBox1" runat="server" />  
                                </ItemTemplate>  
                            </asp:TemplateField> 
                        </Columns>
                    </asp:GridView>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" CssClass="btn-home sub am"/>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
