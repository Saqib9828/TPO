<%@ Page Title="" Language="C#" MasterPageFile="~/hr/hr.Master" AutoEventWireup="true" CodeBehind="hreditprofile.aspx.cs" Inherits="new_co.hr.hreditprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 447px;
        }
        .style3
        {
            width: 269px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br />
                     <p align="center" 
    style="color: #000000; font-weight: bolder; font-size: xx-large;">Edit HR Profile</p>
    <table class="style1">
        <tr>
            <td align="right" class="style2" style="color: #000000">
                UserID</td>
            <td class="style3">
                <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2" style="color: #000000">
                Name</td>
            <td class="style3">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2" style="color: #000000">
                Contact</td>
            <td class="style3">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2" style="color: #000000">
                Alternate Contact</td>
            <td class="style3">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2" style="color: #000000">
                Email</td>
            <td class="style3">
                <asp:TextBox ID="TextBox5" runat="server" Width="202px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2" style="color: #000000">
                Address</td>
            <td class="style3">
                <asp:TextBox ID="TextBox9" runat="server" Height="55px" TextMode="MultiLine" 
                    Width="257px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox9" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2" style="color: #000000">
                Fax</td>
            <td class="style3">
                <asp:TextBox ID="TextBox6" runat="server" Width="198px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2" style="color: #000000">
                Website</td>
            <td class="style3">
                <asp:TextBox ID="TextBox7" runat="server" Width="198px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2" style="color: #000000">
                Other Info</td>
            <td class="style3">
                <asp:TextBox ID="TextBox8" runat="server" Height="55px" TextMode="MultiLine" 
                    Width="257px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2" style="color: #000000">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2" style="color: #000000">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" BackColor="#483E35" ForeColor="White" 
                    Height="33px" onclick="Button1_Click" Text="Submit" Width="177px" />
            </td>
            <td>
                <asp:Label ID="Label1" runat="server" ForeColor="#FF3300"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
</asp:Content>
