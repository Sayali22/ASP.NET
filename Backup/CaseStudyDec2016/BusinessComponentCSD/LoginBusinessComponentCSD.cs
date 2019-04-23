using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using CaseStudyDec2016.DAOCSD;

namespace CaseStudyDec2016.BusinessComponentCSD
{
    public class LoginBusinessComponentCSD
    {
        public SqlDataReader login(string uname, string upass)
        {
            LoginDAOCSD Id = new LoginDAOCSD();
            return Id.login(uname, upass);
        }
    }
}