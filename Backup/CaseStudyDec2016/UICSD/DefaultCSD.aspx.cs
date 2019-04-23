using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaseStudyDec2016.UICSD
{
    public partial class DefaultCSD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("DefaultCSD.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("DefaultCSD.aspx");
        }

        protected void btn_Create_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateProjectCSD.aspx");
        }

        protected void btn_Search_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchProjectCSD.aspx"); 
        }

       
    }
}