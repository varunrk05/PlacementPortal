<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="PlacementPortal.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
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
                        <asp:Label ID="lblrn" runat="server" Text="Registration Number:" CssClass="lbl-gen"></asp:Label><br />
                        <asp:TextBox ID="TextBox11" runat="server" CssClass="tb-gen"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Reg number required" ControlToValidate ="TextBox11"  CssClass="rfv-gen"></asp:RequiredFieldValidator><br />
                        <asp:Label ID="lblFN" runat="server" Text="First Name:" CssClass="lbl-gen"></asp:Label><br />
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="tb-gen"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ControlToValidate ="TextBox1" errormessage="Please enter your first name!" runat ="server" CssClass="rfv-gen"/><br />
                        <asp:Label ID="lblMN" runat="server" Text="Middle Name:" CssClass="lbl-gen"></asp:Label><br />
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="tb-gen"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ControlToValidate ="TextBox2" errormessage="Please enter your middle name!" runat ="server"  CssClass="rfv-gen" /><br />
                        <asp:Label ID="lblLN" runat="server" Text="Last Name:" CssClass="lbl-gen"></asp:Label><br />
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="tb-gen"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ControlToValidate ="TextBox3" errormessage="Please enter your last name!" runat ="server"  CssClass="rfv-gen"/><br />
                        <asp:Label ID="lblPA" runat="server" Text="Permanent Address:" CssClass="lbl-gen"></asp:Label><br />
                        <asp:TextBox ID="TextBox10" runat="server" CssClass="tb-gen"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ControlToValidate ="TextBox10" errormessage="Please enter your perm address!" runat ="server"  CssClass="rfv-gen"/><br />
                        <asp:Label ID="lblTenBE" runat="server" Text="10th Board of Education:" CssClass="lbl-gen"></asp:Label><br />
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="tb-gen"></asp:DropDownList><br />
                        <asp:Label ID="lblTenP" runat="server" Text="10th Board Percentage:" CssClass="lbl-gen"></asp:Label><br />
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="tb-gen"></asp:TextBox><br />
                        <asp:RangeValidator runat ="server" type ="Double" ControlToValidate ="TextBox4" minimumvalue ="0" MaximumValue ="100" ErrorMessage ="Invalid 10th marks!"  CssClass="rfv-gen"/><br />
                        <asp:Label ID="lblTweBE" runat="server" CssClass="lbl-gen"></asp:Label><br />
                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="tb-gen"></asp:DropDownList><br />
                        <asp:Label ID="lblTweP" runat="server" Text="12th Board Percentage:" CssClass="lbl-gen"></asp:Label><br />
                        <asp:TextBox ID="TextBox6" runat="server" CssClass="tb-gen"></asp:TextBox><br />
                        <asp:RangeValidator runat ="server" type ="Double" ControlToValidate ="TextBox6" minimumvalue ="0" MaximumValue ="100" ErrorMessage ="Invalid 12th marks!"  CssClass="rfv-gen"/><br />
                        <asp:Label ID="lblCol" runat="server" Text="College:" CssClass="lbl-gen"></asp:Label><br />
                        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="tb-gen"></asp:DropDownList><br />
                        <asp:Label ID="lblBr" runat="server" Text="Branch:" CssClass="lbl-gen"></asp:Label><br />
                        <asp:DropDownList ID="ddlBr" runat="server" CssClass="tb-gen"></asp:DropDownList><br />
                        <asp:Label ID="lblCG" runat="server" Text="College CGPA:" CssClass="lbl-gen"></asp:Label><br />
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="tb-gen"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ControlToValidate ="TextBox5" errormessage="Please enter your Colcgpa!" type="Double" runat ="server" minimumvalue ="0" maximumvalue ="10"  CssClass="rfv-gen"/><br />
                        <asp:Label ID="lblIntern" runat="server" Text="Internship Details:" CssClass="lbl-gen"></asp:Label><br />
                        <asp:TextBox ID="TextBox7" runat="server" CssClass="tb-gen"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ControlToValidate ="TextBox7" runat ="server" ErrorMessage ="Enter internship details!"  CssClass="rfv-gen"/><br />
                        <asp:Label ID="lblProj" runat="server" Text="Project Details:" CssClass="lbl-gen"></asp:Label><br />
                        <asp:TextBox ID="TextBox8" runat="server" CssClass="tb-gen"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ControlToValidate ="TextBox8" runat ="server" ErrorMessage ="Enter project details!"  CssClass="rfv-gen"/><br />
                        <asp:Label ID="lblEx" runat="server" Text="Extra Curricular Activities:" CssClass="lbl-gen"></asp:Label><br />
                        <asp:TextBox ID="TextBox9" runat="server" CssClass="tb-gen"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ControlToValidate ="TextBox9" runat ="server" ErrorMessage ="Enter extra curricular details!"  CssClass="rfv-gen"/><br />
                        <asp:Label ID="lblPass" runat="server" CssClass="lbl-gen" Text="Password:"></asp:Label><br />
                        <asp:TextBox ID="tbpass" TextMode="Password" runat="server" CssClass="tb-gen"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="rfvPass" runat="server" ControlToValidate="tbpass" ErrorMessage="Enter a password" CssClass="rfv-gen"></asp:RequiredFieldValidator><br />
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save Details" CssClass="btn-home sub"/>
                        <br />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
