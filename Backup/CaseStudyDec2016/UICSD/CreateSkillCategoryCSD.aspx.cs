using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CaseStudyDec2016.ControllerCSD;

namespace CaseStudyDec2016.UICSD
{
    public partial class CreateSkillCategoryCSD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("DefaultCategoryCSD.aspx");
        }

        protected void addButton_Click(object sender, EventArgs e)
        {
            CategoryControllerCSD cc = new CategoryControllerCSD();
            cc.createCategory(categoryTextBox.Text, descriptionTextBox.Text,  Convert.ToInt32(Session["InsertedBy"].ToString()));
        }
    }
}