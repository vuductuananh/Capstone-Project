<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Gioithieu.aspx.cs" Inherits="SCADA" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Giới thiệu</title>
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

  <div class="w3-panel">
    <h1><b>Giới thiệu hệ thống</b></h1>
      <p class="w3-justify">
          <span>Để đảm bảo chất lượng sản phẩm đạt chuẩn, duy trì năng suất ổn định và đáp ứng các tiêu chuẩn 
              kỹ thuật, hệ thống cần được thiết kế với các yêu cầu bao gồm: Yêu cầu về kiểm tra chất lượng phôi sắt; yêu cầu 
              về đóng hộp phôi sắt; yêu cầu về sắp xếp phôi sắt; yêu cầu về hệ thống điều khiển và giám sát; yêu cầu về an toàn 
              và bảo trì.Độ chính xác tương đối hệ thống cần kiểm tra các thông số kích thước, hình dạng ở mức tương đối, một số lỗi 
              quá nhỏ và sai lệch không đáng kể có thể bỏ qua.Tốc độ xử lý nhanh, quá trình kiểm tra phải diễn ra nhanh chóng để không 
              làm chậm dây chuyền sản xuất.Phát hiện khuyết tật hệ thống phải có khả năng phát hiện các lỗi như vết nứt, rỉ sét trên bề
              mặt. Ứng dụng xử lý ảnh sử dụng công nghệ xử lý hình ảnh để kiểm tra chất lượng tự động và nhanh chóng.
