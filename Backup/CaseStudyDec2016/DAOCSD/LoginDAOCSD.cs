using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using Microsoft.ApplicationBlocks.Data;

namespace CaseStudyDec2016.DAOCSD
{
    public class LoginDAOCSD
    {
        public SqlDataReader login(string uname, string upass)
        {
            SqlParameter[] param = new SqlParameter[2];
            param[0] = new SqlParameter("@uname", SqlDbType.VarChar);
            param[0].Value = uname;
            param[1]= new SqlParameter("@upass", SqlDbType.VarChar);
            param[1].Value = upass;

            SqlDataReader rd;
            String con="Data Source=.;Initial Catalog=HRS;Integrated Security=True";
            rd = SqlHelper.ExecuteReader(con, CommandType.StoredProcedure, "CheckLogin", param);
            return rd;

        }
    }
}