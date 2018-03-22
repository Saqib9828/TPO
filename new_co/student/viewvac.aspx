<%@ Page Title="" Language="C#" MasterPageFile="~/student/student.Master" AutoEventWireup="true" CodeFile="viewvac.aspx.cs" Inherits="new_co.student.viewvac" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="../js/jquery.searchabledropdown-1.0.8.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $("select").searchable({
            maxListSize: 200, // if list size are less than maxListSize, show them all
            maxMultiMatch: 300, // how many matching entries should be displayed
            exactMatch: false, // Exact matching on search
            wildcards: true, // Support for wildcard characters (*, ?)
            ignoreCase: true, // Ignore case sensitivity
            latency: 200, // how many millis to wait until starting search
            warnMultiMatch: 'top {0} matches ...',
            warnNoMatch: 'no matches ...',
            zIndex: 'auto'
        });
    });

 </script>
 <script>
     $(window).scroll(function () {
         if ($(window).scrollTop() == $(document).height() - $(window).height()) {
             // ajax call get data from server and append to the div
         }
     });
 </script>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p align="center" 
    style="color: #000000; font-weight: bolder; font-size: xx-large;">Search vacancies</p>
    <div class="category" 
        
        
        
        style="border-right: 1px solid #000000; width: 24%; float: left; height: auto; ">
        <p align="center" 
    style="color: #000000; font-weight: bold; font-size: large;">Give Preferences</p>

    <p align="left" 
    style="color: #000000; font-size: small;">Categories</p>
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1"  AppendDataBoundItems="true"
            DataTextField="cat" DataValueField="cat">
        <asp:ListItem Value="">-Select Category-</asp:ListItem>
        
    </asp:DropDownList>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT DISTINCT [cat] FROM [vacancy] ORDER BY [cat]">
        </asp:SqlDataSource>

    <p align="left" 
    style="color: #000000; font-size: small;">Location</p>
    <asp:DropDownList ID="DropDownList2" runat="server" >
    </asp:DropDownList>
        
        <br />
        
        <asp:CheckBox ID="CheckBox1" runat="server" ForeColor="Black" 
            Text="Work from Home" />
        <br />&nbsp;
        <br />
        <asp:Button ID="Button1" Class="w3-button w3-black" runat="server" 
            Text="Search" onclick="Button1_Click" />
        &nbsp;<asp:Button ID="Button2" Class="w3-button w3-black" runat="server" 
            Text="Reset" onclick="Button2_Click" />
        <br />
    </div>

     <div class="vacancy" 
        
        style="width: 73%;  border-left-style: solid; border-left-width: 20px; border-left-color: #FFFFFF; height: auto; float: left;">
     
     <hr />
     <br />
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
         <a class="mybutton" href="detailvacancy.aspx?u=<%#Eval("sr_no") %>">View Detail</a>
                                          
     <br />&nbsp;<br /></div><hr />
             </ItemTemplate>
             <SeparatorTemplate>
             
             </SeparatorTemplate>
         </asp:Repeater>
     </div>

</asp:Content>
