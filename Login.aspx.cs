using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void login_Click(object sender, EventArgs e)
    {
        String userName = this.TxtUserName.Text.Trim();
        String password = this.TxtPassword.Text.Trim();
        UserData userData = new UserData();
        if (userData.Login(userName, password)) {
            Response.Redirect("Index.aspx");
        }
    }
}