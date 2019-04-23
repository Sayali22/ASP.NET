using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CaseStudyDec2016.BusinessComponentCSD;
using CaseStudyDec2016.ModelCSD;
using System.Data;
using System.Data.SqlClient;
using CaseStudyDec2016.DAOCSD;

namespace CaseStudyDec2016.ManagerCSD
{
    public class ProjectManagerCSD
    {
        public int createProject(ProjectModelCSD pmod)
        {
            return new ProjectBusinessComponentCSD().createProject(pmod);
        }


        public DataSet searchProject(string pname)
        {
            ServiceReference1.Service1Client sc = new ServiceReference1.Service1Client();
            sc.Open();
            DataSet ds = new DataSet();
            ds = sc.searchProject(pname);
            return ds;
        }

        public int updateProject(ProjectModelCSD pmod)
        {
            return new ProjectBusinessComponentCSD().updateProject(pmod);
        }
        public SqlDataReader viewProject(int projId)
        {
            return new ProjectBusinessComponentCSD().viewProject(projId);
        }


        //Category
        public int createCategory(CategoryModelCSD mod) 
        {
            return new CategoryBCCSD().createCategory(mod);
        }

        public DataSet searchCategory(string cat) 
        {
            ServiceReference1.Service1Client sr = new ServiceReference1.Service1Client();
            sr.Open();
            DataSet ds = new DataSet();
            ds = sr.searchCategory(cat);
            return ds;
            
        }

        public SqlDataReader viewCatagory(int cid)
        {
            return new CategoryBCCSD().viewCatagory(cid);
        }

        public int updateCategory(CategoryModelCSD mod)
        {
            return new CategoryBCCSD().updateCategory(mod);
        }

        public int AddEmp(EmpInfoCSD ec)
        {
            return new EmployeeBusComp().AddEmp(ec);

        }
        public DataSet searchEmp(string fname, string lname)
        {
            ServiceReference1.Service1Client src = new ServiceReference1.Service1Client();
            src.Open();
            DataSet ds = new DataSet();
           ds = src.SearchEmp(fname, lname);
            return ds;
        }
        public int UpdateEmp(EmpInfoCSD ec)
        {
            return new EmployeeBusComp().UpdateEmp(ec);
        }
        public SqlDataReader ViewEmployee(int EmployeeID)
        {
            return new EmployeeBusComp().ViewEmployee(EmployeeID);

        }
        public SqlDataReader login(string uname, string upass)
        {
            LoginBusinessComponentCSD id = new LoginBusinessComponentCSD();
            return id.login(uname, upass);
        }
       
        public int createskill(CreateSkill cs)
        {

            return new CreateSkillBusinessComponent().createskill(cs);
        }
        public int updateskill(UpdateSkill us)
        {

            return new CreateSkillBusinessComponent().updateskill(us);
        }
        public DataSet searchskill(string fname)
        {
            ServiceReference1.Service1Client src = new ServiceReference1.Service1Client();
            src.Open();
            DataSet ds = new DataSet();
            ds = src.searchskill(fname);
            return ds;
        }
        public SqlDataReader getOrderById(int skillId)
        {
           // return null;
          return new CreateSkilldao().getOrderById(skillId);
        }
    }
}