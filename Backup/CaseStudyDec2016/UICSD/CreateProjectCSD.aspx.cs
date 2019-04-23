using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CaseStudyDec2016.ControllerCSD;

namespace CaseStudyDec2016.UICSD
{
    public partial class CreateProjectCSD : System.Web.UI.Page
    {
        
            protected void Page_Load(object sender, EventArgs e)
            {
            }

            protected void saveButton_Click(object sender, EventArgs e)
            {
                ProjectControllerCSD pcon = new ProjectControllerCSD();
                pcon.CreateProject(projectNameTextBox.Text, descriptionTextBox.Text, clientTextBox.Text,
                                Convert.ToDateTime(startDate.CalendarDate.Date), Convert.ToDateTime(endDate.CalendarDate.Date),
                                int.Parse(Session["InsertedBy"].ToString()));
            }

            protected void btn_Cancel_Click(object sender, EventArgs e)
            {
                //Response.Redirect("SearchProjectCSD.aspx");
                Response.Redirect("DefaultCSD.aspx");
            }
    }
}