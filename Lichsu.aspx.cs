using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void txttimkiem_ClickUserID(object sender, EventArgs e)
    {
        //// Kiểm tra và lấy giá trị từ các TextBox
        //string sensorID = txtsensorID.Text;
        //string thoigiantruoc = txttimestart.Text;
        //string thoigiansau = txttimeend.Text;

        //// Tùy chỉnh SqlDataSource để cấp dữ liệu mới
        //SqlDataSource1.SelectParameters.Clear(); // Xóa các tham số cũ
        //SqlDataSource1.SelectParameters.Add("sensorid", sensorID);
        //SqlDataSource1.SelectParameters.Add("timestart", thoigiantruoc);
        //SqlDataSource1.SelectParameters.Add("timeend", thoigiansau);

        //SqlDataSource1.SelectCommand = "SELECT * FROM data WHERE SensorID = @sensorid AND Thoigian BETWEEN @timestart AND @timeend order by Thoigian DESC";


        //// Đảm bảo GridView được cập nhật dữ liệu mới
        //GridView1.DataBind();

        // Kiểm tra và lấy giá trị từ các TextBox
        string UserID = txtUserID.Text;
        string thoigiantruoc = txttimestartUserID.Text;
        string thoigiansau = txttimeendUserID.Text;

        // Tùy chỉnh SqlDataSource để cấp dữ liệu mới
        SqlDataSource1.SelectParameters.Clear(); // Xóa các tham số cũ
        SqlDataSource1.SelectParameters.Add("sensorid", UserID);
        SqlDataSource1.SelectParameters.Add("timestart", thoigiantruoc);
        SqlDataSource1.SelectParameters.Add("timeend", thoigiansau);

        SqlDataSource1.SelectCommand = "SELECT * FROM lichsuvanhanh WHERE UserID = @sensorid " +
                                       "AND Thoigian > CONVERT(datetime, @timestart, 103) " +
                                       "AND Thoigian < CONVERT(datetime, @timeend, 103)  " +
                                       "ORDER BY Thoigian DESC";


        // Đảm bảo GridView được cập nhật dữ liệu mới
        GridView1.DataBind();
    }







    
}