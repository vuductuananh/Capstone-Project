using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        lblErrorMessage.Visible = false; //Khi Visible = fales, sẽ ẩn dòng Text lblErrorMessage "Tên đăng nhập ko đúng..." mà mình đã code 
                                         //trong trang Login.aspx
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        using (SqlConnection sqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString))
        {
            sqlCon.Open();

            string query = "SELECT COUNT(1) FROM Account WHERE username=@Username AND password=@Password";
            SqlCommand sqlCmd = new SqlCommand(query, sqlCon);

            sqlCmd.Parameters.AddWithValue("@Username", txtUsername.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());

            int count = Convert.ToInt32(sqlCmd.ExecuteScalar());

            if (count == 1)
            {
                // Thêm thông tin đăng nhập vào cơ sở dữ liệu
                string insertQuery = "INSERT INTO LoginHis (Username, LoginTime) VALUES (@Username, @LoginTime)";
                SqlCommand insertCmd = new SqlCommand(insertQuery, sqlCon);

                insertCmd.Parameters.AddWithValue("@Username", txtUsername.Text.Trim());
                insertCmd.Parameters.AddWithValue("@LoginTime", DateTime.Now);

                int rowsAffected = insertCmd.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    // Lưu thông tin đăng nhập vào cơ sở dữ liệu thành công
                    Session["username"] = txtUsername.Text.Trim();
                    Response.Redirect("Trangchu.aspx");
                }
                else
                {
                    // Lưu thông tin đăng nhập vào cơ sở dữ liệu không thành công
                    lblErrorMessage.Visible = true;
                }
            }
            else
            {
                lblErrorMessage.Visible = true;
            }
        }

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString;
        using (SqlConnection sqlCon = new SqlConnection(connStr))
        {
            sqlCon.Open();

            // Check if the username already exists
            string checkUsernameQuery = "SELECT COUNT(1) FROM Account WHERE username=@Username";
            SqlCommand checkUsernameCmd = new SqlCommand(checkUsernameQuery, sqlCon);
            checkUsernameCmd.Parameters.AddWithValue("@Username", txtUsername.Text.Trim());

            int existingUserCount = Convert.ToInt32(checkUsernameCmd.ExecuteScalar());

            if (existingUserCount == 0)
            {
                // Username is unique, proceed with registration
                string insertQuery = "INSERT INTO Account (username, password) VALUES (@Username, @Password)";
                SqlCommand insertCmd = new SqlCommand(insertQuery, sqlCon);

                insertCmd.Parameters.AddWithValue("@Username", txtUsername.Text.Trim());
                insertCmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());

                int rowsAffected = insertCmd.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    // Registration successful
                    lblRegisterMessage.Text = "Đăng ký thành công";
                    lblRegisterMessage.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    // Registration failed
                    lblRegisterMessage.Text = "Đăng ký không thành công vui lòng thử lại";
                    lblRegisterMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                // Username already exists
                lblRegisterMessage.Text = "Tên người dùng đã tồn tại. Vui lòng chọn tên người dùng khác";
                lblRegisterMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }


}
