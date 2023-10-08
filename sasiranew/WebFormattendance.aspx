<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="WebFormattendance.aspx.cs" Inherits="sasiranew.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 59%;
            height: 146px;
            background-color: #507CD1;
            border-radius:15px;
        }
        .auto-style2 {
            width: 128px;
        }
        .auto-style3 {
            width: 128px;
            height: 54px;
        }
        .auto-style4 {
            height: 54px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Bernard MT Condensed" Font-Size="X-Large" ForeColor="Red" Text="Sasira Online Education "></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Bahnschrift SemiLight" Font-Size="Large" ForeColor="#0033CC" Text=" Student Attendance"></asp:Label>
    <br />
    <br />
    <table class="auto-style1" style="background-color: #CC99FF">
        <tr>
            <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" ForeColor="White" Text=" Select Class"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="53px" Width="273px" DataSourceID="SqlDataSource1" DataTextField="class" DataValueField="class">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" class="btn btn-primary" runat="server" Font-Size="Medium" Font-Strikeout="False" Height="44px" Text="Mark Attendance" Width="181px" OnClick="Button1_Click" BackColor="#9999FF" />
                <br />
            </td>
        </tr>
    </table>
    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataSourceID="SqlDataSource2" Height="202px" Width="505px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="enroll" HeaderText="Roll Number" SortExpression="enroll" />
            <asp:BoundField DataField="stdname" HeaderText="Student Name" SortExpression="stdname" />
            <asp:TemplateField HeaderText="Mark Attendance">
                <ItemTemplate>
                    <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" Text="Present" GroupName="g1" />
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="Absent" GroupName="g1" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    <br />
    <asp:Button ID="Button2" runat="server" BorderColor="#507CD1" BorderWidth="2px" Font-Names="Cooper Black" Font-Size="X-Small" Height="50px" class="btn btn-primary" OnClick="Button2_Click" Text=" Save Attendance" Width="141px" BackColor="#9966FF" />
    <asp:Label ID="Label4" runat="server"></asp:Label>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:registerConnectionString3 %>" SelectCommand="SELECT DISTINCT [class] FROM [studentDetails]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:registerConnectionString3 %>"  SelectCommand="SELECT [enroll], [stdname] FROM [studentDetails] WHERE ([class] = @class)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="class" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
</asp:Content>
