<%@ Page Title="" Language="C#" MasterPageFile="~/hr/hr.Master" AutoEventWireup="true" CodeFile="hraddvacncy.aspx.cs" Inherits="new_co.hr.hraddvacncy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
<style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
        width: 143px;
    }
        .style3
        {
        width: 233px;
    }
    .style4
    {
        width: 21px;
    }
    .style5
    {
        width: 162px;
    }
    .style6
    {
        width: 172px;
        font-weight: 700;
    }
    .style7
    {
        width: 143px;
        height: 54px;
    }
    .style8
    {
        width: 233px;
        height: 54px;
    }
    .style9
    {
        width: 21px;
        height: 54px;
    }
    .style10
    {
        width: 162px;
        height: 54px;
    }
    .style11
    {
        width: 172px;
        font-weight: 700;
        height: 54px;
    }
    .style12
    {
        height: 54px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br />
                     <p align="center" 
    style="color: #000000; font-weight: bolder; font-size: xx-large;">Add Vacancy</p>
    <table class="style1">
        <tr>
            <td align="right" class="style2" style="color: #000000">
                UserID</td>
            <td class="style3">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="style4">
                &nbsp;</td>
            <td align="right" class="style5" style="color: #000000">
                CompanyID</td>
            <td class="style6">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            &nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="False" ForeColor="Black" 
                    Text="Wipro"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2" style="color: #000000">
                Start Date</td>
            <td class="style3">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>
                <br />
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td align="right" class="style5" style="color: #000000">
                &nbsp;Apply By</td>
            <td class="style6">
                <asp:TextBox ID="TextBox12" runat="server" TextMode="Date"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2" style="color: #000000">
                Duration</td>
            <td class="style3">
                <asp:TextBox ID="TextBox4" runat="server" Width="118px"></asp:TextBox>
            &nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Month</asp:ListItem>
                    <asp:ListItem>Year</asp:ListItem>
                </asp:DropDownList>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server"
     ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Invalid Duration"
     ForeColor="Red" ValidationExpression="[0-9]{2}"></asp:RegularExpressionValidator>

                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Required" ForeColor="Red"></asp:RegularExpressionValidator>

            </td>
            <td class="style4">
                &nbsp;</td>
            <td align="right" class="style5" style="color: #000000">
                Stipend</td>
            <td class="style6" style="color: #000000; font-weight: lighter;">
                <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                (Rs/-)</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style7" style="color: #000000">
                Type</td>
            <td class="style8">
                <asp:CheckBox ID="CheckBox5" runat="server" Font-Bold="False" ForeColor="Black" AutoPostBack="true"
                    oncheckedchanged="CheckBox5_CheckedChanged" Text="Part Time" />
                <br />
                <asp:CheckBox ID="CheckBox6" runat="server" Font-Bold="False" ForeColor="Black" AutoPostBack="true"
                    oncheckedchanged="CheckBox5_CheckedChanged" Text="Full Time" />
                <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="Not Mentioned" 
                    Visible="False"></asp:Label>
            </td>
            <td class="style9">
                </td>
            <td align="right" class="style10" style="color: #000000">
                </td>
            <td class="style11">
                <asp:CheckBox ID="CheckBox3" runat="server" Font-Bold="False" ForeColor="Black" AutoPostBack="true"
                    oncheckedchanged="CheckBox3_CheckedChanged" Text="Unpaid" />
                <br />
                <asp:CheckBox ID="CheckBox4" runat="server" Font-Bold="False" ForeColor="Black" AutoPostBack="true"
                    oncheckedchanged="CheckBox3_CheckedChanged" 
                    Text="Depend on Project/Work" />
            </td>
            <td class="style12">
                </td>
        </tr>
        <tr>
            <td align="right" class="style2" style="color: #000000">
                &nbsp;</td>
            <td class="style3" style="color: #000000">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td align="right" class="style5" style="color: #000000">
                Location</td>
            <td class="style6">
                <asp:TextBox ID="TextBox17" Style="text-transform: uppercase" runat="server" Width="251px"></asp:TextBox>
                <br />
                <asp:CheckBox ID="CheckBox2" runat="server" Font-Bold="False" ForeColor="Black" AutoPostBack="true"
                    oncheckedchanged="CheckBox2_CheckedChanged" Text="Work at Home" />
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server"
     ControlToValidate="TextBox17" Display="Dynamic" ErrorMessage="Invalid Location(Only (,) and Alphabets)"
     ForeColor="Red" ValidationExpression="[A-Za-z\s,]*$"></asp:RegularExpressionValidator>

            </td>
        </tr>
        <tr>
            <td align="right" class="style2" style="color: #000000">
                About Company</td>
            <td class="style3">
                <asp:TextBox ID="TextBox9" runat="server" Height="55px" TextMode="MultiLine" 
                    Width="257px"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox9" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td align="right" class="style5" style="color: #000000">
                About Vacancy</td>
            <td class="style6">
                <asp:TextBox ID="TextBox8" runat="server" Height="55px" TextMode="MultiLine" 
                    Width="257px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox8" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2" style="color: #000000">
                Website</td>
            <td class="style3">
                <asp:TextBox ID="TextBox7" runat="server" Width="198px"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server"
     ControlToValidate="TextBox7" Display="Dynamic" ErrorMessage="Invalid URL(Just Copy-Paste)"
     ForeColor="Red" ValidationExpression="[A-Za-z\s,]*$"></asp:RegularExpressionValidator>

            </td>
            <td align="right" class="style5" style="color: #000000">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2" style="color: #000000">
                Skill Requirments</td>
            <td class="style3">
                <asp:TextBox ID="TextBox14" runat="server" Height="55px" TextMode="MultiLine" 
                    Width="257px"></asp:TextBox>
            </td>
            <td class="style4">
                &nbsp;</td>
            <td align="right" class="style5" style="color: #000000">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2" style="color: #000000">
                Area/Categories</td>
            <td class="style3" style="color: #000000">
                <asp:TextBox ID="TextBox16" runat="server" Style="text-transform: uppercase" Width="247px"></asp:TextBox>
                <br />
                *Seprated by ( , )<br />
                <br />
            </td>
            <td class="style4">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server"
     ControlToValidate="TextBox16" Display="Dynamic" ErrorMessage="Invalid Location(Only (,) and Alphabets)"
     ForeColor="Red" ValidationExpression="[A-Za-z\s,]*$"></asp:RegularExpressionValidator>

            </td>
            <td align="left" class="style5" style="color: #000000">
               
                &nbsp;</td>
            <td class="style6">
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
            <td class="style4">
                &nbsp;</td>
            <td align="right" class="style5" style="color: #000000">
                    <asp:Label ID="Label1" runat="server" ForeColor="Black"></asp:Label>
                </td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
</asp:Content>
