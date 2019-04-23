using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CaseStudyDec2016.ManagerCSD;
using System.Data.SqlClient;

namespace CaseStudyDec2016.ControllerCSD
{
    public class LoginControllerCSD
    {
        public SqlDataReader login(string uname, string upass)
        {
            ProjectManagerCSD id = new ProjectManagerCSD();
            return id.login(uname, upass);
        }
    }
}