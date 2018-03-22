<%@ Page Title="" Language="C#" MasterPageFile="~/hr/hr.Master" AutoEventWireup="true" CodeBehind="hrhome.aspx.cs" Inherits="new_co.hr.hrhome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <p align="center" 
    style="color: #000000; font-weight: bolder; font-size: xx-large;">Vacancies</p>

     <asp:Repeater ID="Repeater1" runat="server">
             <HeaderTemplate>
                <table class="style1" style="width: 100%">
                    
         
             <tr>
                 <td style="color: #000000; font-weight: bold; font-size: medium; font-family: 'times New Roman', Times, serif">
                     Start Date</td>
                 <td style="color: #000000; font-weight: bold; font-size: medium; font-family: 'times New Roman', Times, serif">
                     Type</td>
                 <td style="color: #000000; font-weight: bold; font-size: medium; font-family: 'times New Roman', Times, serif">
                     Stipend</td>
                 <td style="color: #000000; font-weight: bold; font-size: medium; font-family: 'times New Roman', Times, serif">
                     Skill Required
                     </td>
                 <td style="color: #000000; font-weight: bold; font-size: medium; font-family: 'times New Roman', Times, serif">
                     Category
                     </td>
                 <td style="color: #000000; font-weight: bold; font-size: medium; font-family: 'times New Roman', Times, serif">
                     Location
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
                     <asp:Label ID="Label2" runat="server" Text='<%#Eval("start_date", "{0:d}") %>' ></asp:Label>
                 </td>
                 <td style="font-family: 'times New Roman', Times, serif; font-size: medium; color: #000000;">
                     <asp:Label ID="Label3" runat="server" Text='<%#Eval("type") %>'></asp:Label>
                 </td>
                 <td style="font-family: 'times New Roman', Times, serif; font-size: medium; color: #000000;">
                     <asp:Label ID="Label5" runat="server" Text='<%#Eval("stipend") %>'></asp:Label>
                 </td>
                 <td style="font-family: 'times New Roman', Times, serif; font-size: medium; color: #000000;">
                     <asp:Label ID="Label6" runat="server" Text='<%#Eval("skill_requ") %>'></asp:Label>
                 </td>
                  <td style="font-family: 'times New Roman', Times, serif; font-size: medium; color: #000000;">
                     <asp:Label ID="Label1" runat="server" Text='<%#Eval("cat") %>'></asp:Label>
                 </td>
                  <td style="font-family: 'times New Roman', Times, serif; font-size: medium; color: #000000;">
                     <asp:Label ID="Label4" runat="server" Text='<%#Eval("location") %>'></asp:Label>
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
