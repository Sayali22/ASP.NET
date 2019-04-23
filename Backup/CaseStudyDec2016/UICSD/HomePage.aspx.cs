using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaseStudyDec2016.UICSD
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("DefaultCSD.aspx");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            
        }

        protected void ImageButton4_Click1(object sender, ImageClickEventArgs e)
        {
           // Response.Redirect("DefaultCSD.aspx");
        }

        protected void ImageButton3_Click1(object sender, ImageClickEventArgs e)
        {
           // Response.Redirect("DefaultCategoryCSD.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
           // Response.Redirect("HomePage.aspx");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}