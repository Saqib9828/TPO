<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="detail.aspx.cs" Inherits="new_co.admin.detail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<p align="center" 
    style="color: #000000; font-weight: bolder; font-size: xx-large;">Student Detail</p>
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
                    <td>
                        Address&nbsp;</td>
                    <td>
                        &nbsp;<%#Eval("Address") %></td>
                </tr>
                <tr>
                    <td>
                        Faculty&nbsp;</td>
                    <td>
                        &nbsp;<%#Eval("Faculty") %></td>
                </tr>
                <tr>
                    <td>
                        Department&nbsp;</td>
                    <td>
                        &nbsp;<%#Eval("Department") %></td>
                </tr>
                <tr>
                    <td>
                        Course&nbsp;</td>
                    <td>
                        &nbsp;<%#Eval("Course") %></td>
                </tr>
                <tr>
                    <td>
                        CGPA/Percentage&nbsp;</td>
                    <td>
                        &nbsp;<%#Eval("[CGPA/Persentage]")%></td>
                </tr>
                <tr>
                    <td>
                        Sem&nbsp;</td>
                    <td>
                        &nbsp;<%#Eval("Semester") %></td>
                </tr>
                   <tr>
                      <td> <a class="mybutton" href="viewstreg.aspx">Back</a> </td>
                      <td> <a class="mybutton" href="detailvacancy.aspx?u=1">View ID</a> </td>
                      <td> <a class="mybutton" href="detailvacancy.aspx?u=1">View CV</a> </td>
                      <td> <a class="mybutton" href="detailvacancy.aspx?u=1">Approve</a> </td>
                      <td> <a class="mybutton" href="detailvacancy.aspx?u=1">Delete</a> </td>
                </tr>
            </table>
        </div>
     </div></ItemTemplate>
    </asp:Repeater>
</asp:Content>
