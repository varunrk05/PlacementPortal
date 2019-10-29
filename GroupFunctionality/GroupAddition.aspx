﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GroupAddition.aspx.cs" Inherits="WebApplication3.GroupAddition" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            Name of the Group:</p>
        <p>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1"  runat="server" ErrorMessage="Enter Name" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
        </p>
        <p>
            Group Details:</p>
        <p>
            <asp:TextBox ID="TextBox2" runat="server" Height="101px"  Width="579px"></asp:TextBox>
            
        </p>
        <p>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Details" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
            
        </p>
        <p>
            Group Leader:</p>
        <p>
            Name :<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp; Registration Number:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Group Leaders Name" ControlToValidate ="TextBox3"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Enter valid reg number" MinimumValue ="0" MaximumValue ="10000000" Type="Integer" ></asp:RangeValidator>
        </p>
        <p>
            <asp:Button ID="Button2" runat="server" Text="Create Groups" OnClick ="Button2_Click" />
        </p>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="ADD MEMBERS" OnClick="Button1_Click" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
