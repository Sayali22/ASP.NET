using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using CaseStudyDec2016.ControllerCSD;
using CaseStudyDec2016.DAOCSD;
using System.Data.SqlClient;


namespace CaseStudyDec2016.UICSD
{
    public partial class SearchSkillCSD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            Createskillcontroller csc = new Createskillcontroller();
           ds= csc.searchskill(SkillTextBox.Text);
            Searchgridview.DataSource = ds;
            Searchgridview.DataBind();

        }

        protected void AddSkillLink_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateSkillCSD.aspx"); 
        }

        

        protected void Searchgridview_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "edit")
            {
                int rowId = int.Parse(e.CommandArgument.ToString());
                Session["SkillId"] = Convert.ToInt32(Searchgridview.DataKeys[rowId].Value);
                Response.Redirect("UpdateSkillCSD.aspx");
            }

        }

        

    }
}