<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Lichsu.aspx.cs" Inherits="Views" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng nhập</title>
    <link rel="icon" href="Photo/favicon.ico" type="image/x-icon"> 
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link href="Thems/pagination.css" rel="stylesheet" />
    <link href="Thems/w3.css" rel="stylesheet" />
</head>
<body class ="w3-light-gray">
    <form id="form1" runat="server">

     <div class="w3-top">
        <div class="w3-bar w3-white w3-wide w3-padding w3-card">
            <a href="Trangchu.aspx" class="w3-bar-item w3-button">Team <b>A&V</b></a>
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


<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:100px;margin-right:100px;margin-top:43px;">

  <!-- Header -->
  <header class="w3-container" style="padding-top:22px">
    <h5><b><i class="fa fa-dashboard"></i> Dữ liệu dự án</b></h5>
  </header>

  

  <div class="w3-panel">
    <div class="w3-row-padding" style="margin:0 -16px">
      <div class="w3-third">
        <h5>Regions</h5>
        <img src="Photo/SPKT_01.PNG" style="width:100%" alt="Google Regional Map"/>
      </div>
      <div class="w3-twothird">
        <h5>Feeds</h5>
        <table class="w3-table w3-striped w3-white">
          <tr>
            <td><i class="fa fa-user w3-text-blue w3-large"></i></td>
            <td>Số lược xem, 214 lượt xem</td>
            <td><i>15 phút trước</i></td>
          </tr>
          <tr>
            <td><i class="fa fa-bell w3-text-red w3-large"></i></td>
            <td>Số lần truy xuất, 15 lần</td>
            <td><i>10 phút trước</i></td>
          </tr>
          <tr>
            <td><i class="fa fa-users w3-text-yellow w3-large"></i></td>
            <td>Người dùng mới, 1 người</td>
            <td><i>20 phút trước</i></td>
          </tr>
          <tr>
            <td><i class="fa fa-comment w3-text-red w3-large"></i></td>
            <td>Lượt bình luận, 13 bình luận</td>
            <td><i>5 phút trước</i></td>
          </tr>
        </table>
      </div>
    </div>
  </div>


  <hr />
  <div class="w3-container">

    <h3 class="fa fa-bell">&nbsp;<b> Nhập lịch sử vận hành </b></h3>

      <p style="text-align:center">
          <asp:TextBox ID="txtUserID" runat="server" placeholder="Nhập ID người dùng..." BorderStyle="Outset"></asp:TextBox>
          <asp:TextBox ID="txttimestartUserID" runat="server" placeholder="Thời gian bắt đầu..." BorderStyle="Outset"></asp:TextBox>
          <asp:TextBox ID="txttimeendUserID" runat="server" placeholder="Thời gian kết thúc..." BorderStyle="Outset"></asp:TextBox>
          <asp:Button ID="txttimkiemUserID" runat="server" OnClick="txttimkiem_ClickUserID" Text="Tìm kiếm" BackColor="white" BorderStyle="Outset" Font-Bold="True" style="border-radius: 5px; font-style: italic"/>
      </p>
      <p>
          <asp:GridView ID="GridView1" runat="server" text-align="center" AutoGenerateColumns="False" CellPadding="20" DataSourceID="SqlDataSource1" Font-Size="Small" Width="1138px" BackColor="White"  HorizontalAlign="Center" GridLines="None" AllowPaging="True" PageSize="10" AllowSorting="True" >
              <PagerStyle CssClass="pagination-ys" />
              <AlternatingRowStyle BackColor="#ADD8E6" BorderColor="Black" />
              <Columns>
                  <asp:BoundField DataField="UserID" HeaderText="Mã người dùng" SortExpression="UserID" />
                  <asp:BoundField DataField="Tentaikhoan" HeaderText="Tên tài khoản" SortExpression="Tentaikhoan" />
                  <asp:BoundField DataField="Sukien" HeaderText="Sự kiện" SortExpression="Sukien" />
                  <asp:BoundField DataField="Thoigian" HeaderText="Thời gian cập nhật" SortExpression="Thoigian" />
              </Columns>
              <EditRowStyle Font-Bold="False" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True" />
              <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
              <HeaderStyle BackColor="#ADD8E6" />
              <PagerSettings PageButtonCount="5" />
              <RowStyle HorizontalAlign="Center" />
          </asp:GridView>
         

         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" SelectCommand="SELECT * FROM lichsuvanhanh WHERE UserID = @sensorid AND Thoigian > CONVERT(datetime, @timestart, 103) AND Thoigian < CONVERT(datetime, @timeend, 103) ORDER BY Thoigian DESC">
         <SelectParameters>
            <asp:ControlParameter ControlID="txtUserID" Name="sensorid" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txttimestartUserID" Name="timestart" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txttimeendUserID" Name="timeend" PropertyName="Text" Type="String" />
         </SelectParameters>
         </asp:SqlDataSource>

      </p>


            <h3 class="fa fa-bell">&nbsp;<b> Lịch sử đăng nhập HMI </b></h3>

