using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CaseStudyDec2016.ModelCSD;
using CaseStudyDec2016.DAOCSD;
using CaseStudyDec2016.BusinessComponentCSD;
using CaseStudyDec2016.ManagerCSD;
using System.Data.SqlClient;
using CaseStudyDec2016.ControllerCSD;
using System.Data;


namespace CaseStudyDec2016.UICSD
{
    public partial class CreateSkillCSD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=HRS;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("spGetCategoryList",con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                
                DataSet ds = new DataSet();
                adp.Fill(ds);
                ddl_category.DataSource = ds;
                ddl_category.DataValueField="CategoryId";
                ddl_category.DataTextField="CategoryName";
                ddl_category.DataBind();
               
            }

        }

        

       

        protected void saveButton_Click(object sender, EventArgs e)
        {
            Createskillcontroller cc = new Createskillcontroller();
            cc.createskill( skillTextBox.Text, descriptionTextBox.Text, Convert.ToInt32(ddl_category.SelectedItem.Value), Convert.ToInt32(Session["insertedBy"].ToString()));

        }
        

        protected void Cancel_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("DefaultCSD.aspx");
        }
    }
}