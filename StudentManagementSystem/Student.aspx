<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="StudentManagementSystem.Student" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table border="0" class="nav-justified">
        <tr>
            <td colspan="3">
                <h3>Student Registration Form</h3>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 517px">
                <asp:Label ID="Label1" runat="server" Text="Student ID"></asp:Label>
            </td>
            <td class="text-right" style="width: 43px">&nbsp;</td>
            <td>
                <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button6" runat="server" BackColor="#CC00FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="Button6_Click" Text="Search" />
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 517px">&nbsp;</td>
            <td class="text-right" style="width: 43px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-right" style="width: 517px">
                <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
            </td>
            <td class="text-right" style="width: 43px">&nbsp;</td>
            <td>
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 517px">&nbsp;</td>
            <td class="text-right" style="width: 43px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-right" style="width: 517px">
                <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
            </td>
            <td class="text-right" style="width: 43px">&nbsp;</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:RadioButtonList>
&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 517px">&nbsp;</td>
            <td class="text-right" style="width: 43px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-right" style="width: 517px">
                <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
            </td>
            <td class="text-right" style="width: 43px">&nbsp;</td>
            <td>
                <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 517px">&nbsp;</td>
            <td class="text-right" style="width: 43px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-right" style="width: 517px">
                <asp:Label ID="Label5" runat="server" Text="Contact"></asp:Label>
            </td>
            <td class="text-right" style="width: 43px">&nbsp;</td>
            <td>
                <asp:TextBox ID="txtcontact" runat="server" TextMode="Phone"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 517px">&nbsp;</td>
            <td class="text-right" style="width: 43px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-right" style="width: 517px">
                <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label>
            </td>
            <td class="text-right" style="width: 43px">&nbsp;</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" TextMode="Email"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 517px">&nbsp;</td>
            <td class="text-right" style="width: 43px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-right" style="width: 517px">
                <asp:Label ID="Label7" runat="server" Text="Course"></asp:Label>
            </td>
            <td class="text-right" style="width: 43px">&nbsp;</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                    <asp:ListItem>Select Course</asp:ListItem>
                    <asp:ListItem>C#</asp:ListItem>
                    <asp:ListItem>SQL</asp:ListItem>
                    <asp:ListItem>MongoDB</asp:ListItem>
                    <asp:ListItem>Asp.Net</asp:ListItem>
                    <asp:ListItem>MVC</asp:ListItem>
                    <asp:ListItem>Asp.Net Core</asp:ListItem>
                    <asp:ListItem>React</asp:ListItem>
                    <asp:ListItem>Git</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="text-left" colspan="3">
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" BackColor="#CC00FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="33px" OnClick="Button3_Click" Text="Submit" Width="86px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" BackColor="#CC00FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="32px" OnClick="Button4_Click" Text="Clear" Width="86px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="#CC00FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="33px" OnClick="Button1_Click" Text="Update" Width="86px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button5" runat="server" BackColor="#CC00FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="33px" OnClick="Button5_Click" OnClientClick="return confirm('Are you sure ?');" Text="Delete" Width="86px" />
                <br />
                <br />
                <br />
                <div class="text-center">
                    <asp:GridView ID="GridView1" runat="server" Width="1095px">
                        <HeaderStyle BackColor="White" />
                    </asp:GridView>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>
