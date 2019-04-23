using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CaseStudyDec2016.ManagerCSD;
using CaseStudyDec2016.ModelCSD;
using System.Data;
using System.Data.SqlClient;


namespace CaseStudyDec2016.ControllerCSD
{
    public class CategoryControllerCSD
    {
        public int createCategory(string Cname,string Cdesc,int Createdby)
        {
            CategoryModelCSD m = new CategoryModelCSD();
            m.CategoryName = Cname;
            m.CategoryDescription = Cdesc;
            m.CreatedBy = Createdby;

            ProjectManagerCSD mng = new ProjectManagerCSD();

            return mng.createCategory(m);
        }

        public DataSet searchCategory(string cat) 
        {
            return new ProjectManagerCSD().searchCategory(cat);
        }

        public SqlDataReader viewCatagory(int cid)
        {
            return new ProjectManagerCSD().viewCatagory(cid);
        
        }

        public int updateCategory(int cid,string Cname, string Cdesc, int mby)
        {
            CategoryModelCSD m = new CategoryModelCSD();
            m.CategoryId = cid;
            m.CategoryName = Cname;
            m.CategoryDescription = Cdesc;
            m.LastModifiedBy = mby;

            ProjectManagerCSD mng = new ProjectManagerCSD();

            return mng.updateCategory(m) ;
        }
    }
}