<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Duan.aspx.cs" Inherits="newpage" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dự án</title>
    <link rel="icon" href="Photo/favicon.ico" type="image/x-icon"> 
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway"/>
    <link href="Thems/w3.css" rel="stylesheet" />
    <link href="Thems/pagination.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
</head>
<body class ="w3-light-gray">
    <form id="form1" runat="server">
<!-- Navbar (sit on top) -->
    
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

 <div class="w3-container w3-grey w3-padding-32">  
       <div class="w3-row-padding w3-margin-bottom w3-center">
           <div class="w3-quarter">
              <div class="w3-container w3-white w3-padding-16">
                <i class="fa fa-tasks w3-xxxlarge" style="color: green;"></i>
                <div class="w3-clear"></div>
                <h4 style="color: black; font-weight: bolder;">Bộ phận quản lý</h4>
              </div>
          </div>
           <div class="w3-quarter">
              <div class="w3-container w3-white w3-padding-16">
                <i class="fa fa-laptop w3-xxxlarge" style="color: green;"></i>
                <div class="w3-clear"></div>
                <h4 style="color: black; font-weight: bolder;">Bộ phận thiết kế</h4>
              </div>
          </div>
           <div class="w3-quarter">
              <div class="w3-container w3-white w3-padding-16">
                <i class="fa fa-credit-card-alt w3-xxxlarge" style="color: green;"></i>
                <div class="w3-clear"></div>
                <h4 style="color: black; font-weight: bolder;">Trao đổi & bán hàng</h4>
              </div>
          </div>
           <div class="w3-quarter">
              <div class="w3-container w3-white w3-padding-16">
                <i class="fa fa-users w3-xxxlarge" style="color: green;"></i>
                <div class="w3-clear"></div>
                <h4 style="color: black; font-weight: bolder;">Bộ phận nhân sự</h4>
              </div>
          </div>
      </div>
      <div class="w3-row-padding w3-margin-bottom w3-center">
        <div class="w3-quarter">
           <div class="w3-container w3-white w3-padding-16">
             <i class="fa fa-line-chart w3-xxxlarge" style="color: green;"></i>
             <div class="w3-clear"></div>
             <h4 style="color: black; font-weight: bolder;">Bộ phận phát triển</h4>
           </div>
       </div>
        <div class="w3-quarter">
           <div class="w3-container w3-white w3-padding-16">
             <i class="fa fa-phone-square w3-xxxlarge" style="color: green;"></i>
             <div class="w3-clear"></div>
             <h4 style="color: black; font-weight: bolder;">Bộ phận chăm sóc</h4>
           </div>
       </div>
        <div class="w3-quarter">
           <div class="w3-container w3-white w3-padding-16">
             <i class="fa fa-graduation-cap w3-xxxlarge" style="color: green;"></i>
             <div class="w3-clear"></div>
             <h4 style="color: black; font-weight: bolder;">Hướng dẫn & đào tạo</h4>
           </div>
       </div>
        <div class="w3-quarter">
           <div class="w3-container w3-white w3-padding-16">
             <i class="fa fa-coffee w3-xxxlarge" style="color: green;"></i>
             <div class="w3-clear"></div>
             <h4 style="color: black; font-weight: bolder;">Marketing</h4>
           </div>
       </div>
    </div>
 </div>

 

  <div class="w3-panel">
    <div class="w3-row-padding" style="margin:0 -16px">
      <div class="w3-third">
        <h5>Địa điểm</h5>
        <img src="Photo/New_SPKT.PNG" style="width:100%" alt="Google Regional Map"/>
      </div>
      <div class="w3-twothird">
        <h5>Tin mới</h5>
        <table class="w3-table w3-striped w3-white">
          <tr>
            <td><i class="fa fa-user w3-text-blue w3-large"></i></td>
            <td>New record, over 90 views.</td>
            <td><i>10 mins</i></td>
          </tr>
          <tr>
            <td><i class="fa fa-bell w3-text-red w3-large"></i></td>
            <td>Database error.</td>
            <td><i>15 mins</i></td>
          </tr>
          <tr>
            <td><i class="fa fa-users w3-text-yellow w3-large"></i></td>
            <td>New record, over 40 users.</td>
            <td><i>17 mins</i></td>
          </tr>
          <tr>
            <td><i class="fa fa-comment w3-text-red w3-large"></i></td>
            <td>New comments.</td>
            <td><i>25 mins</i></td>
          </tr>
        </table>
      </div>
    </div>
  </div>
  <hr />
  <div class="w3-container">



          <h5 class="fa fa-bell"><b> Dữ liệu thực</b></h5>

      <p>
          <asp:GridView ID="GridView3" runat="server" text-align="center" AutoGenerateColumns="False" CellPadding="20" DataSourceID="SqlDataSource2" Font-Size="Small" Width="1138px" BackColor="white"  HorizontalAlign="Center" GridLines="None" AllowPaging="True" PageSize="15" AllowSorting="True" >
              <AlternatingRowStyle BackColor="#90EE90" BorderColor="Black" />
              <PagerStyle CssClass="pagination-ys" />
              <Columns>
                  <asp:BoundField DataField="IDThongtin" HeaderText="Mã thông tin" SortExpression="IDThongtin" />
                  <asp:BoundField DataField="Tendulieu" HeaderText="Thông tin" SortExpression="Tendulieu" />
                  <asp:BoundField DataField="Giatri" HeaderText="Giá trị" SortExpression="Giatri" />
                  <asp:BoundField DataField="Thoigian" HeaderText="Thời gian cập nhật" SortExpression="Thoigian" />
              </Columns>
              <EditRowStyle Font-Bold="False" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True" />
              <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
              <HeaderStyle BackColor="#008000" />
              <PagerSettings PageButtonCount="5" />
              <RowStyle HorizontalAlign="Center" />
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" SelectCommand="SELECT * FROM dataON ORDER BY Thoigian DESC"></asp:SqlDataSource> 
      
      </p>





    <h5 class="fa fa-bell"><b> Thông tin toàn bộ dữ liệu</b></h5>

      <p>
          <asp:GridView ID="GridView1" runat="server" text-align="center" AutoGenerateColumns="False" CellPadding="20" DataSourceID="SqlDataSource1" Font-Size="Small" Width="1138px" BackColor="white"  HorizontalAlign="Center" GridLines="None" AllowPaging="True" PageSize="15" AllowSorting="True" >
              <AlternatingRowStyle BackColor="#90EE90" BorderColor="Black" />
              <PagerStyle CssClass="pagination-ys" />
              <Columns>
                  <asp:BoundField DataField="IDThongtin" HeaderText="Mã thông tin" SortExpression="IDThongtin" />
                  <asp:BoundField DataField="Tendulieu" HeaderText="Thông tin" SortExpression="Tendulieu" />
                  <asp:BoundField DataField="Giatri" HeaderText="Giá trị" SortExpression="Giatri" />
                  <asp:BoundField DataField="Thoigian" HeaderText="Thời gian cập nhật" SortExpression="Thoigian" />
              </Columns>
              <EditRowStyle Font-Bold="False" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True" />
              <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
              <HeaderStyle BackColor="#008000" />
              <PagerSettings PageButtonCount="5" />
              <RowStyle HorizontalAlign="Center" />
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" SelectCommand="SELECT * FROM data ORDER BY Thoigian DESC"></asp:SqlDataSource> 
          <br />
          <asp:Button  runat="server" Text ="Export to Excel" OnClick="ExportToExcel" BackColor="#009900" Font-Bold="True" Font-Names="3DS Fonticon CID" ForeColor="White"/>
      </p>

      <asp:GridView ID="GridView2" runat="server" Visible="False"></asp:GridView>
      

    <p>New Visitors</p>
    <div class="w3-grey">
      <div class="w3-container w3-center w3-padding w3-pale-green" style="width:25%">+25%</div>
    </div>

    <p>New Users</p>
    <div class="w3-grey">
      <div class="w3-container w3-center w3-padding w3-light-green" style="width:50%">50%</div>
    </div>

    <p>Bounce Rate</p>
    <div class="w3-grey">
      <div class="w3-container w3-center w3-padding w3-green" style="width:75%">75%</div>
    </div>
  </div>

    <p></p>

  <div class="w3-container w3-dark-grey w3-padding-32">
    <div class="w3-row">
      <div class="w3-container w3-third">
        <h5 class="w3-bottombar w3-border-green">Demographic</h5>
        <p>Language</p>
        <p>Country</p>
        <p>City</p>
      </div>
      <div class="w3-container w3-third">
        <h5 class="w3-bottombar w3-border-red">System</h5>
        <p>Browser</p>
        <p>OS</p>
        <p>More</p>
      </div>
      <div class="w3-container w3-third">
        <h5 class="w3-bottombar w3-border-orange">Target</h5>
        <p>Users</p>
        <p>Active</p>
        <p>Geo</p>
        <p>Interests</p>
      </div>
    </div>
  </div>
    <p></p>
  <!-- End page content -->
