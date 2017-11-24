using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// SurveyInfoData 的摘要说明
/// </summary>
public class SurveyInfoData
{
    private SqlConnection con;
    public SurveyInfoData()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
        con = new SqlConnection();
        //con.ConnectionString = "User ID=LAPTOP-MH6A9KP3\\joann,Initial Catalog=FootPrintDB;Data Source=(localdb)\\MSSQLLocalDB;Password=1q2q3q4q;Integrated Security=True";
        con.ConnectionString = "Initial Catalog=FootPrintDB;Data Source=(localdb)\\MSSQLLocalDB;Integrated Security=True";
    }

    public DataTable GetSurveyInfoByProjectId(int projectId) {
        
        DataTable dt = new DataTable(); //声明数据库表

        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select " +
            "distinct s.Id as Id," +
            "s.Title as Title," +
            "s.ProjectId as ProjectId " +
            "from " +
            "Survey s join Project p " +
            "on s.ProjectId = p.Id " +
            "where s.ProjectId = " + projectId;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        con.Close();
        return dt;
    }
}