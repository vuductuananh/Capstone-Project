using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for SQL
/// </summary>
public class SQL
{
    public string connectionString;
    public SQL(string connectionString)
    {
        this.connectionString = connectionString;
    }
    // Lấy toàn bộ dữ liệu có trong table Sensor ở cơ sở dữ liệu
    public DataTable Getsensor()
    {
        string strSQL = "select *from data order by Thoigian DESC ";

        return GetData(strSQL, connectionString);
    }
    public DataTable Getsensor(
        string SensorID,
        string Starttime,
        string Endtime)

    {
        string strSQL = "select *from data where SensorID=N'" + SensorID + "' " +
                        "and Thoigian > CONVERT(datetime, N'" + Starttime + "', 103)" +
                        "and Thoigian < CONVERT(datetime, N'" + Endtime +"', 103) " +
                        "order by Thoigian DESC ";

        return GetData(strSQL, connectionString);
    }

    public System.Data.DataTable GetData(string selectCommand, string connectionString)
    {
        try
        {
            SqlDataAdapter dataAdapter = new SqlDataAdapter(selectCommand, connectionString);
            SqlCommandBuilder commandBuider = new SqlCommandBuilder(dataAdapter);
            System.Data.DataTable table = new System.Data.DataTable();
            table.Locale = System.Globalization.CultureInfo.InvariantCulture;
            dataAdapter.Fill(table);
            return table;
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
}