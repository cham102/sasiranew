<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="sasiranew.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="profile.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style12 {
            width: 100%;
            height: 441px;
        }
        .auto-style13 {
        width: 201px;
    }
        .auto-style14 {
            height: 26px;
            width: 201px;
        }
        .auto-style15 {
            width: 157px;
            height: 136px;
        }
        .auto-style16 {
            width: 190px;
            height: 136px;
        }
        .auto-style17 {
            width: 201px;
            height: 136px;
        }
        .auto-style18 {
            width: 157px;
            height: 42px;
            font-size: medium;
            text-transform: uppercase;
            text-align: center;
        }
        .auto-style19 {
            width: 157px;
            height: 26px;
            text-align: right;
        }
        .auto-style20 {
            width: 157px;
            text-align: right;
        }
        .auto-style21 {
            width: 157px;
            height: 46px;
            text-align: center;
        }
        .auto-style22 {
            width: 265px;
            height: 589px;
        }
        .auto-style23 {
            height: 589px;
        }
        .auto-style24 {
            width: 157px;
            text-align: right;
            height: 68px;
        }
        .auto-style25 {
            width: 190px;
            height: 68px;
        }
        .auto-style26 {
            width: 201px;
            height: 68px;
        }
        .auto-style27 {
            height: 46px;
            width: 190px;
        }
        .auto-style28 {
            height: 46px;
            width: 201px;
        }
        .auto-style32 {
            width: 190px;
            height: 42px;
        }
        .auto-style33 {
            width: 201px;
            height: 42px;
        }
        .auto-style34 {
            width: 157px;
            height: 38px;
        }
        .auto-style35 {
            height: 38px;
            width: 190px;
        }
        .auto-style36 {
            height: 38px;
            width: 201px;
        }
        .auto-style37 {
            width: 157px;
            text-align: right;
            height: 40px;
        }
        .auto-style38 {
            width: 190px;
            height: 40px;
        }
        .auto-style39 {
            width: 201px;
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="background-image:linear-gradient(to right, #A88BEB,#F8CEEC);">
        <tr>
            <td class="auto-style22">
                &nbsp;</td>
            <td class="auto-style23">
                <table class="auto-style12">
                    <tr>
                        <td class="auto-style15">&nbsp;</td>
                        <td class="auto-style16">
                            <asp:Image ID="Image2" runat="server" Height="67px" ImageUrl="~/inkpx-word-art.png" Width="265px" />
                        </td>
                        <td class="auto-style17"></td>
                    </tr>
                    <tr>
                        <td class="auto-style34"></td>
                        <td class="auto-style35"></td>
                        <td class="auto-style36"></td>
                    </tr>
                    <tr>
                        <td class="auto-style18" style="font-variant: normal; ">&nbsp;<asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC33FF" Text="Personal"></asp:Label>
                        </td>
                        <td   class="auto-style32">
                            <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC33FF" Text="INFORMATION"></asp:Label>
                        </td>
                        <td  class="auto-style33"></td>
                    </tr>
                    <tr>
                        <td class="auto-style19">
                            <asp:Label ID="Label1" runat="server" Text=" Username:" Font-Names="Baskerville Old Face" ForeColor="White"></asp:Label>
                            <br />
                            <br />
                        </td>
                        <td class="auto-style7">
                            <asp:Label ID="userlabel" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="White"></asp:Label>
                            &nbsp;<br />
                            <br />
                        </td>
                        <td class="auto-style14">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style37">
                            <asp:Label ID="Label2" runat="server" Text="NIC:" Font-Names="Baskerville Old Face" ForeColor="White"></asp:Label>
                            <br />
                            <br />
                        </td>
                        <td class="auto-style38">
                            <asp:Label ID="niclabel" runat="server" Font-Bold="True" ForeColor="White"></asp:Label>
                            &nbsp;<br />
                            <br />
                        </td>
                        <td class="auto-style39">
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style20">
                            <asp:Label ID="Label3" runat="server" Text="Email:" Font-Names="Baskerville Old Face" ForeColor="White"></asp:Label>
                            <br />
                            <br />
                        </td>
                        <td class="auto-style11">
                            <asp:Label ID="emaillabel" runat="server" Font-Bold="True" Font-Italic="False" ForeColor="White"></asp:Label>
                            &nbsp;<br />
                            <br />
                        </td>
                        <td class="auto-style13">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style21" >&nbsp;<asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="#CC33FF" Text=" EDIT"></asp:Label>
                            <br />
                            <br />
                        </td>
                        <td class="auto-style27" >
                            <asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="#CC00FF" Text=" PASSWORD"></asp:Label>
                            <br />
                            <br />
                        </td>
                        <td class="auto-style28" ></td>
                    </tr>
                    <tr>
                        <td class="auto-style20">
                            <asp:Label ID="Label4" runat="server" Text="Old Password" ForeColor="White"></asp:Label>
                        </td>
                        <td class="auto-style11">
                            <asp:TextBox ID="TextBox4" textmode="Password" runat="server" Height="25px" Width="200px"></asp:TextBox>
                        </td>
                        <td class="auto-style13">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style24">
                            <asp:Label ID="Label5" runat="server" Text="New Password" ForeColor="White"></asp:Label>
                        </td>
                        <td class="auto-style25">
                            <asp:TextBox ID="TextBox5" runat="server" Height="25px" Width="200px"></asp:TextBox>
                        </td>
                        <td class="auto-style26">
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style20">
                            <asp:Label ID="Label6" runat="server" Text=" Confirm Password" ForeColor="White"></asp:Label>
                        </td>
                        <td class="auto-style11">
                            <asp:TextBox ID="TextBox6" runat="server" Height="25px" Width="200px"></asp:TextBox>
                        </td>
                        <td class="auto-style13">
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox6" ErrorMessage=" Enter the same password!" ForeColor="#FF3300"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style20">
                            <asp:Label ID="Label7" runat="server" Text="" ForeColor="red" Font-Bold="true"></asp:Label>
                        </td>
                        <td class="auto-style11">
                             <asp:Button ID="Button2" runat="server" class="btn btn-light" OnClick="Button2_Click" Text="student ID" />
                             <br />
                             <br />
                        </td>
                        <td class="auto-style13">
                             &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style20">&nbsp;</td>
                        <td class="auto-style11">
                             <asp:Button ID="Button1" runat="server" class="btn btn-light" OnClick="Button1_Click" Text=" change password"   />
                        </td>
                        <td class="auto-style13">
                             &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
