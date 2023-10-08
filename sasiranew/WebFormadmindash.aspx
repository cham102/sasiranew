<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="WebFormadmindash.aspx.cs" Inherits="sasiranew.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Webformadmindash.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style3 {
            width: 485px;
        }
        .auto-style4 {
            width: 320px;
        }
    .auto-style5 {
        width: 957px;
        height: 379px;
        background-size: 900px 800px;
        background-repeat: no-repeat;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid"> 
          
&nbsp;<table class="auto-style5" >
             <tr>
                 <td class="auto-style4" draggable="auto">
                      
                     <asp:Button ID="Button3" runat="server" class="btn btn-danger" Height="72px" Text="Attendance" Width="172px" OnClick="Button3_Click" />
                      
                 </td>
                 <td class="auto-style3" draggable="auto">
                      
                     <asp:Button ID="Button4" runat="server" class="btn btn-danger" Height="72px" Width="172px" Text="Register Report" OnClick="Button4_Click" />
                      
                 </td>
                 <td>
                     <asp:Button ID="Button2" runat="server" Height="72px" Text="Student Delete" Width="172px" class="btn btn-danger" OnClick="Button2_Click" />
                 </td>
             </tr>
         </table>
     </div>
</asp:Content>
