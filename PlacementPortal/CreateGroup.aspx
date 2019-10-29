<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateGroup.aspx.cs" Inherits="PlacementPortal.CreateGroup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Group</title>
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
            <div class="form-content cg">
                <div class="content-box ac">
                    <div class="content-box-main">
                        <asp:Label ID="lblName" runat="server" Text="Name of the Group:" CssClass="lbl-gen"></asp:Label><br />
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="tb-gen"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1"  runat="server" ErrorMessage="Enter Name" ControlToValidate="TextBox1" CssClass="rfv-gen"></asp:RequiredFieldValidator>
                        <br />
                        <asp:Label ID="lblGD" runat="server" Text="Group Details:" CssClass="lbl-gen"></asp:Label><br />
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="tb-gen"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Details" ControlToValidate="TextBox2" CssClass="rfv-gen"></asp:RequiredFieldValidator><br />
                        <asp:Label ID="lblGl" runat="server" Text="Group Leader:" CssClass="lbl-gen"></asp:Label><br />
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="tb-gen"></asp:TextBox><br />
                        <asp:Label ID="lblrn" runat="server" Text="Registration Number:" CssClass="lbl-gen"></asp:Label><br />
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="tb-gen"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Group Leaders Name" ControlToValidate ="TextBox3" CssClass="rfv-gen"></asp:RequiredFieldValidator><br />
                        <asp:Button ID="Button2" runat="server" Text="Create Group" OnClick="Button2_Click" CssClass="btn-home sub"/><br />
                        <asp:Button ID="Button1" runat="server" Text="Add Members" OnClick="Button1_Click" CssClass="btn-home sub"/>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
