<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang đăng nhập</title>
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
        <a href="" class="w3-bar-item w3-button">Team <b>A&V</b></a>
    <!-- Float links to the right. Hide them on small screens -->
        <div class="w3-right w3-hide-small">
            <a href="" class="w3-bar-item w3-button">Giới thiệu</a>
            <a href="" class="w3-bar-item w3-button">Thực hiện</a>
            <a href="" class="w3-bar-item w3-button">Dự án</a>
            <a href="" class="w3-bar-item w3-button">Truy xuất</a>
            <a href="" class="w3-bar-item w3-button">Lịch sử</a>
            <a href="Login.aspx" class="w3-bar-item w3-button">Login</a>
        </div>
     </div>
    </div>



    <div style="text-align: center; margin-top: 70px; font-family: Arial, sans-serif;">
            <h2 style="color: #333; font-size: 28px; font-weight: bold;">Đăng nhập / Đăng ký</h2>
            <table style="margin: auto; width: 100%; max-width: 400px;">
                <tr>
                    <td style="padding-bottom: 15px;">
                        <i class="fa fa-user-o fa-2x" style="color: #4CAF50;"></i>
                        <asp:TextBox ID="txtUsername" runat="server" placeholder="Tài khoản" style="padding: 10px; width: 100%; font-size: 14px; border-radius: 5px; border: 1px solid #ccc; margin-top: 5px;" />
                    </td>
                </tr>
                <tr>
                    <td style="padding-bottom: 15px;">
                        <i class="fa fa-key fa-2x" style="color: #4CAF50;"></i>
                        <asp:TextBox ID="txtPassword" runat="server" placeholder="Mật khẩu" TextMode="Password" style="padding: 10px; width: 100%; font-size: 14px; border-radius: 5px; border: 1px solid #ccc; margin-top: 5px;" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <!-- Tạo nút đăng nhập đăng ký -->
                        <div style="display: flex; justify-content: center; gap: 15px;">
                            <asp:Button ID="btnLogin" runat="server" Text="Đăng nhập" OnClick="btnLogin_Click" style="padding: 10px 20px; background-color: #4CAF50; color: white; border: none; border-radius: 5px; font-size: 16px; width: 48%; cursor: pointer;" />
                            <asp:Button ID="btnRegister" runat="server" Text="Đăng ký" OnClick="btnRegister_Click" style="padding: 10px 20px; background-color: #2196F3; color: white; border: none; border-radius: 5px; font-size: 16px; width: 48%; cursor: pointer;" />
                        </div>
                    </td>
                </tr>
            </table>

    <!-- Thông báo lỗi hoặc thông báo đăng ký -->
            <div style="margin: auto; width: 100%; max-width: 400px; text-align: center; padding: 20px; border-collapse: collapse;">
                    <tr style="background-color: #f2f2f2;"> 
                        <td>
                            <asp:Label ID="lblErrorMessage" runat="server" Text="Tên đăng nhập hoặc mật khẩu không đúng!!! Xin vui lòng thử lại" Font-Bold="True" ForeColor="Red"  style="margin-top: 15px; font-size: 16px; line-height: 1.5;"></asp:Label>
                        </td>
                    </tr>
                    <tr style="background-color: #f2f2f2;">
                        <td>
                            <asp:Label ID="lblRegisterMessage" runat="server" Text="" Font-Bold="True" style="margin-top: 15px; font-size: 16px; line-height: 1.5; color: Red;"></asp:Label>
                        </td>
                    </tr>
             </div>        
        </div>

  </form>
  
<footer>
   <div class="w3-container w3-dark-grey w3-padding-32">
        <div class="w3-row">
          <div class="w3-container w3-third">
            <h3 class="w3-bottombar w3-border-green">Hỗ trợ dự án</h3>              
            <ul class="w3-ul w3-hoverable w3-gray">
                <li><i class="fa fa-phone" style="font-size:24px; color:white;"></i> <i class="fa fa-envelope" style="font-size:24px; color:white;"></i> <b> GVHD: ThS. Phùng Sơn Thanh</b></li>
                <li><i class="fa fa-phone" style="font-size:24px; color:white;"></i> <i class="fa fa-envelope" style="font-size:24px; color:white;"></i> <b> Mr. Tuấn Anh: 0965082184 </b></li>
                <li><i class="fa fa-phone" style="font-size:24px; color:white;"></i> <i class="fa fa-envelope" style="font-size:24px; color:white;"></i> <b> Mr. Vỹ: 0326179167</b></li>
            </ul>
            <h3 style="text-align: center; color: gray; font-weight: bold;">
                    <i class="fa fa-users" style="margin-right: 10px;"></i>TEAM A&V 
            </h3>
          </div>
          <div class="w3-container w3-third">
            <h3 class="w3-bottombar w3-border-red">Về chúng tôi</h3>
            <p><b>Trường Đại học SPKT TP.HCM</b></p>
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
</body>
</html>

