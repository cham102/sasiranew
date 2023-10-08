<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="WebFormID.aspx.cs" Inherits="sasiranew.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"><!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}

.title {
  color: grey;
  font-size: 18px;
}

button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #330099;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

a {
  text-decoration: none;
  font-size: 22px;
  color: black;
}

button:hover, a:hover {
  opacity: 0.7;
}
    .auto-style1 {
        --bs-card-spacer-y: 1rem;
        --bs-card-spacer-x: 1rem;
        --bs-card-title-spacer-y: 0.5rem;
        --bs-card-border-width: 1px;
        --bs-card-border-color: var(--bs-border-color-translucent);
        --bs-card-border-radius: 0.375rem;
        --bs-card-box-shadow;
        --bs-card-inner-border-radius: calc(0.375rem - 1px);
        --bs-card-cap-padding-y: 0.5rem;
        --bs-card-cap-padding-x: 1rem;
        --bs-card-cap-bg: rgba(0, 0, 0, 0.03);
        --bs-card-cap-color;
        --bs-card-height;
        --bs-card-color;
        --bs-card-bg: #fff;
        --bs-card-img-overlay-padding: 1rem;
        --bs-card-group-margin: 0.75rem;
        position: relative;
        display: flex;
        flex-direction: column;
        min-width: 0;
        height: 925px;
        word-wrap: break-word;
        background-clip: border-box;
        border-radius: var(--bs-card-border-radius);
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
        max-width: 300px;
        text-align: center;
        font-family: arial;
        left: 0px;
        top: 0px;
        margin: auto;
        background-color: var(--bs-card-bg);
    }
    .auto-style2 {
        width: 245px;
        height: 353px;
        --bs-card-spacer-y: 1rem;
        --bs-card-spacer-x: 1rem;
        --bs-card-title-spacer-y: 0.5rem;
        --bs-card-border-width: 1px;
        --bs-card-border-color: var(--bs-border-color-translucent);
        --bs-card-border-radius: 0.375rem;
        --bs-card-box-shadow;
        --bs-card-inner-border-radius: calc(0.375rem - 1px);
        --bs-card-cap-padding-y: 0.5rem;
        --bs-card-cap-padding-x: 1rem;
        --bs-card-cap-bg: rgba(0, 0, 0, 0.03);
        --bs-card-cap-color;
        --bs-card-height;
        --bs-card-color;
        --bs-card-bg: #fff;
        --bs-card-img-overlay-padding: 1rem;
        --bs-card-group-margin: 0.75rem;
        position: relative;
        display: flex;
        flex-direction: column;
        min-width: 0;
        word-wrap: break-word;
        background-clip: border-box;
        border-radius: var(--bs-card-border-radius);
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
        max-width: 300px;
        text-align: center;
        font-family: arial;
        left: 0px;
        top: 0px;
        margin: auto;
        background-color: var(--bs-card-bg);
    }
    .auto-style3 {
        width: 723px;
        height: 22px;
    }
    .auto-style4 {
        width: 107%;
    }
</style>
    <script>
        function printpage() {
            var getpanel = document.getElementById("<%=Panel1.ClientID%>");
            var MainWindow = window.open('', '', 'height=500,width=800');
            MainWindow.document.write('<html><head><title>Print page</title>');
            MainWindow.document.write('</head><body>');
            MainWindow.document.write(getpanel.innerHTML);
            MainWindow.document.write('</body></html>');
            MainWindow.document.close();
            setTimeout(function () {
                MainWindow.print();
            }, 500);
            return false;
        }
    </script>
</head>
<body>

<h2 style="text-align:center" class="auto-style3">User Profile Card</h2>
    <asp:Panel ID="Panel1" runat="server">
        <div class="auto-style2" ID="Identitycard">
  <img src="istockphoto-1139495117-612x612.jpg" alt="John" class="auto-style4">
  <h1>
      <asp:Label ID="Label1" runat="server" Text="Label" Font-Names="Baskerville Old Face"></asp:Label>
    </h1>
  <p class="title">&nbsp;<asp:Label ID="Label2" runat="server" Text="Label" Font-Names="Baskerville Old Face"></asp:Label>
    </p>
  <p>&nbsp;<asp:Label ID="Label3" runat="server" Text="Label" Font-Names="Baskerville Old Face"></asp:Label>
    </p>
  <div style="margin: 24px 0;">
    <a href="#"><i class="fa fa-dribbble"></i><i class="fa fa-twitter"></i><i class="fa fa-linkedin"></i><i class="fa fa-facebook"></i></a> 
  </div>
  <p><button></button></p>
    </div>
    </asp:Panel>
 
     
    <asp:Button ID="Button1" runat="server" Text=" Print Identity" BackColor="#6600FF" BorderColor="#CC99FF" Font-Names="Copperplate Gothic Bold" Height="55px" OnClientClick="return printpage();" Width="143px" />
</body>
</html>
</asp:Content>
