using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Drawing;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;
public partial class newpage : System.Web.UI.Page
{
    string connectionString = ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    private void BindGrid()
    {
        DataTable dt = new DataTable();
        using (SqlConnection sqlCon = new SqlConnection(connectionString))
        {
            sqlCon.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("select * from data order by Thoigian DESC ", sqlCon);
            sqlDa.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();

        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void ExportToExcel(object sender, EventArgs e)
    {
        Response.Clear();
        Response.Buffer = true;
        Response.AddHeader("content-disposition", "attachment;filename=GridViewExport.xls");
        Response.Charset = "";
        Response.ContentType = "application/vnd.ms-excel";
        using (StringWriter sw = new StringWriter())
        {
            HtmlTextWriter hw = new HtmlTextWriter(sw);

            //To Export all pages
            GridView2.AllowPaging = false;
            GridView2.Visible = true;
            BindGrid();
            this.BindGrid();

            GridView2.HeaderRow.BackColor = Color.White;
            foreach (TableCell cell in GridView2.HeaderRow.Cells)
            {
                cell.BackColor = GridView2.HeaderStyle.BackColor;
            }
            foreach (GridViewRow row in GridView2.Rows)
            {
                row.BackColor = Color.White;
                foreach (TableCell cell in row.Cells)
                {
                    if (row.RowIndex % 2 == 0)
                    {
                        cell.BackColor = GridView2.AlternatingRowStyle.BackColor;
                    }
                    else
                    {
                        cell.BackColor = GridView2.RowStyle.BackColor;
                    }
                    cell.CssClass = "textmode";
                }
            }

            GridView2.RenderControl(hw);

            //style to format numbers to string
            string style = @"<style> .textmode { } </style>";
            Response.Write(style);
            Response.Output.Write(sw.ToString());
            Response.Flush();
            Response.End();
            GridView2.Visible = false;
        }
    }

    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */
    }
}