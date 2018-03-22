<%@ Page Title="" Language="C#" MasterPageFile="~/hr/hr.Master" AutoEventWireup="true" CodeBehind="checkapp.aspx.cs" Inherits="new_co.hr.checkapp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<p align="center" 
    style="color: #000000; font-weight: bolder; font-size: xx-large;">Applications</p>
    <asp:Repeater ID="Repeater1" runat="server">
             <HeaderTemplate>
                <table class="style1" style="width: 100%">
                    
         
             <tr>
                 <td style="color: #000000; font-weight: bold; font-size: medium; font-family: 'times New Roman', Times, serif">
                     Application ID</td>
                 <td style="color: #000000; font-weight: bold; font-size: medium; font-family: 'times New Roman', Times, serif">
                     Enrollment No</td>
                 <td style="color: #000000; font-weight: bold; font-size: medium; font-family: 'times New Roman', Times, serif">
                     Date</td>
                 <td style="color: #000000; font-weight: bold; font-size: medium; font-family: 'times New Roman', Times, serif">
                     Application Status
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
                     <asp:Label ID="Label2" runat="server" Text='<%#Eval("sr_no") %>' ></asp:Label>
                 </td>
                 <td style="font-family: 'times New Roman', Times, serif; font-size: medium; color: #000000;">
                     <asp:Label ID="Label3" runat="server" Text='<%#Eval("student_enrol") %>'></asp:Label>
                 </td>
                 <td style="font-family: 'times New Roman', Times, serif; font-size: medium; color: #000000;">
                     <asp:Label ID="Label5" runat="server" Text='<%#Eval("datee", "{0:d}") %>'></asp:Label>
                 </td>
                 <td style="font-family: 'times New Roman', Times, serif; font-size: medium; color: #000000;">
                     <asp:Label ID="Label6" runat="server" Text='<%#Eval("status") %>'></asp:Label>
                 </td>
                 <td style="font-family: 'times New Roman', Times, serif; font-size: medium; color: #000000;">
                     <a href="stdetail.aspx?u=<%#Eval("student_enrol") %>&o=<%#Eval("sr_no") %>" style="font-size: large; font-family: 'times New Roman', Times, serif; font-weight: bold; color: #000000; text-decoration: none;">View Detail</a>
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
