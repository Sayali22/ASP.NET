using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CaseStudyDec2016.ControllerCSD;
using System.Data;
using System.Data.SqlClient;

namespace CaseStudyDec2016.UICSD
{
    public partial class SearchCategoryCSD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void searchButton_Click(object sender, EventArgs e)
        {
            CategoryControllerCSD c = new CategoryControllerCSD();
            DataSet ds = new DataSet();
            ds = c.searchCategory(categoryTextBox.Text);
            searchResultGridView.DataSource = ds;
            searchResultGridView.DataBind();
        }

        protected void searchResultGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Edit") 
            {
                int rowId = Convert.ToInt32(e.CommandArgument.ToString());
                Session["CatId"] = Convert.ToInt32(searchResultGridView.DataKeys[rowId].Value);
                Response.Redirect("UpdateCategoryCSD.aspx");
            }

        }

        protected void searchResultGridView_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("UpdateCategoryCSD.aspx");
        }

        protected void addCategoryLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateSkillCategoryCSD.aspx");
        }
    }
}