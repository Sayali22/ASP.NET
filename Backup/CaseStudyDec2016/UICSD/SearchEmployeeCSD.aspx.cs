using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CaseStudyDec2016.ControllerCSD;
using System.Data;
using System.Data.SqlClient;
namespace CaseStudyDec2016.UICSD
{
    public partial class SearchEmployeeCSD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Employee_webCSD.aspx");
        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            EmployeeController ec = new EmployeeController();
            DataSet ds = new DataSet();

           ds= ec.searchEmp(Fnametb.Text,LNameTb.Text);
           employeeGridView.DataSource = ds;
           employeeGridView.DataBind();

        }

        protected void employeeGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName=="Update_Emp")
            {
                int rowid = Convert.ToInt32(e.CommandArgument.ToString());
                Session["EmployeeID"] = (int)employeeGridView.DataKeys[rowid].Value;
                Response.Redirect("UpdateEmployeeCSD.aspx");
            }
        }

        
       

        
       

       
    }
}