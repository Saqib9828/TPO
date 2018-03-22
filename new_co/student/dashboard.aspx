<%@ Page Title="" Language="C#" MasterPageFile="~/student/student.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="new_co.student.dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<p align="center" 
    style="color: #000000; font-weight: bolder; font-size: xx-large;">Dashboard</p>
    <asp:Repeater ID="Repeater1" runat="server">
             <HeaderTemplate>
                <table class="style1" style="width: 100%">
                    
         
             <tr>
                 <td style="color: #000000; font-weight: bold; font-size: medium; font-family: 'times New Roman', Times, serif">
                     Apply Date</td>
                 <td style="color: #000000; font-weight: bold; font-size: medium; font-family: 'times New Roman', Times, serif">
                     Profile</td>
                 <td style="color: #000000; font-weight: bold; font-size: medium; font-family: 'times New Roman', Times, serif">
                     Company</td>
                 <td style="color: #000000; font-weight: bold; font-size: medium; font-family: 'times New Roman', Times, serif">
                     Application Stetus
                     </td>
                <td style="color: #000000; font-weight: bold; font-size: medium; font-family: 'times New Roman', Times, serif">
                     &nbsp;
                     </td>
             </tr>
             </HeaderTemplate>
             <ItemTemplate>
                
         <br />
         
             <tr>
                 <td style="font-family: 'times New Roman', Times, serif; font-size: medium; color: #000000;">
                     <asp:Label ID="Label2" runat="server" Text='<%#Eval("datee", "{0:d}") %>' ></asp:Label>
                 </td>
                 <td style="font-family: 'times New Roman', Times, serif; font-size: medium; color: #000000;">
                     <asp:Label ID="Label3" runat="server" Text='<%#Eval("cat") %>'></asp:Label>
                 </td>
                 <td style="font-family: 'times New Roman', Times, serif; font-size: medium; color: #000000;">
                     <asp:Label ID="Label5" runat="server" Text='<%#Eval("co_name", "{0:d}") %>'></asp:Label>
                 </td>
                 <td style="font-family: 'times New Roman', Times, serif; font-size: medium; color: #000000;">
                     <asp:Label ID="Label6" runat="server" Text='<%#Eval("status") %>'></asp:Label>
                 </td>
                 <td style="font-family: 'times New Roman', Times, serif; font-size: medium; color: #000000;">
                     <a href="detailvacancy.aspx?u=<%#Eval("vacancy_no") %>" style="font-size: large; font-family: 'times New Roman', Times, serif; font-weight: bold; color: #000000; text-decoration: none;">View Detail</a>
                 </td>
             </tr>
    
             </ItemTemplate>
             <SeparatorTemplate>
             
             </SeparatorTemplate>
             <FooterTemplate>
             </table>
             </FooterTemplate>
    </asp:Repeater>
</asp:Content>
