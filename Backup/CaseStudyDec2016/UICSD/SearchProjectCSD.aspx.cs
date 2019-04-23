using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using CaseStudyDec2016.ControllerCSD;

namespace CaseStudyDec2016.UICSD
{
    public partial class SearchProjectCSD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateProjectCSD.aspx");
        }

        protected void searchButton_Click(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            ProjectControllerCSD pc = new ProjectControllerCSD();
            ds = pc.searchProject(projectNameTextBox.Text);
            projectGridView.DataSource=ds;
            projectGridView.DataBind();

        }

        protected void projectGridView_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("Update.aspx");
        }

        protected void projectGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName=="Edit")
            {
                int rowId = int.Parse(e.CommandArgument.ToString());
                Session["ProjId"] = Convert.ToInt32(projectGridView.DataKeys[rowId].Value);
                Response.Redirect("UpdateProjectCSD.aspx");
            }
        }
    }
}