</div>

        <footer>
   <div class="w3-container w3-dark-grey w3-padding-32">
        <div class="w3-row">
          <div class="w3-container w3-third">
            <h3 class="w3-bottombar w3-border-green">Hỗ trợ dự án</h3>              
            <ul class="w3-ul w3-hoverable w3-gray">
                <li><i class="fa fa-phone" style="font-size:24px; color:white;"></i> <i class="fa fa-envelope" style="font-size:24px; color:white;"></i> <b> GVHD: ThS. Phùng Sơn Thanh</b></li>
                <li><i class="fa fa-phone" style="font-size:24px; color:white;"></i> <i class="fa fa-envelope" style="font-size:24px; color:white;"></i> <b> Mr.Tuấn Anh : 0965082184 </b></li>
                <li><i class="fa fa-phone" style="font-size:24px; color:white;"></i> <i class="fa fa-envelope" style="font-size:24px; color:white;"></i> <b> Mr.Vỹ : 0326179167</b></li>
            </ul>
            <h3 style="text-align: center; color: gray; font-weight: bold;">
                    <i class="fa fa-users" style="margin-right: 10px;"></i>TEAM A&V 
            </h3>
          </div>
          <div class="w3-container w3-third">
            <h3 class="w3-bottombar w3-border-red">Về chúng tôi</h3>
            <p><b>Trường đại học SPKT TP.HCM</b></p>
            <p><b>Khoa Điện - Điện tử</b></p>
            <p><b>Bộ môn Điều khiển tự động</b></p>
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

