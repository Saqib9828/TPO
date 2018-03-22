<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="viewstreg.aspx.cs" Inherits="new_co.admin.viewstreg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<p align="center" 
    style="color: #000000; font-weight: bolder; font-size: xx-large;">Student Registrations</p>
    <asp:Repeater ID="Repeater1" runat="server">
    <SeparatorTemplate>
    <br /><hr /><br />
    </SeparatorTemplate>
    <ItemTemplate>
    <div class="row">
        <div class="col-md-4">
            <img class="img-responsive" src="images/portfolio/01.jpg" alt="">
        </div>
        <div class="col-md-8">
            
            <table class="nav-justified">
                <tr>
                    <td>
                        Enrolment No.&nbsp;</td>
                    <td>
                        &nbsp;<%#Eval("Enro_No") %></td>
                </tr>
                <tr>
                    <td>
                        Name&nbsp;</td>
                    <td>
                        &nbsp;<%#Eval("Name") %></td>
                </tr>
                <tr>
                    <td>
                        DOB&nbsp;</td>
                    <td>
                        &nbsp;<%#Eval("DOB") %></td>
                </tr>
                <tr>
                    <td>
                        Mobile No.&nbsp;</td>
                    <td>
                        &nbsp;<%#Eval("Mobile_No") %></td>
                </tr>
                <tr>
                    <td>
                        Email Id&nbsp;</td>
                    <td>
                        &nbsp;<%#Eval("Email_ID") %></td>
                </tr>
                   <tr>
                      <td> <a class="mybutton" href="detail.aspx?u=<%#Eval("Sr_no") %>">View Detail</a> </td>
                      <td> <a class="mybutton" href="<%#Eval("Id") %>">View ID</a> </td>
                      <td> <a class="mybutton" href="detailvacancy.aspx?u=1">View CV</a> </td>
                      <td> <a class="mybutton" href="detailvacancy.aspx?u=1">Approve</a> </td>
                      <td> <a class="mybutton" href="detailvacancy.aspx?u=1">Delete</a> </td>
                </tr>
            </table>
        </div>
     </div>
     </ItemTemplate>
       </asp:Repeater>
</asp:Content>
