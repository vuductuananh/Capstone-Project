<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Thuchien.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thực hiện</title>
    <link rel="icon" href="Photo/favicon.ico" type="image/x-icon"> 
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
<style>
html,body,h1,h2,h3,h4 {font-family:"Lato", sans-serif}
.mySlides {display:none}
.w3-tag, .fa {cursor:pointer}
.w3-tag {height:15px;width:15px;padding:0;margin-top:6px}
    .auto-style1 {
        max-width: 980px;
        text-align: center;
        margin-left: auto;
        margin-right: auto;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
<!-- Navbar (sit on top) -->
    <div class="w3-top">
        <div class="w3-bar w3-white w3-wide w3-padding w3-card">
            <a href="Trangchu.aspx" class="w3-bar-item w3-button">Team <b>A&V</b></a>
            <div class="w3-right w3-hide-small">
                 <a href="Gioithieu.aspx" class="w3-bar-item w3-button">Giới thiệu</a>
                 <a href="Thuchien.aspx" class="w3-bar-item w3-button">Thực hiện</a>
                 <a href="Duan.aspx" class="w3-bar-item w3-button">Dự án</a>
                 <a href="Truyxuat.aspx" class="w3-bar-item w3-button">Truy xuất</a>
                 <a href="Lichsu.aspx" class="w3-bar-item w3-button">Lịch sử</a>
                 <a href="Login.aspx" class="w3-bar-item w3-button">Login</a>
            </div>
        </div>
    </div>
<!-- Content -->
<div class="auto-style1" style="max-width:1100px;margin-top:80px;margin-bottom:80px">
  <!-- Slideshow -->
  
  <!-- Grid -->
  <div class="w3-row-padding" id="plans">

  <!-- Grid -->
  <div class="w3-row-padding" id="about">

    <div class="w3-third w3-margin-bottom">
      <div class="w3-card-4">
        <img src="Photo/anhteam.jpg" alt="John" style="width:100%;  max-height:220px;">
        <div class="w3-container">
          <h3>TEAM A&V</h3>
          <p class="w3-opacity">Nhóm chúng tôi</p>
          <p style="text-align: justify;">Nhóm chúng tôi có 2 thành viên thực hiện dự án. Chúng tôi sẽ hỗ trợ giải quyết các vấn đề khiếu nại liên quan tới dự án.</p>
          <p style="font-weight: bold;">Liên hệ ngay với chúng tôi tại địa chỉ emai: teama&v@student.hcmute.edu.vn</p>
          <p><button class="w3-button w3-light-grey w3-block">Contact</button></p>
        </div>
      </div>
    </div>

    <div class="w3-third w3-margin-bottom">
      <div class="w3-card-4">
        <img src="Photo/logodien.jpg" alt="Mike" style="width:100%; max-height:220px;">
        <div class="w3-container">
          <h3>Ths. Phùng Sơn Thanh</h3>
          <p class="w3-opacity">Hỗ trợ kỹ thuật</p>
          <p style="text-align: justify;">Cung cấp các thông tin, giải đáp các thắc mắc liên quan. Hỗ trợ tư vấn đồng thời theo dõi và kiểm tra tiến độ thực hiện dự án.</p>
          <p style="font-weight: bold;">Liên hệ ngay với anh ấy tại địa chỉ emai: thanhps@hcmute.edu.vn</p>
          <p><button class="w3-button w3-light-grey w3-block">Contact</button></p>
        </div>
      </div>
    </div>

    <div class="w3-third w3-margin-bottom">
      <div class="w3-card-4">
        <img src="Photo/SPKT.jpg" alt="Jane" style="width:100%; max-height:220px;">
        <div class="w3-container">
          <h3>Đại Học Sư Phạm Kỹ Thuật</h3>
          <p class="w3-opacity">Địa điểm</p>
          <p style="text-align: justify;">Cung cấp khu vực làm việc, học tập, giải trí và đáp ứng các nhu cầu làm việc. Có đội ngũ nghiên cứu giàu kinh nghiệm.</p>
          <p style="font-weight: bold;">Liên hệ ngay tại địa chỉ: 1 Võ Văn Ngân, P. Linh Chiểu, TP. Thủ Đức, TP. HCM</p>
          <p><button class="w3-button w3-light-grey w3-block">Contact</button></p>
        </div>
      </div>
    </div>
  </div>

  <!-- Contact -->
  <div class="w3-center w3-padding-64" id="contact">
      <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16">Liên Hệ Chúng Tôi</span>
  </div>

  <form class="w3-container" action="/action_page.php" target="_blank">
    <div class="w3-section">
      <label>Name</label>
      <input class="w3-input w3-border w3-hover-border-black" style="width:100%;" type="text" name="Name" required>
    </div>
    <div class="w3-section">
      <label>Email</label>
      <input class="w3-input w3-border w3-hover-border-black" style="width:100%;" type="text" name="Email" required>
    </div>
    <div class="w3-section">
      <label>Subject</label>
      <input class="w3-input w3-border w3-hover-border-black" style="width:100%;" name="Subject" required>
    </div>
    <div class="w3-section">
      <label>Message</label>
      <input class="w3-input w3-border w3-hover-border-black" style="width:100%;" name="Message" required>
    </div>
    <button type="submit" class="w3-button w3-block w3-black">Send</button>
  </form>

</div>

<!-- Footer -->

<footer class="w3-container w3-padding-32 w3-light-grey w3-center">
  <h4>See You Again</h4>
  <a href="#" class="w3-button w3-black w3-margin"><i class="fa fa-arrow-up w3-margin-right"></i>To the top</a>
</footer>
    </div>

<footer>
   <div class="w3-container w3-dark-grey w3-padding-32">
        <div class="w3-row">
          <div class="w3-container w3-third">
            <h3 class="w3-bottombar w3-border-green">Hỗ trợ dự án</h3>              
            <ul class="w3-ul w3-hoverable w3-gray">
                <li><i class="fa fa-phone" style="font-size:24px; color:white;"></i> <i class="fa fa-envelope" style="font-size:24px; color:white;"></i> GVHD: ThS. Phùng Sơn Thanh</li>
                <li><i class="fa fa-phone" style="font-size:24px; color:white;"></i> <i class="fa fa-envelope" style="font-size:24px; color:white;"></i> Mr. Tuấn Anh: 0965082184 </li>
                <li><i class="fa fa-phone" style="font-size:24px; color:white;"></i> <i class="fa fa-envelope" style="font-size:24px; color:white;"></i> Mr. Vỹ: 0326179167</li>
            </ul>
            <h3 style="text-align: center; color: gray; font-weight: bold;">
                    <i class="fa fa-users" style="margin-right: 10px;"></i>TEAM A&V 
            </h3>
          </div>
          <div class="w3-container w3-third">
            <h3 class="w3-bottombar w3-border-red">Về chúng tôi</h3>
            <p>Trường Đại học SPKT TP. HCM</p>
            <p>Khoa Điện - Điện tử</p>
            <p>Bộ môn Tự động Điều khiển</p>
             <div class="w3-xlarge w3-section w3-center">
                 <i class="fa fa-facebook-official w3-hover-opacity"></i>
                 <i class="fa fa-instagram w3-hover-opacity"></i>
                 <i class="fa fa-snapchat w3-hover-opacity"></i>
                 <i class="fa fa-pinterest-p w3-hover-opacity"></i>
                 <i class="fa fa-twitter w3-hover-opacity"></i>
                 <i class="fa fa-linkedin w3-hover-opacity"></i>
            </div>
          </div>
          <div class="w3-container w3-third">  
            <img class="w3-image" src="Photo/AUN-QA.png" alt="Architecture" width="250" height="150" style="float: right"/> 
            <img class="w3-image" src="Photo/logoute.jpg" alt="Architecture" width="200" height="200"/>                          
             <div style="position: relative;">
                <img class="w3-image" src="Photo/logodien.jpg" alt="Architecture" 
                style="position: absolute; bottom: 0; right: 0; width:250px; height:150px;">
             </div>
          </div>
        </div>
  </div>
</footer>

<script>
// Slideshow
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function currentDiv(n) {
  showDivs(slideIndex = n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demodots");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length} ;
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" w3-white", "");
  }
  x[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " w3-white";
}
</script>
</form>
</body>
</html>
    
