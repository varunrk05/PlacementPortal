<%@ Page Title="" Language="C#" MasterPageFile="~/DashboardMaster.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="PlacementPortal.AdminDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
        <div class="left-content-main">
            <div class="info-container">
                <div class="info-container-main">
                    <asp:Image ID="imgLogo" runat="server" ImageUrl="~/Images/mitLogo.png" CssClass="img-gen"/>
                    <asp:Label ID="nameLbl" runat="server" Text="Name" CssClass="lbl-gen info"></asp:Label><br />
                    <asp:Label ID="deptLbl" runat="server" Text="Department" CssClass="lbl-gen info"></asp:Label><br />
                </div>
            </div>
        </div>
        <div class="right-content-main">
            <div class="btn-container">
                <asp:Button ID="btnComp" runat="server" Text="Add Company" CssClass="btn-main" OnClick="btnComp_Click"/><br />
                <asp:Button ID="btnViewComp" runat="server" Text="View Company List" CssClass="btn-main" OnClick="btnViewComp_Click" /><br />
                <asp:Button ID="btnStud" runat="server" Text="View Students List" CssClass="btn-main" OnClick="btnStud_Click"/><br />
                <asp:Button ID="btnCreateGroup" runat="server" Text="Create Group" CssClass="btn-main" OnClick="btnCreateGroup_Click" /><br /> 
            </div> 
        </div>
    </div>
</asp:Content>
