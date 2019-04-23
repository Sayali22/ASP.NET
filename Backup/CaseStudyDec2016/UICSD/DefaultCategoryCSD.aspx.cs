using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaseStudyDec2016.UICSD
{
    public partial class DefaultCategoryCSD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateSkillCategoryCSD.aspx");
        }

        protected void btn_search_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchCategoryCSD.aspx");
        }
    }
}