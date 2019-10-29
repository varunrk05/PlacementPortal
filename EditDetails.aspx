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
            <br />
            
            First Name:<br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            
            <br />
            Middle Name:<br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            
            <br />
            Last Name:<br />
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            Permanent Address:<br />
            <asp:TextBox ID="TextBox10" runat="server" Height="102px" Width="576px"></asp:TextBox>
            
            <br />
            <br />
            10th Board of Education:<br />
            <asp:DropDownList ID="DropDownList1" runat="server">

            </asp:DropDownList>
            <br />
            10th Board Percentage:<br />
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            12th Board of Education:<br />
            <asp:DropDownList ID="DropDownList2" runat="server">
            </asp:DropDownList>
            <br />
            12th Board Percentage:<br />
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <br />
            <br />
            College:<br />
            <asp:DropDownList ID="DropDownList3" runat="server">
            </asp:DropDownList>
            <br />
            College CGPA:<br />
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <br />
            Internship Details:<br />
            <asp:TextBox ID="TextBox7" runat="server" Height="90px" Width="720px"></asp:TextBox>
            

            <br />
            <br />
            Project Details:<br />
            <asp:TextBox ID="TextBox8" runat="server" Height="90px" Width="720px"></asp:TextBox>
            
            <br />
            <br />
            Extra Curricular Activities:<br />
            <asp:TextBox ID="TextBox9" runat="server" Height="90px" Width="720px"></asp:TextBox>
            
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save Details" />
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