<o:p></o:p>
      </p>
  </div>

  <!-- Slideshow -->
  <div class="w3-container">
    <div class="w3-display-container mySlides">
      <img src="Photo/gioithieu.PNG" style="width:100%">
      <div class="w3-display-topleft w3-container w3-padding-32">
        <span class="w3-white w3-padding-large w3-animate-bottom">Màn hình giới thiệu</span>
      </div>
    </div>
    <div class="w3-display-container mySlides">
      <img src="Photo/MAIN.PNG" style="width:100%">
      <div class="w3-display-topleft w3-container w3-padding-32">
        <span class="w3-white w3-padding-large w3-animate-bottom">Màn hình chính</span>
      </div>
    </div>
    <div class="w3-display-container mySlides">
      <img src="Photo/MANUAL.PNG" style="width:100%">
      <div class="w3-display-topleft w3-container w3-padding-32">
        <span class="w3-white w3-padding-large w3-animate-bottom">Màn hình manual</span>
      </div>
    </div>
    <div class="w3-display-container mySlides">
      <img src="Photo/SETTINGG.PNG" style="width:100%">
      <div class="w3-display-topleft w3-container w3-padding-32">
        <span class="w3-white w3-padding-large w3-animate-bottom">Màn hình cài đặt</span>
      </div>
    </div>
    <div class="w3-display-container mySlides">
      <img src="Photo/CANHBAO.PNG" style="width:100%">
      <div class="w3-display-topleft w3-container w3-padding-32">
        <span class="w3-white w3-padding-large w3-animate-bottom">Màn hình cảnh báo</span>
      </div>
    </div>
    <div class="w3-display-container mySlides">
      <img src="Photo/CAMERA0.PNG" style="width:100%">
      <div class="w3-display-topleft w3-container w3-padding-32">
        <span class="w3-white w3-padding-large w3-animate-bottom">Màn hình camera</span>
      </div>
    </div>
    <div class="w3-display-container mySlides">
      <img src="Photo/CAMERA1.PNG" style="width:100%">
      <div class="w3-display-topleft w3-container w3-padding-32">
        <span class="w3-white w3-padding-large w3-animate-bottom">Màn hình camera</span>
      </div>
    </div>
    <div class="w3-display-container mySlides">
      <img src="Photo/CAMERA2.PNG" style="width:100%">
      <div class="w3-display-topleft w3-container w3-padding-32">
        <span class="w3-white w3-padding-large w3-animate-bottom">Màn hình camera</span>
      </div>
    </div>
    <div class="w3-display-container mySlides">
      <img src="Photo/CAMERA3.PNG" style="width:100%">
      <div class="w3-display-topleft w3-container w3-padding-32">
        <span class="w3-white w3-padding-large w3-animate-bottom">Màn hình camera</span>
      </div>
    </div>

    <!-- Slideshow next/previous buttons -->
    <div class="w3-container w3-dark-grey w3-padding w3-xlarge">
      <div class="w3-left" onclick="plusDivs(-1)"><i class="fa fa-arrow-circle-left w3-hover-text-teal"></i></div>
      <div class="w3-right" onclick="plusDivs(1)"><i class="fa fa-arrow-circle-right w3-hover-text-teal"></i></div>
    
      <div class="w3-center">
        <span class="w3-tag demodots w3-border w3-transparent w3-hover-white" onclick="currentDiv(1)"></span>
        <span class="w3-tag demodots w3-border w3-transparent w3-hover-white" onclick="currentDiv(2)"></span>
        <span class="w3-tag demodots w3-border w3-transparent w3-hover-white" onclick="currentDiv(3)"></span>
        <span class="w3-tag demodots w3-border w3-transparent w3-hover-white" onclick="currentDiv(4)"></span>
        <span class="w3-tag demodots w3-border w3-transparent w3-hover-white" onclick="currentDiv(5)"></span>
        <span class="w3-tag demodots w3-border w3-transparent w3-hover-white" onclick="currentDiv(6)"></span>
        <span class="w3-tag demodots w3-border w3-transparent w3-hover-white" onclick="currentDiv(7)"></span>
        <span class="w3-tag demodots w3-border w3-transparent w3-hover-white" onclick="currentDiv(8)"></span>
        <span class="w3-tag demodots w3-border w3-transparent w3-hover-white" onclick="currentDiv(9)"></span>
        <span class="w3-tag demodots w3-border w3-transparent w3-hover-white" onclick="currentDiv(10)"></span>
      </div>
    </div>
  </div>
  
    <div class="w3-row w3-container">
        <div class="w3-center w3-padding-64">
            <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16">CÁC NÉT NỔI BẬT</span>
        </div>

        <div class="w3-col l3 m6 w3-light-grey w3-container w3-padding-16">
            <h3>Thiết Kế</h3>
            <p class="w3-justify">
            <span>Giao diện vận hành thân thiện, hiển thị đầy đủ các thông tin</span><o:p>, bao gồm sự cố các lỗi và giá trị cảm biến.</o:p></p>
        </div>

        <div class="w3-col l3 m6 w3-grey w3-container w3-padding-16">
            <h3>Hoạt Động</h3>
            <p class="w3-justify">Hệ thống vận hành ổn định, ít xảy ra lỗi, tự động dừng khẩn cấp và cảnh báo người dùng khi có sự cố.</p>
       </div>

        <div class="w3-col l3 m6 w3-dark-grey w3-container w3-padding-16">
            <h3>Giảm Chi Phí</h3>
            <p class="w3-justify">Giảm số lượng nhân công và thời gian, giúp tăng năng suất hoạt động và nâng cao hiệu quả sản xuất.</p>
        </div>

        <div class="w3-col l3 m6 w3-black w3-container w3-padding-16">
            <h3 class="w3-center">An Toàn</h3>
            <p class="w3-justify">Người vận hành máy điều khiển qua Scada, hạn chế tiếp xúc trực với máy móc khi đang hoạt đông.</p>
        </div>
    </div>

  <!-- Grid -->
  <div class="w3-row-padding" id="plans">
    <div class="w3-center w3-padding-64">
      <h3 class="w3-center">NGUYÊN LÝ HOẠT ĐỘNG</h3>
        <p class="w3-justify">
            <span>Hệ thống được thiết kế với hai chế độ vận hành chính: chế độ tự động và chế độ bằng tay. Ở chế độ bằng tay, 
                người vận hành có thể trực tiếp điều khiển các thiết bị riêng lẻ như xi lanh, động cơ, băng tải,...Trong chế 
                độ tự động, người dùng cần nhập các thông số vận hành. Sau khi tiếp nhận, hệ thống sẽ hoạt động theo các giá 
                trị đã được cài đặt. Tiếp theo, người vận hành thực hiện thao tác Set Home cho robot hai trục X-Y và mâm xoay 
                nhằm xác định điểm làm việc ban đầu cho hệ thống. Khi các bước cài đặt hoàn tất, hệ thống sẽ chuyển sang trạng 
                thái sẵn sàng. Người dùng chỉ cần nhấn nút ON để khởi động quá trình vận hành. Hệ thống sẽ tự động chạy đến khi 
                hoàn thành số lượng sản phẩm đã được thiết lập và sẽ dừng lại khi đạt đủ. Trong trường hợp xảy ra sự cố, hệ thống 
                cũng được thiết lập để tự động dừng nhằm đảm bảo an toàn và ổn định.</span></p>
                
    </div>
  </div>
 </div>

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
</body>
</html>
