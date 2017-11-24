using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Project : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["userId"] == null || Session["userId"].ToString().Trim().Equals(""))
        {
            Response.Redirect("Login.aspx");
        }
        if (!Page.IsPostBack) {
            this.dlProjectList.DataSource = this.GetDT();
            this.dlProjectList.DataBind();
        }
    }

    /// <summary>  
    /// 获取绑定的数据源  
    /// </summary>  
    /// <returns>DataTable，从match表中获取的内容</returns>  
    private DataTable GetDT()
    {
        DataTable dt = new DataTable();
        ProjectInfoData projectInfoData = new ProjectInfoData();
        dt = projectInfoData.GetDT();
        return dt;
    }
}