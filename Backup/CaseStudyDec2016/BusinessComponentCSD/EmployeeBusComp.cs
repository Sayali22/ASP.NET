using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CaseStudyDec2016.DAOCSD;
using CaseStudyDec2016.ModelCSD;
using System.Data;
using System.Data.SqlClient;
namespace CaseStudyDec2016.BusinessComponentCSD
{
    public class EmployeeBusComp
    {
        public int AddEmp(EmpInfoCSD ec)
        {
            EmployeeCSD ed = new EmployeeCSD();
            return ed.AddEmp(ec);
        }
        public DataSet searchEmp(string fname, string lname)
        {

            return new EmployeeCSD().searchEmp(fname, lname);
        }
        public int UpdateEmp(EmpInfoCSD ec)
        {
            return new EmployeeCSD().UpdateEmp(ec);
        }
        public SqlDataReader ViewEmployee(int EmployeeID)
        {
            return new EmployeeCSD().ViewEmployee(EmployeeID);
        }
    }
}