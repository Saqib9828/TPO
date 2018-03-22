<%@ Page Title="" Language="C#" MasterPageFile="~/all.Master" AutoEventWireup="true" CodeBehind="studentreg.aspx.cs" Inherits="new_co.studentreg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
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
    style="color: #000000; font-weight: bolder; font-size: xx-large;">Student Registration Form</p>
    <table class="style1" style="color: #000000">
        <tr>
            <td align="right" class="style2" colspan="2">
                <p align="center" style="font-weight: bold; font-size: large;">Personal Detail</p></td>
            <td>
                &nbsp;</td>
            <td colspan="2">
                <p align="center" style="font-weight: bold; font-size: large;">
                    Educational Detail</p>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style4">
                EnrolNo</td>
            <td class="style3">
                <asp:TextBox ID="TextBox1" runat="server" Style="text-transform: uppercase"
                    ></asp:TextBox>
                <asp:Label ID="Label2" runat="server" ForeColor="#FF3300"></asp:Label>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
     ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Invalid Code"
     ForeColor="Red" ValidationExpression="^[A-Z]{2}\d{4}$">  
</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;
                </td>
            <td align="left" class="style8">
                Faculty</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="faculty" DataValueField="faculty">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [faculty] FROM [course_data] ORDER BY [faculty]">
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style5">
                Name</td>
            <td class="style6">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Required" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
            <td class="style7">
                </td>
            <td class="style9">
                Department</td>
            <td class="style7">
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource2" DataTextField="department" 
                    DataValueField="department">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [department] FROM [course_data] WHERE ([faculty] = @faculty) ORDER BY [department]">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList2" Name="faculty" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="style7">
                </td>
            <td class="style7">
                </td>
        </tr>
        <tr>
            <td align="right" class="style4">
                Father&#39;s Name</td>
            <td class="style3">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Required" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
            <td class="style8">
                Course</td>
            <td>
                <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource3" DataTextField="course" DataValueField="course">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [course] FROM [course_data] WHERE (([faculty] = @faculty) AND ([department] = @department)) ORDER BY [course]">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList2" Name="faculty" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="DropDownList3" Name="department" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style4">
                DOB</td>
            <td class="style3">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Date"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Required" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
            <td class="style8">
                Semester</td>
            <td>
                <asp:DropDownList ID="DropDownList5" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>I</asp:ListItem>
                    <asp:ListItem>II</asp:ListItem>
                    <asp:ListItem>III</asp:ListItem>
                    <asp:ListItem>IV</asp:ListItem>
                    <asp:ListItem>V</asp:ListItem>
                    <asp:ListItem>VI</asp:ListItem>
                    <asp:ListItem>VII</asp:ListItem>
                    <asp:ListItem>VIII</asp:ListItem>
                    <asp:ListItem>IX</asp:ListItem>
                    <asp:ListItem>X</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style4">
                Gender</td>
            <td class="style3">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
            <td class="style8">
                CGPA/Persentage</td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style4">
                Mobile No.</td>
            <td class="style3">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server"
     ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Invalid Mobile No. (10 digit only)"
     ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
            <td class="style8">
                Remark</td>
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
                Email ID</td>
            <td class="style3">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td class="style8">
                Upload CV</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style10">
                Address</td>
            <td class="style11">
                <asp:TextBox ID="TextBox7" runat="server" Height="54px" TextMode="MultiLine" 
                    Width="231px"></asp:TextBox>
            </td>
            <td class="style12">
                </td>
            <td class="style13">
                ID</td>
            <td class="style12">
                <asp:FileUpload ID="FileUpload2" runat="server" />
            </td>
            <td class="style12">
                </td>
            <td class="style12">
                </td>
        </tr>
        <tr>
            <td align="right" class="style4">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style8">
                Photo</td>
            <td>
                <asp:FileUpload ID="FileUpload3" runat="server" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
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
