using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaseStudyDec2016.UICSD
{
    public partial class HomeCSD : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            //Response.Redirect("HomeCSD.aspx");
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
           //Response.Redirect("DefaultCSD.aspx");
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            //Response.Redirect("Default1CSD.aspx");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            //Response.Redirect("~UICSD/EmployeeDefault/DefaultCSD2.aspx");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            //Response.Redirect("DefaultCSD.aspx");
        }

       
    }
}