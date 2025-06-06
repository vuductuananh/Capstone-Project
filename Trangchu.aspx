<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Trangchu.aspx.cs" Inherits="_Default" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang chủ</title>
    <link rel="icon" href="Photo/favicon.ico" type="image/x-icon"> 
    <link href="Thems/Style.css" rel="stylesheet" />
    <link href="Thems/w3.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <meta charset="utf-8" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="Server">
            </asp:ToolkitScriptManager>

    <div class="w3-top">
        <div class="w3-bar w3-white w3-wide w3-padding w3-card">
        <a href="Trangchu.aspx" class="w3-bar-item w3-button">Team<b> A&V</b></a>
    <!-- Float links to the right. Hide them on small screens -->
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

    <header class="w3-display-container w3-content w3-wide" style="max-width:1500px;" id="home">
        <img class="w3-image" src="Photo/anhtrangchu.jpg" alt="Architecture" width="1600" height="600"/>
        <div class="w3-display-bottomright w3-margin-top w3-center">
            <h3 class="w3-xlarge w3-text-black"><span class="w3-padding w3-opacity-min"><b>Team</b></span><span class="w3-hide-small w3-text-black"><b>A&V</b</span></h3>
        </div>
    </header>
 
    
    <div class="auto-style1" style="max-width:1500px;margin-top:50px;margin-bottom:50px;padding-left:250px;padding-right:250px">   
        <div class="w3-panel">
            <h1 style="text-align: center";><b>GIỚI THIỆU</b></h1>
            <p class="w3-justify" style="font-weight: normal";>
                 Khi tự động hóa ngày càng đóng vai trò quan trọng trong sản xuất, nhu cầu tối ưu hóa các quy trình càng trở nên cấp thiết. 
                Đặc biệt, trong ngành gia công kim loại, việc phân loại và đóng hộp phôi sắt, thép đóng vai trò quan trọng nhằm đảm bảo độ 
                chính xác và nâng cao năng suất. Theo báo cáo từ Tập đoàn Hòa Phát – một công ty gia công và chế tạo các sản phẩm từ sắt thép
                hàng đầu Việt Nam, sản lượng phôi sắt, thép trong nước đạt hơn 5 triệu tấn/năm, cho thấy khối lượng sản phẩm cần phân loại rất
                lớn. Điều này đòi hỏi sự ra đời của các giải pháp tự động hóa nhằm cải thiện hiệu suất và giảm thiểu sai sót trong sản xuất.
            </p>
            <p class="w3-justify" style="font-weight: normal";>
            Tuy nhiên, các phương pháp phân loại truyền thống hiện nay vẫn còn tồn tại nhiều hạn chế. Việc phân loại thủ công không chỉ
            tốn nhiều thời gian mà còn dễ xảy ra sai sót do yếu tố con người, dẫn đến sự thiếu đồng nhất trong sản phẩm đầu ra. Một số 
            dây chuyền bán tự động tuy đã cải thiện phần nào tốc độ sản xuất, nhưng vẫn chưa giải quyết triệt để vấn đề nhận diện sai 
            lệch hình dạng nhỏ của phôi, đồng thời chưa tối ưu hóa được khâu đóng hộp và sắp xếp hàng hóa sau khi phân loại để dễ dàng
            bảo quản trước khi dựa vào các dây chuyền khác để tiến hành gia công.
            </p>
            <p class="w3-justify" style="font-weight: normal";>
            Trước thực trạng đó, việc ứng dụng loadcell và camera trong hệ thống phân loại phôi sắt được xem là một giải pháp hiệu quả 
            và hiện đại. Loadcell giúp xác định chính xác khối lượng của từng phôi, từ đó hỗ trợ việc phân loại theo trọng lượng. Bên cạnh 
            đó, camera tích hợp Trí tuệ nhân tạo (AI) và thị giác máy (Computer Vision) cho phép nhận diện hình dạng sản phẩm, phát hiện
            lỗi nhanh chóng, giảm thiểu sản phẩm lỗi lọt vào khâu đóng hộp. Đặc biệt, việc kết hợp thêm robot gắp đặt 2 trục giúp tự động
            hóa quá trình gắp và sắp xếp hàng hóa, đảm bảo sự đồng nhất, tối ưu hóa không gian và thời gian trong dây chuyền sản xuất.
             </p>
            <p class="w3-justify" style="font-weight: normal";>
                  Ở đây, WEB được thiết kế với 7 trang chính Trang chủ - Giới thiệu - Thực hiện - Dự án - Truy xuất - Lịch sử - Login với giao diện trực quan, bố cục rõ ràng, màu sắc hài hòa và dễ sử dụng. Đồng thời cung cấp đầy đủ thông tin cần thiết với mục đích giám sát và theo dõi hệ thống.
            </p>
        </div>
    </div>

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

