using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaseStudyDec2016.UICSD
{
    public partial class Default1CSD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchSkillCSD.aspx");
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateSkillCSD.aspx");
        }
    }
}