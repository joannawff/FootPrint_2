using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ProjectDetail : System.Web.UI.Page
{
    private int projectId;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userId"] == null || Session["userId"].ToString().Trim().Equals(""))
        {
            Response.Redirect("Login.aspx");
        }
        if (!Page.IsPostBack) { 
            projectId = int.Parse(Request.QueryString["id"]);
            Session["projectId"] = projectId;
            this.ParentList.DataSource = this.getSurveyInfoByProjectId(projectId);
            this.ParentList.DataBind();
        }

    }

    private DataTable getSurveyInfoByProjectId(int projectId) {
        SurveyInfoData surveyInfoData = new SurveyInfoData();
        DataTable dt = surveyInfoData.GetSurveyInfoByProjectId(projectId);
        return dt;
    }

    protected void ParentList_OnItemDataBound(object sender, DataListItemEventArgs e)
    {
        DataList ChildList = (DataList)e.Item.FindControl("ChildList");

        int surveyId = int.Parse(((Label)e.Item.FindControl("labSurveyId")).Text.Trim());
        SurveyDetailData detailData = new SurveyDetailData();
        DataTable dt = detailData.GetSurveyDetailBySurveyId(surveyId);

        /*获取查询结果myds后进行数据绑定*/
        ChildList.DataSource = dt;
        ChildList.DataBind();
    }
}