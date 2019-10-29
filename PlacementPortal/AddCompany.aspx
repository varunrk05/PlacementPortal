<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCompany.aspx.cs" Inherits="PlacementPortal.AddCompany" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Company Details</title>
    <link rel="stylesheet" type="text/css" href="Index.css" />
    <link href="https://fonts.googleapis.com/css?family=Oswald:400&display=swap" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-main">
            <div class="form-header">
                <div class="header-btn">
                    <div class="header-btn-main">
                        <asp:Button ID="btnHome" runat="server" Text="Home" CssClass="btn-home" OnClick="btnHome_Click" CausesValidation="false"/>
                    </div>
                </div>
            </div>
            <div class="form-content ac">
                <div class="content-box ac">
                    <div class="content-box-main">
                        <asp:Label ID="lblName" runat="server" Text="Company Name:" CssClass="lbl-gen"></asp:Label><br />
                        <asp:TextBox ID="tbName" runat="server" CssClass="tb-gen"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="tbName" ErrorMessage="Name is required" Display="Dynamic" CssClass="rfv-gen"></asp:RequiredFieldValidator><br />
                        <asp:Label ID="lblBranch" runat="server" Text="Eligible Branches:" CssClass="lbl-gen"></asp:Label><br />
                        <asp:CheckBoxList ID="cbBranch" runat="server" OnSelectedIndexChanged="cbBranch_SelectedIndexChanged" CssClass="td-gen">
                            <asp:ListItem>CS</asp:ListItem>
                            <asp:ListItem>CC</asp:ListItem>
                            <asp:ListItem>IT</asp:ListItem>
                            <asp:ListItem>EE</asp:ListItem>
                            <asp:ListItem>EC</asp:ListItem>
                            <asp:ListItem>IC</asp:ListItem>
                            <asp:ListItem>CV</asp:ListItem>
                            <asp:ListItem>ME</asp:ListItem>
                            <asp:ListItem>AU</asp:ListItem>
                            <asp:ListItem>AE</asp:ListItem>
                            <asp:ListItem>IP</asp:ListItem>
                            <asp:ListItem>PMT</asp:ListItem>
                            <asp:ListItem>BM</asp:ListItem>
                            <asp:ListItem>BT</asp:ListItem>
                        </asp:CheckBoxList><br />
                        <asp:Label ID="tbP" runat="server" Text="Placement:" CssClass="lbl-gen"></asp:Label><br />
                        <asp:RadioButtonList ID="rblP" runat="server" OnSelectedIndexChanged="rblP_SelectedIndexChanged" CssClass="td-gen">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList><br />
                        <asp:RequiredFieldValidator ID="rfvP" runat="server" ControlToValidate="rblP" ErrorMessage="Choose one" Display="Dynamic" CssClass="rfv-gen"></asp:RequiredFieldValidator><br />
                        <asp:Label ID="tbI" runat="server" Text="Internship:" CssClass="lbl-gen"></asp:Label><br />
                        <asp:RadioButtonList ID="rblI" runat="server" OnSelectedIndexChanged="rblI_SelectedIndexChanged" CssClass="td-gen">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList><br />
                        <asp:RequiredFieldValidator ID="rfvI" runat="server" ControlToValidate="rblI" ErrorMessage="Choose one" Display="Dynamic" CssClass="rfv-gen"></asp:RequiredFieldValidator><br />
                        <asp:Label ID="lblPI" runat="server" Text="Placement+Internship:" CssClass="lbl-gen"></asp:Label><br />
                        <asp:RadioButtonList ID="rblPI" runat="server" OnSelectedIndexChanged="rblPI_SelectedIndexChanged" CssClass="td-gen">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList><br />
                        <asp:RequiredFieldValidator ID="rvfPI" runat="server" ControlToValidate="rblPI" ErrorMessage="Choose one" Display="Dynamic" CssClass="rfv-gen"></asp:RequiredFieldValidator><br />
                        <asp:Label ID="lblCG" runat="server" Text="Min. CGPA:" CssClass="lbl-gen"></asp:Label><br />
                        <asp:TextBox ID="tbCG" runat="server" CssClass="tb-gen"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="rfvCG" runat="server" ControlToValidate="tbCG" ErrorMessage="Required" Display="Dynamic" CssClass="rfv-gen"></asp:RequiredFieldValidator><br />
                        <asp:Label ID="lblBL" runat="server" Text="Max. Backlogs:" CssClass="lbl-gen"></asp:Label><br />
                        <asp:TextBox ID="tbBL" runat="server" CssClass="tb-gen"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="rfvBL" runat="server" ControlToValidate="tbBL" ErrorMessage="Required" Display="Dynamic" CssClass="rfv-gen"></asp:RequiredFieldValidator><br />
                        <asp:Label ID="lbl10" runat="server" Text="Min. 10th Marks:" CssClass="lbl-gen"></asp:Label><br />
                        <asp:TextBox ID="tb10" runat="server" CssClass="tb-gen"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="rfv10" runat="server" ControlToValidate="tb10" ErrorMessage="Required" Display="Dynamic" CssClass="rfv-gen"></asp:RequiredFieldValidator><br />
                        <asp:Label ID="lbl12" runat="server" Text="Min. 12th Marks:" CssClass="lbl-gen"></asp:Label><br />
                        <asp:TextBox ID="tb12" runat="server" CssClass="tb-gen"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="rfv12" runat="server" ControlToValidate="tb12" ErrorMessage="Required" Display="Dynamic" CssClass="rfv-gen"></asp:RequiredFieldValidator><br />
                        <asp:Label ID="lblDip" runat="server" Text="Min. Diploma Marks" CssClass="lbl-gen"></asp:Label><br />
                        <asp:TextBox ID="tbDip" runat="server" CssClass="tb-gen"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="rfvDip" runat="server" ControlToValidate="tbDip" ErrorMessage="Required" Display="Dynamic" CssClass="rfv-gen"></asp:RequiredFieldValidator><br />
                        <asp:Label ID="lblCTC" runat="server" Text="CTC:" CssClass="lbl-gen"></asp:Label><br />
                        <asp:TextBox ID="tbCTC" runat="server" CssClass="tb-gen"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="rfvCTC" runat="server" ControlToValidate="tbCTC" ErrorMessage="Required" Display="Dynamic" CssClass="rfv-gen"></asp:RequiredFieldValidator><br />
                        <asp:Label ID="lblLoc" runat="server" Text="Work Location:" CssClass="lbl-gen"></asp:Label><br />
                        <asp:TextBox ID="tbLoc" runat="server" CssClass="tb-gen"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="rfvLoc" runat="server" ControlToValidate="tbLoc" ErrorMessage="Required" Display="Dynamic" CssClass="rfv-gen"></asp:RequiredFieldValidator>
                        <asp:Button ID="btnSubComp" runat="server" Text="Submit Data" OnClick="btnSubComp_Click" CssClass="btn-home sub"/>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
