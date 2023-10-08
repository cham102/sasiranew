<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentlogin.aspx.cs" Inherits="sasiranew.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
   <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
       <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
 
    <link href="studentlogin.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style24 {
            width: 60%;
            height: 350px;
            background-color: #B4CFEC;
            border-radius: 15px 15px 15px 15px;
             
        }
        .auto-style28 {
            width: 118%;
            height: 786px;
             
        }
        .form{
            background-size:cover;
        }
        .auto-style29 {
            width: 214px;
        }
        .auto-style30 {
            text-align: center;
            width: 932px;
            font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
            font-size: 30px;
        }
        .auto-style33 {
            height: 23px;
            width: 363px;
            text-align: right;
        }
        .auto-style34 {
            width: 363px;
            height: 33px;
            text-align: center;
        }
        .auto-style40 {
            width: 363px;
            text-align: right;
        }
        .auto-style41 {
            height: 23px;
            width: 363px;
        }
        </style>
</head>
<body style="height: 657px; width: 1136px">
    
    <form id="form1" runat="server" >&nbsp;<table class="auto-style28" style="background-color: #e8e8ec; background-repeat: no-repeat;background-size:cover">
            <tr>
                <td>
                    <table class="auto-style24" align="center" style="background-color: #ffffff;margin-left:400px">
                        <tr>
                            <td class="auto-style30" style="background-position: center bottom; background-image: linear-gradient(to right, #5F0A87, #A4508B); " rowspan="9">
                                <div class="text-white px-3 py-4 p-md-5 mx-md-4">
                <p class="mb-4">We are more than just a institute<br>
                    Join with us to make your dreams come true

                </p>
                
              </div>
                                &nbsp;</td>
                            <td class="auto-style34"  >
                                <asp:Image ID="Image2" runat="server" Height="68px" ImageUrl="~/sasira.png" Width="183px" />
                            </td>
                            <td class="auto-style14" ></td>
                        </tr>
                        <tr>
                            <td class="auto-style34" ><h4 class="mt-1 mb-5 pb-1">We are Sasira Team</h4>
                                &nbsp;</td>
                            <td class="auto-style14" >&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style40">
                                <asp:TextBox ID="TextBox1" runat="server"   Width="280px" Height="36px" placeholder="username"></asp:TextBox>
                            </td>
                            <td class="auto-style8">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter username" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style40">
                                <asp:TextBox ID="TextBox2" runat="server" Width="280px"   placeholder="password" TextMode="Password" Height="36px"></asp:TextBox>
                            </td>
                            <td class="auto-style8">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage=" Please enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style40">
                                <asp:Button ID="Button1" runat="server" Height="48px" style="background-image: linear-gradient(to right, #5F0A87, #A4508B);" OnClick="Button1_Click" Text="login" Width="135px" BorderColor="White" />
                            </td>
                            <td class="auto-style8">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style33">
                                <button type="button"  style="background-image: linear-gradient(to right, #5F0A87, #A4508B);" id="signup">Sign Up</button>
                            </td>
                            <td class="auto-style10">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style40"><p class="mb-5 pb-lg-2" style="color: #393f81; ">Do u forget password? <a href="WebFormforgetpass10.aspx"
                      style="color: #393f81;">find password</a></p>

                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style40"><button type="button" class="btn btn-outline-info">Admin Login</button></td>
                            <td class="auto-style11">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style41"></td>
                            <td class="auto-style4">&nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style29">
                    &nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
