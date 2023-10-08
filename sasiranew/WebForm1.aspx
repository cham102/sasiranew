<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="sasiranew.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     
   <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
       <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous"/>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
 
    <%--link.css--%>
    <link href="WebForm1.css" rel="stylesheet" />
    

    <%--animate.css--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    
     
    

    
    
     
    

    <style type="text/css">
        .auto-style27 {
            text-align: center;
            width: 3px;
            height: 84px;
        }
        .auto-style29 {
            width: 3px;
            height: 41px;
        }
        .auto-style32 {
            width: 3px;
            height: 107px;
        }
        .auto-style33 {
            width: 3px;
        }
        .auto-style34 {
            height: 61px;
            width: 3px;
        }
        .auto-style35 {
            height: 57px;
            width: 3px;
        }
        .auto-style36 {
            width: 51px;
            text-align: center;
        }
        .auto-style37 {
            width: 144px;
            height: 47px;
        }
        .auto-style38 {
            width: 3px;
            height: 47px;
        }
        .auto-style39 {
            width: 255px;
            height: 47px;
        }
        .auto-style40 {
            width: 86%;
            height: 531px;
            margin-left: 74px;
        }
        .auto-style41 {
            width: 99%;
            height: 566px;
            padding-left: .75em;
            padding-right: .75em;
        }
        
/* The message box is shown when the user clicks on the password field */
#message {
  display:none;
  background: #f1f1f1;
  color: #000;
  position: relative;
  padding: 20px;
  margin-top: 10px;
}

#message p {
  padding: 10px 35px;
  font-size: 18px;
}

/* Add a green text color and a checkmark when the requirements are right */
.valid {
  color: green;
}

.valid:before {
  position: relative;
  left: -35px;
  content: "✔";
}

/* Add a red text color and an "x" when the requirements are wrong */
.invalid {
  color: red;
}

.invalid:before {
  position: relative;
  left: -35px;
  content: "✖";
}
    </style>
    
     
    

    
    
     
    

</head>
<body style="width: 1218px; height: 671px; margin-left:230px; margin-right:250px "  >
    <form id="form1" runat="server"  >
         <h1 class="auto-style14 animate__animated animate__bounce animate__infinite"  >Register </h1>
        

    <table class="auto-style41">
        <tr>
            <td class="auto-style36" id="tb26"style="background-color: #E1E1E1">
                <asp:Image ID="Image3" runat="server" ImageUrl="curly-girl-eyeglasses-holds-notebooks-purple-wall.jpg" Width="391px" />
            </td>
            <td style="background-color:  #B451D9" class="auto-style25">
                
                  <table align="left" class="auto-style40">
                    <tr>
                        <td class="auto-style13">
                            &nbsp;</td>
                        <td class="auto-style27">
                            &nbsp;</td>
                    </tr>
                    <tr >
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style33">

                             <asp:Label ID="Label7" runat="server" Text=""></asp:Label>

                            </td>
                        <td class="auto-style15">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style37">
                            
                            <asp:TextBox ID="txtus"   runat="server" Height="35px" Width="300px" placeholder="username"    ></asp:TextBox>
                             
                        </td>
                        <td class="auto-style38">
                            
                            </td>
                        <td class="auto-style39">
                             <%--validation--%>

                            <asp:TextBox ID="TextBox1"   runat="server" Height="35px" Width="300px" placeholder="fullname"    BorderColor="White"  ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                        
                        
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtus" ErrorMessage="Required username!" ForeColor="White"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style33">
                            &nbsp;</td>
                        <td class="auto-style15">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required fullname!" ForeColor="White"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style21">
                            <asp:Label ID="Label2" runat="server" Text="nic">
                                <label class="form-label" for="form3Example99"></label>
                            </asp:Label>
                            <asp:TextBox ID="TextBox2"   runat="server" Height="35px" Width="300px" placeholder="NIC"  BorderColor="White" BorderStyle="None"></asp:TextBox>
                        </td>
                        <td class="auto-style29">
                            &nbsp;</td>
                        <td class="auto-style23">
                            <asp:TextBox ID="TextBox3"   runat="server"   Height="35px" Width="300px" placeholder="email" BorderColor="White"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"    ControlToValidate="TextBox2" ErrorMessage="Required NIC!" ForeColor="White"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style34">
                            &nbsp;</td>
                        <td class="auto-style16">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"  ControlToValidate="TextBox3" ErrorMessage="Required Email!"    ForeColor="White"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage=" Enter valid Email!" ForeColor="White" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10">
                            <asp:TextBox ID="TextBox4"   runat="server" Height="35px" Width="300px"    placeholder="password" BorderStyle="None" type="password"  name="psw" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" ></asp:TextBox>
                        </td>
                        <td class="auto-style35">
                            &nbsp;</td>
                        <td class="auto-style17">
                            <asp:TextBox ID="TextBox5"  runat="server" Height="35px" Width="300px"     placeholder="confirm password" BorderColor="White" ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18">
                            <asp:Label ID="Label5" runat="server" Text="">
                                 
                            </asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="Required password!" ForeColor="White"></asp:RequiredFieldValidator>
                            <div id="message">
  <h3>Password must contain the following:</h3>
  <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
  <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
  <p id="number" class="invalid">A <b>number</b></p>
  <p id="length" class="invalid">Minimum <b>8 characters</b></p>
