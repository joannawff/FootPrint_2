using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.SessionState;

/// <summary>
/// ProjectInfoData 的摘要说明
/// </summary>
public class ProjectInfoData
{
    private SqlConnection con;
    public ProjectInfoData()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
        con = new SqlConnection();
        con.ConnectionString = "Data Source = (localdb)\\MSSQLLocalDB; AttachDbFilename=|DataDirectory|\\FootPrint.mdf; Integrated Security = True";
        //con.ConnectionString = "Initial Catalog=FootPrintDB;Data Source=(localdb)\\MSSQLLocalDB;Integrated Security=True";

    }
    public DataTable GetDT() {
        DataTable dt = new DataTable(); //声明数据库表  
        int userId = int.Parse(HttpContext.Current.Session["userId"].ToString().Trim());
        String userName = HttpContext.Current.Session["userName"].ToString().Trim();
        //获取数据源  
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        if(userName=="admin")
            cmd.CommandText = "select " +
            "p.Id as Id," +
            "p.ProjectName as ProjectName," +
            "u.UserName as UserName," +
            "u.Tel as Tel," +
            "p.Resident as Resident " +
            "from " +
            "Project p join UserInfo u " +
            "on p.UserId=u.id " +
            "where u.id = " + userId;
        else
            cmd.CommandText = "select " +
            "p.Id as Id," +
            "p.ProjectName as ProjectName," +
            "u.UserName as UserName," +
            "u.Tel as Tel," +
            "p.Resident as Resident " +
            "from " +
            "Project p join UserInfo u " +
            "on p.UserId=u.id ";
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        con.Close();
        return dt;
    }
}