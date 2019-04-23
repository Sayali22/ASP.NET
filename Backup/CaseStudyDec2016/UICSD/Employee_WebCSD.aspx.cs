using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CaseStudyDec2016.ControllerCSD;
using CaseStudyDec2016.DAOCSD;
using CaseStudyDec2016.ModelCSD;
using System.Data;
using System.Data.SqlClient;
namespace CaseStudyDec2016.UICSD
{
    public partial class Employee_WebCSD : System.Web.UI.Page
    {
       // string conStr = System.Configuration.ConfigurationManager.AppSettings["conStr"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=HRS;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("spGetLevelList",con);
                cmd.CommandType = CommandType.StoredProcedure;
                DataSet ds = new DataSet();
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
                DDL_level.DataSource = ds;
                DDL_level.DataTextField = "LevelDescription";
                DDL_level.DataValueField = "LevelId";
                DDL_level.DataBind();
                cmd.Dispose();
               
                cmd = new SqlCommand("spGetSpecialtyList",con);
                ds = new DataSet();
                adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
                DDL_spl.DataSource = ds;
                DDL_spl.DataTextField = "SpecialtyName";
                DDL_spl.DataValueField = "SpecialtyId";
                DDL_spl.DataBind();
                cmd.Dispose();

                cmd = new SqlCommand("[spGetCivilStatusList]", con);
                ds = new DataSet();
                adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
                DDL_CS.DataSource = ds;
                DDL_CS.DataTextField = "StatusDescription";
                DDL_CS.DataValueField = "StatusId";
                DDL_CS.DataBind();
                cmd.Dispose();

              
            }
        }

        protected void Add_Click(object sender, EventArgs e)
        {
            EmployeeController ec = new EmployeeController();
            ec.AddEmp(FNtb.Text,MNtb.Text,LNtb.Text,Convert.ToDateTime(DOB1.CalendarDate.Date),Convert.ToString(DDL_gender.SelectedItem.Value)
                ,Convert.ToInt32(DDL_CS.SelectedItem.Value),SSStb.Text,TINtb.Text,Citizentb.Text
                ,Mobiletb.Text,Landlinetb.Text,Street1tb.Text,Street2tb.Text,Citytb.Text,StateTb.Text,Countrytb.Text
                ,EduBacktb.Text,Certitb.Text,Emailtb.Text,Enterprisetb.Text,Convert.ToInt32(DDL_level.SelectedItem.Value),
                LMUtb.Text,GMUtb.Text,Convert.ToDateTime(Date1.CalendarDate.Date),WorkGrouptb.Text,Convert.ToInt32(DDL_spl.SelectedItem.Value)
                ,ServiceLinetb.Text,Statustb.Text,Convert.ToInt32(Session["InsertedBy"].ToString()));


        }

       
        

       

        
    }
}