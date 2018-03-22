<%@ Page Title="" Language="C#" MasterPageFile="~/student/student.Master" AutoEventWireup="true" CodeFile="detailvacancy.aspx.cs" Inherits="new_co.student.detailvacancy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
 <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<p align="center" 
    style="color: #000000; font-weight: bold; font-size: xx-large;">Detail</p>
    <asp:Repeater ID="Repeater1" runat="server">
    <HeaderTemplate>
    </HeaderTemplate>
    <ItemTemplate>
        <div class="rep" style="width: 100%; height: auto; float: left; border-bottom-style: solid; border-bottom-width: 1px; border-bottom-color: #000000;">
         <asp:Label ID="Labelh" runat="server" Text='<%#Eval("cat") %>' Font-Bold="True" 
             Font-Size="X-Large" ForeColor="#9B4B31" Font-Names="Times New Roman"  text-transform="capitalize"></asp:Label>
             <br />
             <a href="<%#Eval("website") %>" style="font-size: large; font-family: 'times New Roman', Times, serif; font-weight: bold; color: #000000; text-decoration: none;"><%#Eval("co_name") %></a>
             <br />
            <h3 style="font-family: 'times New Roman', Times, serif; font-size: medium; font-weight: normal; color: #000000; text-decoration: underline; font-variant: normal;"> Location(s):&nbsp;
            <asp:Label ID="Labell" runat="server" Text='<%#Eval("location") %>' Font-Bold="True" 
             Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Black"></asp:Label></h3>
         <br />
         
         <table class="style1">
             <tr>
                 <td style="color: #000000; font-weight: bold; font-size: medium; font-family: 'times New Roman', Times, serif">
                     Start Date</td>
                 <td style="color: #000000; font-weight: bold; font-size: medium; font-family: 'times New Roman', Times, serif">
                     Duration</td>
                 <td style="color: #000000; font-weight: bold; font-size: medium; font-family: 'times New Roman', Times, serif">
                     Stipend</td>
                 <td style="color: #000000; font-weight: bold; font-size: medium; font-family: 'times New Roman', Times, serif">
                     Last Date</td>
                 <td style="color: #000000; font-weight: bold; font-size: medium; font-family: 'times New Roman', Times, serif">
                     Type</td>
             </tr>
             <tr>
                 <td style="font-family: 'times New Roman', Times, serif; font-size: medium; color: #000000;">
                     <asp:Label ID="Label2" runat="server" Text='<%#Eval("start_date", "{0:d}") %>' ></asp:Label>
                 </td>
                 <td style="font-family: 'times New Roman', Times, serif; font-size: medium; color: #000000;">
                     <asp:Label ID="Label3" runat="server" Text='<%#Eval("duration") %>'></asp:Label>&nbsp;
                      <asp:Label ID="Label1" runat="server" Text='<%#Eval("duration2") %>'></asp:Label>
                 </td>
                 <td style="font-family: 'times New Roman', Times, serif; font-size: medium; color: #000000;">
                     <asp:Label ID="Label4" runat="server" Text='<%#Eval("stipend") %>'></asp:Label>
                 </td>
                 <td style="font-family: 'times New Roman', Times, serif; font-size: medium; color: #000000;">
                     <asp:Label ID="Label5" runat="server" Text='<%#Eval("apply_by", "{0:d}") %>'></asp:Label>
                 </td>
                 <td style="font-family: 'times New Roman', Times, serif; font-size: medium; color: #000000;">
                     <asp:Label ID="Label6" runat="server" Text='<%#Eval("type") %>'></asp:Label>
                 </td>
             </tr>
         </table>
         <br />
         <p style="color: #000000"><b>About Company:</b><br />
         <%#Eval("about_com") %>
         </p>
           <p style="color: #000000"><b>About Vacancy:</b><br />
         <%#Eval("about_vacancy") %>
         </p>   
         <p style="color: #000000"><b>Skill Required:</b><br />
         <%#Eval("skill_requ") %>
         </p>   
         <p style="color: #000000"><b>Other Perks:</b><br />
         <%#Eval("other_perk") %>
         </p>                             
     <br />&nbsp;                            
     <br />&nbsp;<br /></div><hr />
    </ItemTemplate>
    <FooterTemplate>
    </FooterTemplate>
    </asp:Repeater>
            <asp:Button ID="Button1" Class="w3-button w3-black" runat="server" 
            Text="Apply Now" onclick="Button1_Click" />
    &nbsp;<asp:Label ID="Label7" runat="server" ForeColor="Black"></asp:Label>
    <br />&nbsp;<br />&nbsp;
</asp:Content>
