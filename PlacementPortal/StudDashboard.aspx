<%@ Page Title="" Language="C#" MasterPageFile="~/DashboardMaster.Master" AutoEventWireup="true" CodeBehind="StudDashboard.aspx.cs" Inherits="PlacementPortal.StudDashboard" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
        <div class="left-content-main">
            <div class="info-container">
                <div class="info-container-main">
                    <asp:Image ID="imgLogo" runat="server" ImageUrl="~/Images/mitLogo.png" CssClass="img-gen"/>
                    <asp:Label ID="nameLbl" runat="server" Text="Name" CssClass="lbl-gen info"></asp:Label><br />
                    <asp:Label ID="branchLbl" runat="server" Text="Branch" CssClass="lbl-gen info"></asp:Label><br />
                    <asp:Label ID="regLbl" runat="server" Text="RegNo" CssClass="lbl-gen info"></asp:Label>
                </div>
            </div>
        </div>
        <div class="right-content-main">
            <div class="btn-container">
                <asp:Button ID="btnViewProf" runat="server" Text="View Profile" CssClass="btn-main" OnClick="btnViewProf_Click"/><br />
                <asp:Button ID="btnUpdProf" runat="server" Text="Update Profile" CssClass="btn-main" OnClick="btnUpdProf_Click"/><br />
                <asp:Button ID="btnViewComp" runat="server" Text="View Companies" CssClass="btn-main" OnClick="btnViewComp_Click"/><br />
                <asp:Button ID="btnSearch" runat="server" Text="Search For Companies" CssClass="btn-main" OnClick="btnSearch_Click" /><br />
                <asp:Button ID="btnGroup" runat="server" Text="View Groups" CssClass="btn-main" OnClick="btnGroup_Click" /><br />
            </div> 
        </div>
    </div>
</asp:Content>
