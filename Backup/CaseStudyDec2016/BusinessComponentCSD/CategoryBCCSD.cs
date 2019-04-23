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
    public class CategoryBCCSD
    {
         public int createCategory(CategoryModelCSD mod)
         {
             return new CategoryDAOCSD().createCategory(mod);
         
         }

         public DataSet searchCatagory(string cat)  
         {
             return new CategoryDAOCSD().searchCatagory(cat);
         }

         public SqlDataReader viewCatagory(int cid)
         {
             return new CategoryDAOCSD().viewCatagory(cid);
         }

         public int updateCategory(CategoryModelCSD mod) 
         {
             return new CategoryDAOCSD().updateCategory(mod);
         }
    }
}