<p>
    <asp:GridView ID="GridView2" runat="server" text-align="center" AutoGenerateColumns="False" CellPadding="20" DataSourceID="SqlDataSource3" Font-Size="Small" Width="1138px" BackColor="White"  HorizontalAlign="Center" GridLines="None" AllowPaging="True" PageSize="5" AllowSorting="True" >
        <AlternatingRowStyle BackColor="#FFA500" BorderColor="Black" />
        <PagerStyle CssClass="pagination-ys" />
        <Columns>
            <asp:BoundField DataField="IDUser" HeaderText="Mã người dùng" SortExpression="IDUser" />
            <asp:BoundField DataField="Username" HeaderText="Tên người dùng" SortExpression="Username" />
            <asp:BoundField DataField="Logintime" HeaderText="Thời gian đăng nhập" SortExpression="Logintime" />
        </Columns>
        <EditRowStyle Font-Bold="False" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True" />
        <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        <HeaderStyle BackColor="#FFA500" />
        <PagerSettings PageButtonCount="5" />
        <RowStyle HorizontalAlign="Center" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" SelectCommand="SELECT * FROM LoginHisScada ORDER BY Logintime DESC"></asp:SqlDataSource> 
    
</p>


      <h3 class="fa fa-bell">&nbsp;<b> Lịch sử đăng nhập Web </b></h3>

<p>
    <asp:GridView ID="GridView3" runat="server" text-align="center" AutoGenerateColumns="False" CellPadding="20" DataSourceID="SqlDataSource2" Font-Size="Small" Width="1138px" BackColor="White"  HorizontalAlign="Center" GridLines="None" AllowPaging="True" PageSize="5" AllowSorting="True" >
        <AlternatingRowStyle BackColor="#FFA500" BorderColor="Black" />
        <PagerStyle CssClass="pagination-ys" />
        <Columns>
            <asp:BoundField DataField="Username" HeaderText="Tên người dùng" SortExpression="Username" />
            <asp:BoundField DataField="Logintime" HeaderText="Thời gian đăng nhập" SortExpression="Logintime" />
        </Columns>
        <EditRowStyle Font-Bold="False" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True" />
        <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        <HeaderStyle BackColor="#FFA500" />
        <PagerSettings PageButtonCount="5" />
        <RowStyle HorizontalAlign="Center" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" SelectCommand="SELECT * FROM LoginHis ORDER BY Logintime DESC"></asp:SqlDataSource> 
    
