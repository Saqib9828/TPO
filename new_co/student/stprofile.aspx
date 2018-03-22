<%@ Page Title="" Language="C#" MasterPageFile="~/student/student.Master" AutoEventWireup="true" CodeBehind="stprofile.aspx.cs" Inherits="new_co.student.stprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
 <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
        }
        .style3
        {
            width: 263px;
        }
        .style4
        {
            width: 257px;
        }
        .style5
        {
            width: 257px;
            height: 21px;
        }
        .style6
        {
            width: 263px;
            height: 21px;
        }
        .style7
        {
            height: 21px;
        }
        .style8
        {
            width: 29px;
        }
        .style9
        {
            height: 21px;
            width: 29px;
        }
        .style10
        {
            width: 257px;
            height: 58px;
        }
        .style11
        {
            width: 263px;
            height: 58px;
        }
        .style12
        {
            height: 58px;
        }
        .style13
        {
            width: 29px;
            height: 58px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<p align="center" 
    style="color: #000000; font-weight: bolder; font-size: xx-large;">Profile</p>
      <asp:Repeater ID="Repeater1" runat="server">
             <HeaderTemplate>
             </HeaderTemplate>
             <ItemTemplate>
    <table class="style1" style="color: #000000">
        <tr>
            <td align="center" class="style2" colspan="5">
                <asp:Image ID="Image1" runat="server" Height="200px" Width="170px" ImageUrl='<%#Eval("Photo") %>' /></td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2" colspan="2">
                <p align="left" style="font-weight: bold; font-size: large;">Personal Detail</p></td>
            <td>
                &nbsp;</td>
            <td colspan="2">
                <p align="left" style="font-weight: bold; font-size: large;">
                    Educational Detail</p>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left" class="style4">
                EnrolNo</td>
            <td class="style3">
                <asp:Label ID="Label2" Text='<%#Eval("Enro_No") %>' runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td align="left" class="style8">
                Faculty</td>
            <td>
                <asp:Label ID="Label9" runat="server" Text='<%#Eval("Faculty") %>'></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left" class="style5">
                Name</td>
            <td class="style6">
                <asp:Label ID="Label3" runat="server" Text='<%#Eval("Name") %>'></asp:Label>
            </td>
            <td class="style7">
                </td>
            <td class="style9">
                Department</td>
            <td class="style7">
                <asp:Label ID="Label10" runat="server" Text='<%#Eval("Department") %>'></asp:Label>
            </td>
            <td class="style7">
                </td>
            <td class="style7">
                </td>
        </tr>
        <tr>
            <td align="left" class="style4">
                Father&#39;s Name</td>
            <td class="style3">
                <asp:Label ID="Label4" runat="server" Text='<%#Eval("Father_name") %>'></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td class="style8">
                Course</td>
            <td>
                <asp:Label ID="Label11" runat="server" Text='<%#Eval("Course") %>'></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left" class="style4">
                DOB</td>
            <td class="style3">
                <asp:Label ID="Label5" runat="server" Text='<%#Eval("DOB") %>'></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td class="style8">
                Semester</td>
            <td>
                <asp:Label ID="Label12" runat="server" Text='<%#Eval("Semester") %>'></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left" class="style4">
                Mobile No.</td>
            <td class="style3">
                <asp:Label ID="Label6" runat="server" Text='<%#Eval("Mobile_No") %>'></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td class="style8">
                CGPA/Persentage</td>
            <td>
                <asp:Label ID="Label13" runat="server" Text='<%#Eval("[CGPA/Persentage]") %>'></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left" class="style4">
                Email ID</td>
            <td class="style3">
                <asp:Label ID="Label7" runat="server" Text='<%#Eval("Email_ID") %>'></asp:Label>
            </td>
            <td>
           
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left" class="style10">
                Address</td>
            <td class="style11">
                <asp:Label ID="Label8" runat="server" Text='<%#Eval("Address") %>'></asp:Label>
            </td>
            <td class="style12">
                </td>
           
            <td class="style12">
                </td>
            <td class="style12">
                </td>
        </tr>
        <tr>
            <td align="left" class="style4">
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
            <td align="left" class="style4">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style8">
                
            </td>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
       
       
       
    </table>
    </ItemTemplate>
    </asp:Repeater>
    <asp:Button ID="Button1" runat="server" BackColor="#483E35" ForeColor="White" 
                    Height="33px" onclick="Button1_Click" Text="Update" Width="93px" />
    <br />

</asp:Content>
