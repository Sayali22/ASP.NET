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
    public partial class LoginCSD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            LoginControllerCSD lc  =new LoginControllerCSD();
            SqlDataReader rd=lc.login(Login1.UserName,Login1.Password);
            if (rd.HasRows)
	        {
		       while (rd.Read())
	                {
                        if (rd[1].ToString()==Login1.UserName && rd[2].ToString()==Login1.Password)
                        {
                            Session["InsertedBy"] = rd[0].ToString();
                            Response.Redirect("HomePage.aspx");
                        }
	                    
	                }
                
	        }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        
        
    }
}