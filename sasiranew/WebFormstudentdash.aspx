<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="WebFormstudentdash.aspx.cs" Inherits="sasiranew.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="WebFormstudentdash.css" rel="stylesheet" />
    <script src="WebFormstudentdash.js"></script>
     
    <style type="text/css">
        @import url("https://fonts.googleapis.com/css?family=Montserrat:400,500,600,700,800,900");
@import url("https://cdn.linearicons.com/free/1.0.0/icon-font.min.css");
body {
  font-family: 'Montserrat', sans-serif;
  background: #112233;
}

.weather-card {
  margin: 60px auto;
  height: 400px;
  width: 300px;
  background: #fff;
  box-shadow: 0 1px 38px rgba(0, 0, 0, 0.15), 0 5px 12px rgba(0, 0, 0, 0.25);
  overflow: hidden;
}
.weather-card .top {
  position: relative;
  height: 570px;
  width: 100%;
  overflow: hidden;
  background: url("https://s-media-cache-ak0.pinimg.com/564x/cf/1e/c4/cf1ec4b0c96e59657a46867a91bb0d1e.jpg") no-repeat;
  background-size: cover;
  background-position: center center;
  text-align: center;
}
.weather-card .top .wrapper {
  padding: 30px;
  position: relative;
  z-index: 1;
}
.weather-card .top .wrapper .mynav {
  height: 20px;
}
.weather-card .top .wrapper .mynav .lnr {
  color: #fff;
  font-size: 20px;
}
.weather-card .top .wrapper .mynav .lnr-chevron-left {
  display: inline-block;
  float: left;
}
.weather-card .top .wrapper .mynav .lnr-cog {
  display: inline-block;
  float: right;
}
.weather-card .top .wrapper .heading {
  margin-top: 20px;
  font-size: 35px;
  font-weight: 400;
  color: #fff;
}
.weather-card .top .wrapper .location {
  margin-top: 20px;
  font-size: 21px;
  font-weight: 400;
  color: #fff;
}
.weather-card .top .wrapper .temp {
  margin-top: 20px;
}
.weather-card .top .wrapper .temp a {
  text-decoration: none;
  color: #fff;
}
.weather-card .top .wrapper .temp a .temp-type {
  font-size: 85px;
}
.weather-card .top .wrapper .temp .temp-value {
  display: inline-block;
  font-size: 85px;
  font-weight: 600;
  color: #fff;
}
.weather-card .top .wrapper .temp .deg {
  display: inline-block;
  font-size: 35px;
  font-weight: 600;
  color: #fff;
  vertical-align: top;
  margin-top: 10px;
}
.weather-card .top:after {
  content: "";
  height: 100%;
  width: 100%;
  display: block;
  position: absolute;
  top: 0;
  left: 0;
  background: rgba(0, 0, 0, 0.5);
}
.weather-card .bottom {
  padding: 0 30px;
  background: #fff;
}
.weather-card .bottom .wrapper .forecast {
  overflow: hidden;
  margin: 0;
  font-size: 0;
  padding: 0;
  padding-top: 20px;
  max-height: 155px;
}
.weather-card .bottom .wrapper .forecast a {
  text-decoration: none;
  color: #000;
}
.weather-card .bottom .wrapper .forecast .go-up {
  text-align: center;
  display: block;
  font-size: 25px;
  margin-bottom: 10px;
}
.weather-card .bottom .wrapper .forecast li {
  display: block;
  font-size: 25px;
  font-weight: 400;
  color: rgba(0, 0, 0, 0.25);
  line-height: 1em;
  margin-bottom: 30px;
}
.weather-card .bottom .wrapper .forecast li .date {
  display: inline-block;
}
.weather-card .bottom .wrapper .forecast li .condition {
  display: inline-block;
  vertical-align: middle;
  float: right;
  font-size: 25px;
}
.weather-card .bottom .wrapper .forecast li .condition .temp {
  display: inline-block;
  vertical-align: top;
  font-family: 'Montserrat', sans-serif;
  font-size: 20px;
  font-weight: 400;
  padding-top: 2px;
}
.weather-card .bottom .wrapper .forecast li .condition .temp .deg {
  display: inline-block;
  font-size: 10px;
  font-weight: 600;
  margin-left: 3px;
  vertical-align: top;
}
.weather-card .bottom .wrapper .forecast li .condition .temp .temp-type {
  font-size: 20px;
}
.weather-card .bottom .wrapper .forecast li.active {
  color: rgba(0, 0, 0, 0.8);
}
.weather-card.rain .top {
  background: url("http://img.freepik.com/free-vector/girl-with-umbrella_1325-5.jpg?size=338&ext=jpg") no-repeat;
  background-size: cover;
  background-position: center center;
}

        .card{
            background: -webkit-linear-gradient(left,#AACAEF,#FDE7F9);
            width:216px;
        }
        .avatar {
  vertical-align: middle;
  width: 50px;
  height: 50px;
  border-radius: 50%;
}
         #teacher{

         }
        .auto-style4 {
            width: 555px;
        }
         
        .auto-style6 {
            height: 130px;
        }
                 
        .auto-style11 {
            width: 805px;
            height: 130px;
        }
        .auto-style12 {
            height: 100%px;
            }
         
        .auto-style13 {
            height: 130px;
            width: 125px;
        }
         
        .auto-style16 {
            flex: 0 0 50%;
            width: 100%;
            position: relative;
            min-height: 1px;
            -webkit-box-flex: 0;
            -ms-flex: 0 0 50%;
            max-width: 50%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
         
        .auto-style17 {
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
            height: var(--bs-card-height);
            word-wrap: break-word;
            background-clip: border-box;
            border-radius: .25rem;
            width: 216px;
            -webkit-box-orient: vertical;
            -webkit-box-direction: normal;
            -ms-flex-direction: column;
            left: 0px;
            top: 0px;
            background-color: #fff;
        }
         
    </style>
     <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
     
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
     
    
 
     
      
     
 
     
    
 
     
      
    <table class="w-100" style="background-color: #ffff">
        <tr>
            <td class="auto-style11">&nbsp;<div class="auto-style17" style="background:-webkit-linear-gradient(left,#9795EF,#F9C5D1)">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center">
                <img src="teacher.png"  id="teacher" class="avatar"/>
              </div>
              <div class="text-end">
                <h3>300+</h3>
                <p class="mb-0">teachers</p>
              </div>
            </div>
          </div>
        </div> </td>
            <td class="auto-style11">&nbsp;<div class="card"style="background:-webkit-linear-gradient(left,#9795EF,#F9C5D1)">
          <div class="card-body">
            <div class="d-flex justify-content-between px-md-1">
              <div class="align-self-center"> 
                  <img src="employee.png"  class="avatar"/>
              </div>
              <div class="text-end">
                <h3>100</h3>
                <p class="mb-0">Staff Members</p>
              </div>
            </div>
          </div>
        </div></td>
            <td class="auto-style13">&nbsp;<div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">View student profile</h5>
        <p class="card-text">Student can view there profile details and edit the password.</p>
        <a href="profile.aspx" class="btn btn-primary">profile</a>
      </div>
    </div>
  </div></td>
            <td class="auto-style6">&nbsp;  </td>
            <td>&nbsp;<div class="auto-style16">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">View Student Identtity card</h5>
        <p class="card-text">Every student must have their ID when enter to Institute.</p>
        <a href="WebFormID.aspx" class="btn btn-primary">Student ID</a>
      </div>
    </div>
  </div></td>
            <td class="auto-style6">&nbsp;
                
            </td>
        </tr>
        <tr>
            
            <td class="auto-style12" colspan="3">
                <div class="w3-content w3-section" style="max-width:600px">
  <img class="mySlides" src="certificate.jpg" style="width:120%; height:150%">
  <img class="mySlides" src="download.jpg" style="width:120%;height:150%">
  <img class="mySlides" src="10589_si.jpg" style="width:120%;height:150%">
</div>

<script>
    var myIndex = 0;
    carousel();

    function carousel() {
        var i;
        var x = document.getElementsByClassName("mySlides");
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        myIndex++;
        if (myIndex > x.length) { myIndex = 1 }
        x[myIndex - 1].style.display = "block";
        setTimeout(carousel, 2000); // Change image every 2 seconds
    }
</script>
            </td>
            
            <td colspan="2"> <section class="vh-100">
  <div class="container py-5">

    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-md-9 col-lg-7 col-xl-5">

        <div id="wrapper-bg" class="card text-white bg-image shadow-4-strong"
          style="background-image: url('img/clouds.gif')">
          <!-- Main current data -->
          <div class="card-header p-4 border-0">
            <div class="text-center mb-3">
              <p class="h2 mb-1" id="wrapper-name"></p>
              <p class="mb-1" id="wrapper-description"></p>
              <p class="display-1 mb-1" id="wrapper-temp"></p>
              <span class="">Pressure: <span id="wrapper-pressure"></span></span>
              <span class="mx-2">|</span>
              <span class="">Humidity: <span id="wrapper-humidity"></span></span>
            </div>
          </div>

          <!-- Hourly forecast -->
          <div class="card-body p-4 border-top border-bottom mb-2">
            <div class="row text-center">
              <div class="col-2">
                <strong class="d-block mb-2">Now</strong>
                <img id="wrapper-icon-hour-now" src="" class="" alt="" />
                <strong class="d-block" id="wrapper-hour-now"></strong>
              </div>

              <div class="col-2">
                <strong class="d-block mb-2" id="wrapper-time1"></strong>
                <img id="wrapper-icon-hour1" src="" class="" alt="" />
                <strong class="d-block" id="wrapper-hour1"></strong>
              </div>

              <div class="col-2">
                <strong class="d-block mb-2" id="wrapper-time2"></strong>
                <img id="wrapper-icon-hour2" src="" class="" alt="" />
                <strong class="d-block" id="wrapper-hour2"></strong>
              </div>

              <div class="col-2">
                <strong class="d-block mb-2" id="wrapper-time3"></strong>
                <img id="wrapper-icon-hour3" src="" class="" alt="" />
                <strong class="d-block" id="wrapper-hour3"></strong>
              </div>

              <div class="col-2">
                <strong class="d-block mb-2" id="wrapper-time4"></strong>
                <img id="wrapper-icon-hour4" src="" class="" alt="" />
                <strong class="d-block" id="wrapper-hour4"></strong>
              </div>

              <div class="col-2">
                <strong class="d-block mb-2" id="wrapper-time5"></strong>
                <img id="wrapper-icon-hour5" src="" class="" alt="" />
                <strong class="d-block" id="wrapper-hour5"></strong>
              </div>
            </div>
          </div>

          <!-- Daily forecast -->
          <div class="card-body px-5">
            <div class="row align-items-center">
              <div class="col-lg-6">
                <strong>Today</strong>
              </div>

              <div class="col-lg-2 text-center">
                <img id="wrapper-icon-today" src="" class="w-100" alt="" />
              </div>

              <div class="col-lg-4 text-end">
                <span id="wrapper-forecast-temp-today"></span>
              </div>
            </div>

            <div class="row align-items-center">
              <div class="col-lg-6">
                <strong>Tomorrow</strong>
              </div>

              <div class="col-lg-2 text-center">
                <img id="wrapper-icon-tomorrow" src="" class="w-100" alt="" />
              </div>

              <div class="col-lg-4 text-end">
                <span id="wrapper-forecast-temp-tomorrow">28</span>
              </div>
            </div>

            <div class="row align-items-center">
              <div class="col-lg-6">
                <strong>Day after tomorrow</strong>
              </div>

              <div class="col-lg-2 text-center">
                <img id="wrapper-icon-dAT" src="" class="w-100" alt="" />
              </div>

              <div class="col-lg-4 text-end">
                <span id="wrapper-forecast-temp-dAT">28</span>
              </div>
            </div>
          </div>
        </div>

      </div>
    </div>

  </div>
</section></td>
            
        </tr>
        <tr>
            <td class="auto-style4" colspan="3">&nbsp;<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<body>
<div
id="myChart" style="width:18rem;  height:25rem;">
</div>

<script>
    google.charts.load('current', { 'packages': ['corechart'] });
    google.charts.setOnLoadCallback(drawChart);

    function drawChart() {
        var data = google.visualization.arrayToDataTable([
            ['Contry', 'Mhl'],
            ['Matara', 54.8],
            ['Galle', 48.6],
            ['Colombo', 44.4],
            ['Kegalle', 23.9],
            ['Jaffna', 14.5]
        ]);

        var options = {
            title: 'Students Studying in SASIRA',
            is3D: true
        };

        var chart = new google.visualization.PieChart(document.getElementById('myChart'));
        chart.draw(data, options);
    }
</script>

</body>   
 
 </td>
            <td>&nbsp; </td>
            <td>&nbsp;</td>
        </tr>
    </table>
 
     
    
 
     
      
</asp:Content>
