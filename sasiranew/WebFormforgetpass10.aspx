<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormforgetpass10.aspx.cs" Inherits="sasiranew.WebFormforgetpass10" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
       <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous"/>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
 
    <link href="forgetpass.css" rel="stylesheet" />
</head>
<body>
      <section class="h-100 h-custom" style="background-color:  #E1E1E1;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-8 col-xl-6">
        <div class="card rounded-3">
          <img src="curly-girl-eyeglasses-holds-notebooks-purple-wall.jpg"
            class="w-100" style="border-top-left-radius: .3rem; border-top-right-radius: .3rem;"
            alt="Sample photo">
          <div class="card-body p-4 p-md-5">
            <h3 class="mb-4 pb-2 pb-md-0 mb-md-5 px-md-2"> Find Forget Password</h3>
               
              <form id="form1" runat="server">

              <div class="form-outline mb-4">
                  <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                 
                <label class="form-label" for="form3Example1q">email</label>
              </div>

               

                   

                 

               
 
                <asp:Button ID="Button1" class="btn btn-success btn-lg mb-1" runat="server" Text="submit" OnClick="Button1_Click" BackColor="#9900CC" />

               

              </form>

              <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>
