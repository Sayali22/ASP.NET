using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CaseStudyDec2016.ControllerCSD;
using System.Data.SqlClient;

namespace CaseStudyDec2016.UICSD
{
    public partial class UpdateCategoryCSD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CategoryControllerCSD c = new CategoryControllerCSD();
                SqlDataReader RD = c.viewCatagory(Convert.ToInt32(Session["catId"].ToString()));

                while (RD.Read())
                {
                    categoryTextBox.Text = RD[0].ToString();
                    descriptionTextBox.Text = RD[1].ToString();

                }

            }
        }

        protected void updateButton_Click(object sender, EventArgs e)
        {
            CategoryControllerCSD c = new CategoryControllerCSD();
            c.updateCategory(Convert.ToInt32(Session["CatId"].ToString()),categoryTextBox.Text,descriptionTextBox.Text,Convert.ToInt32(Session["InsertedBy"].ToString()));

        }

        protected void btn_cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchCategoryCSD.aspx");
        }
    }
}