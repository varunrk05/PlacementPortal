<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditDetails.aspx.cs" Inherits="WebApplication13.EditDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Registration Number:<br />
            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Reg number required" ControlToValidate ="TextBox11"></asp:RequiredFieldValidator>
            <br />
            
            <br />
            
            First Name:<br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate ="TextBox1" errormessage="Please enter your first name!" runat ="server" />
            <br />
            Middle Name:<br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate ="TextBox2" errormessage="Please enter your middle name!" runat ="server" />
            
            <br />
            Last Name:<br />
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate ="TextBox3" errormessage="Please enter your last name!" runat ="server" />
            <br />
            <br />
            Permanent Address:<br />
            
            <asp:TextBox ID="TextBox10" runat="server" Height="102px" Width="576px"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate ="TextBox10" errormessage="Please enter your perm address!" runat ="server" />
            <br />
            <br />
            10th Board of Education:<br />
            <asp:DropDownList ID="DropDownList1" runat="server">

            </asp:DropDownList>
            <br />
            10th Board Percentage:<br />
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RangeValidator runat ="server" type ="Double" ControlToValidate ="TextBox4" minimumvalue ="0" MaximumValue ="100" ErrorMessage ="Invalid 10th marks!"/>
            <br />
            12th Board of Education:<br />
            <asp:DropDownList ID="DropDownList2" runat="server">
            </asp:DropDownList>
            <br />
            12th Board Percentage:<br />
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <asp:RangeValidator runat ="server" type ="Double" ControlToValidate ="TextBox6" minimumvalue ="0" MaximumValue ="100" ErrorMessage ="Invalid 12th marks!"/>
            <br />
            <br />
            College:<br />
            <asp:DropDownList ID="DropDownList3" runat="server">
            </asp:DropDownList>
            <br />
            College CGPA:<br />
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate ="TextBox4" errormessage="Please enter your Colcgpa!" type="Double" runat ="server" minimumvalue ="0" maximumvalue ="10"/>
            <br />

            <br />
            Internship Details:<br />
            <asp:TextBox ID="TextBox7" runat="server" Height="90px" Width="720px"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate ="TextBox7" runat ="server" ErrorMessage ="Enter internship details!" />

            <br />
            <br />
            Project Details:<br />
            <asp:TextBox ID="TextBox8" runat="server" Height="90px" Width="720px"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate ="TextBox8" runat ="server" ErrorMessage ="Enter project details!" />
            <br />
            <br />
            Extra Curricular Activities:<br />
            <asp:TextBox ID="TextBox9" runat="server" Height="90px" Width="720px"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate ="TextBox9" runat ="server" ErrorMessage ="Enter extra curricular details!" />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save Details" />
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
            <br />
        </div>
    </form>
</body>
</html>