</p>
  
  

  <div class="w3-container">
    <h5>Lịch sử hoạt động</h5>
    <ul class="w3-ul w3-card-4 w3-white">
      <li class="w3-padding-16">
        <img src="/Photo/hh0.jpg" class="w3-left w3-circle w3-margin-right" style="width:35px"/>
        <span class="w3-Small">Mr.Hiếu -Vận hành <span class="w3-small" style="float: right; color: blue; cursor: pointer;">Xem hoạt động</span></span><br/>
        <span class="w3-small" style="color: gray;">Kiếm tra bảo trì</span>
      </li>
      <li class="w3-padding-16">
        <img src="/Photo/hh1.jpg" class="w3-left w3-circle w3-margin-right" style="width:35px"/>
        <span class="w3-Small">Ms.Chi - Nhân viên <span class="w3-small" style="float: right; color: blue; cursor: pointer;">Xem hoạt động</span></span><br/>
        <span class="w3-small" style="color: gray;">Lấy dữ liệu</span>
      </li>
      <li class="w3-padding-16">
        <img src="/Photo/hh2.jpg" class="w3-left w3-circle w3-margin-right" style="width:35px"/>
        <span class="w3-Small">Ms.An - Nhân viên <span class="w3-small" style="float: right; color: blue; cursor: pointer;">Xem hoạt động</span></span><br/>
        <span class="w3-small" style="color: gray;">Lấy dữ liệu</span>
      </li>
      <li class="w3-padding-16">
        <img src="/Photo/hh3.jpg" class="w3-left w3-circle w3-margin-right" style="width:35px"/>
        <span class="w3-Small">Ms.Phương - Quản lý <span class="w3-small" style="float: right; color: blue; cursor: pointer;">Xem hoạt động</span></span><br/>
        <span class="w3-small" style="color: gray;">Thông tin bổ sung về công việc</span>
      </li>
    </ul>
  </div>

      <br />
  </div>
</div>
  <!-- Footer -->
 <footer>
   <div class="w3-container w3-dark-grey w3-padding-32">
        <div class="w3-row">
          <div class="w3-container w3-third">
            <h3 class="w3-bottombar w3-border-green">Hỗ trợ dự án</h3>              
            <ul class="w3-ul w3-hoverable w3-gray">
                <li><i class="fa fa-phone" style="font-size:24px; color:white;"></i> <i class="fa fa-envelope" style="font-size:24px; color:white;"></i> <b> GVHD: ThS. Phùng Sơn Thanh</b></li>
                <li><i class="fa fa-phone" style="font-size:24px; color:white;"></i> <i class="fa fa-envelope" style="font-size:24px; color:white;"></i> <b> Mr.Tuấn Anh: 0965082184 </b></li>
                <li><i class="fa fa-phone" style="font-size:24px; color:white;"></i> <i class="fa fa-envelope" style="font-size:24px; color:white;"></i> <b> Mr.Vỹ: 0326179167</b></li>
            </ul>
            <h3 style="text-align: center; color: gray; font-weight: bold;">
                    <i class="fa fa-users" style="margin-right: 10px;"></i>TEAM A&V 
            </h3>
          </div>
          <div class="w3-container w3-third">
            <h3 class="w3-bottombar w3-border-red">Về chúng tôi</h3>
            <p><b>Trường Đại học SPKT TP. HCM</b></p>
            <p><b>Khoa Điện - Điện tử</b></p>
            <p><b>Bộ môn Tự động Điều khiển</b></p>
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
// Get the Sidebar
var mySidebar = document.getElementById("mySidebar");

// Get the DIV with overlay effect
var overlayBg = document.getElementById("myOverlay");

// Toggle between showing and hiding the sidebar, and add overlay effect
function w3_open() {
    if (mySidebar.style.display === 'block') {
        mySidebar.style.display = 'none';
        overlayBg.style.display = "none";
    } else {
        mySidebar.style.display = 'block';
        overlayBg.style.display = "block";
    }
}

// Close the sidebar with the close button
function w3_close() {
    mySidebar.style.display = "none";
    overlayBg.style.display = "none";
}
</script>

    </form>
</body>
</html>

