using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.SessionState;

/// <summary>
/// UserData 的摘要说明
/// </summary>
public class UserData
{
    private SqlConnection con;
    public UserData()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
        con = new SqlConnection();
        con.ConnectionString = "Data Source = (localdb)\\MSSQLLocalDB; AttachDbFilename=|DataDirectory|\\FootPrint.mdf; Integrated Security = True";
        //con.ConnectionString = "Initial Catalog=FootPrintDB;Data Source=(localdb)\\MSSQLLocalDB;Integrated Security=True";

    }

    public bool Login(String userName, String password)
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select id,Password from dbo.UserInfo where UserName = \'" + userName + "\'";
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            String tmpPass = dr.GetString(1).Trim();
            if (tmpPass.Equals(password))
            {
                HttpContext.Current.Session["userId"] = dr.GetInt32(0);
                HttpContext.Current.Session["userName"] = dr.GetString(1).Trim();
                return true;
            }

        }
        con.Close();
        return false;
    }

}