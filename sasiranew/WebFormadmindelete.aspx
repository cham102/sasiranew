<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="WebFormadmindelete.aspx.cs" Inherits="sasiranew.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        body{
           background: -webkit-linear-gradient(left,#9795EF,#F9C5D1);
          }
         .contact-form h3{
          margin-bottom: 8%;
          margin-top: -1%;
          text-align: center;
           color: #0062cc;
           }
        .contact-image{
    text-align: center;
          }
        .contact-image img{
        border-radius: 6rem;
        width: 11%;
        margin-top: -8%;
        
        }
        .contact-form .form-control{
             border-radius:1rem;
                }
        .contact-form table{
            margin-top:10%;
            border-radius:1rem;
           padding: 14%;
        }
        .auto-style2 {
            width: 130px;
        }
        .auto-style3 {
            text-align: right;
            width: 130px;
        }
        .auto-style4 {
            width: 100%;
            height: 439px;
        }
        .auto-style5 {
            text-align: right;
            width: 130px;
            height: 92px;
        }
        .auto-style6 {
            height: 92px;
            width: 492px;
        }
        .auto-style7 {
            width: 492px;
        }
        .auto-style8 {
            cursor: pointer;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container contact-form"> 
        
        
     
                <table class="auto-style4"  style="background-color: #FFFFFF">
                    <tr>
                        <td class="auto-style3">
                            &nbsp;</td>
                        <td class="auto-style7"><div class="contact-image">
                <img src="3135715.png" alt="rocket_contact"/>
            </div>
                             
                            <h3>Administration</h3>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            &nbsp;</td>
                        <td class="auto-style7">
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="username" class="form-control" Height="30px" Width="300px"></asp:TextBox>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            &nbsp;</td>
                        <td class="auto-style7">
                            <asp:TextBox ID="TextBox2" placeholder="fullname" runat="server" class="form-control" Height="30px" Width="300px"></asp:TextBox>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            &nbsp;</td>
                        <td class="auto-style7">
                            <asp:TextBox ID="TextBox3" placeholder="NIC"  runat="server" class="form-control" Height="30px" Width="300px"></asp:TextBox>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            &nbsp;</td>
                        <td class="auto-style6">
                            <asp:Button ID="Button3" runat="server" Text=" delete" Width="141px" style=" border-style: none; border-color: inherit; border-width: medium; border-radius: 1rem; padding: 1.5%; background: #dc3545; font-weight: 600; color: #fff;
    " OnClick="Button3_Click" CssClass="auto-style8" />
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="username" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="362px">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" SortExpression="username" />
                                    <asp:BoundField DataField="fullname" HeaderText="fullname" SortExpression="fullname" />
                                    <asp:BoundField DataField="nic" HeaderText="nic" SortExpression="nic" />
                                </Columns>
                                <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:registerConnectionString %>" SelectCommand="SELECT [username], [fullname], [nic] FROM [stdregister]"></asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
           
</div>
</asp:Content>
