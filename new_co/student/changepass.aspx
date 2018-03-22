<%@ Page Title="" Language="C#" MasterPageFile="~/student/student.Master" AutoEventWireup="true" CodeBehind="changepass.aspx.cs" Inherits="new_co.student.changepass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
<style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 454px;
        }
        .style3
        {
            width: 454px;
            height: 21px;
        }
        .style4
        {
            height: 21px;
        }
        .style5
        {
        }
        .style6
        {
            height: 21px;
            width: 187px;
        }
        .style7
        {
            width: 187px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br />
<p align="center" style="font-weight: bold; font-size: large; color: #000000;">
                    Change Password</p>


    <table class="style1">
        <tr>
            <td align="right" class="style2" style="color: #000000">
                &nbsp;</td>
            <td class="style7">
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2" style="color: #000000">
                UserID</td>
            <td class="style7">
                <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2" style="color: #000000">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2" style="color: #000000">
                Old Password</td>
            <td class="style7">
                <asp:TextBox ID="TextBox1" runat="server" Width="177px" 
                     TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2" style="color: #000000">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style3" style="color: #000000">
                New
                Password</td>
            <td class="style6">
                <asp:TextBox ID="TextBox2" runat="server" Width="174px" TextMode="Password"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style3" style="color: #000000">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2" style="color: #000000">
                &nbsp;</td>
            <td class="style5" colspan="2">
            &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2" style="color: #000000">
                &nbsp;</td>
            <td class="style7">
                <asp:Button ID="Button1" runat="server" BackColor="#483E35" ForeColor="White" 
                    Height="33px" onclick="Button1_Click" Text="Update" Width="177px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2" style="color: #000000">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2" style="color: #000000">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2" style="color: #000000">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2" style="color: #000000">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>


<br />
</asp:Content>
