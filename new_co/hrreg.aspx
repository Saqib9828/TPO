<%@ Page Title="" Language="C#" MasterPageFile="~/all.Master" AutoEventWireup="true" CodeBehind="hrreg.aspx.cs" Inherits="new_co.hrreg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <p align="center" 
    style="color: #000000; font-weight: bolder; font-size: xx-large;">HR Registration Form</p>
    <table class="style1" style="color: #000000">
        <tr>
            <td align="right" class="style2">
                &nbsp;</td>
            <td align="right" class="style2" colspan="7">
                <p align="center" style="font-weight: bold; font-size: large;">&nbsp;</p>
                <p align="center" style="font-weight: bold; font-size: large;">
                    Pre-Registration Details</p>
            </td>
        </tr>
        <tr>
            <td align="right" class="style4">
                &nbsp;</td>
            <td align="right" class="style4">
                Company Name</td>
            <td class="style3">
                <asp:TextBox ID="TextBox1" runat="server" Width="226px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td align="left" class="style8">
                Type</td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server" Width="226px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style4">
                &nbsp;</td>
            <td align="right" class="style4">
                Company HR</td>
            <td class="style3">
                <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;</td>
            <td align="right" class="style4">
                Mobile No.</td>
            <td class="style3">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td class="style8">
                Message</td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server" Height="54px" TextMode="MultiLine" 
                    Width="231px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style4">
                &nbsp;</td>
            <td align="right" class="style4">
                Alternate Contact</td>
            <td class="style3">
                <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td class="style8">
                E-Mail</td>
            <td>
                <asp:TextBox ID="TextBox11" runat="server" Width="226px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style4">
                &nbsp;</td>
            <td align="right" class="style4">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style4">
                &nbsp;</td>
            <td align="right" class="style4">
                Address</td>
            <td class="style3">
                <asp:TextBox ID="TextBox7" runat="server" Height="54px" TextMode="MultiLine" 
                    Width="231px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td class="style8">
                Fax</td>
            <td>
                <asp:TextBox ID="TextBox12" runat="server" Width="226px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style4">
                &nbsp;</td>
            <td align="right" class="style4">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style4">
                &nbsp;</td>
            <td align="right" class="style4">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style8">
                <asp:Button ID="Button1" runat="server" BackColor="#483E35" ForeColor="White" 
                    Height="33px" onclick="Button1_Click" Text="Submit" Width="93px" />
            </td>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style4">
                &nbsp;</td>
            <td align="right" class="style4">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style4">
                &nbsp;</td>
            <td align="right" class="style4">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style4">
                &nbsp;</td>
            <td align="right" class="style4">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style4">
                &nbsp;</td>
            <td align="right" class="style4">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style4">
                &nbsp;</td>
            <td align="right" class="style4">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
</asp:Content>