</div>
                            <script>
var myInput = document.getElementById("TextBox4");
var letter = document.getElementById("letter");
var capital = document.getElementById("capital");
var number = document.getElementById("number");
var length = document.getElementById("length");

// When the user clicks on the password field, show the message box
myInput.onfocus = function() {
  document.getElementById("message").style.display = "block";
}

// When the user clicks outside of the password field, hide the message box
myInput.onblur = function() {
  document.getElementById("message").style.display = "none";
}

// When the user starts to type something inside the password field
myInput.onkeyup = function() {
  // Validate lowercase letters
  var lowerCaseLetters = /[a-z]/g;
  if(myInput.value.match(lowerCaseLetters)) {  
    letter.classList.remove("invalid");
    letter.classList.add("valid");
  } else {
    letter.classList.remove("valid");
    letter.classList.add("invalid");
  }
  
  // Validate capital letters
  var upperCaseLetters = /[A-Z]/g;
  if(myInput.value.match(upperCaseLetters)) {  
    capital.classList.remove("invalid");
    capital.classList.add("valid");
  } else {
    capital.classList.remove("valid");
    capital.classList.add("invalid");
  }

  // Validate numbers
  var numbers = /[0-9]/g;
  if(myInput.value.match(numbers)) {  
    number.classList.remove("invalid");
    number.classList.add("valid");
  } else {
    number.classList.remove("valid");
    number.classList.add("invalid");
  }
  
  // Validate length
  if(myInput.value.length >= 8) {
    length.classList.remove("invalid");
    length.classList.add("valid");
  } else {
    length.classList.remove("valid");
    length.classList.add("invalid");
  }
}
                            </script>
                        </td>
                        <td class="auto-style32">
                            &nbsp;</td>
                        <td class="auto-style20">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="Required confirmpassword!" ForeColor="White"></asp:RequiredFieldValidator>
                            <br />
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage=" Must be sameto password!" ForeColor="White"></asp:CompareValidator>
                            <br />
                            <p class="mb-5 pb-lg-2" style="color: #393f81; ">Do u have an account? <a href="studentlogin.aspx"
                      style="color: #393f81;">Sign In</a></p>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            &nbsp;</td>
                        <td class="auto-style33">
                            &nbsp;</td>
                        <td class="auto-style15">
                            <asp:Button ID="Button1" runat="server"   class="btn btn-primary btn-lg btn-block" Text="create account"   OnClick="Button1_Click"   />
                        </td>
                    </tr>
                </table>
                    
            </td>
        </tr>
    </table> 
    
    </form>
    
</body>
</html>
