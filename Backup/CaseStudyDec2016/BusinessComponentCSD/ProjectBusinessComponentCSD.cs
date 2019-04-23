using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CaseStudyDec2016.DAOCSD;
using CaseStudyDec2016.ModelCSD;
using Microsoft.ApplicationBlocks.Data;
using System.Data;
using System.Data.SqlClient;

namespace CaseStudyDec2016.BusinessComponentCSD
{
    public class ProjectBusinessComponentCSD
    {
         public int createProject(ProjectModelCSD pmod) 
        {
          return new ProjectDAOCSD().createProject(pmod);                                                                         

        }

         public DataSet searchProject(string pname)
         {
             return new ProjectDAOCSD().searchProject(pname);
         }

         public int updateProject(ProjectModelCSD pmod)
         {
             return new ProjectDAOCSD().updateProject(pmod);
         }

         public SqlDataReader viewProject(int projId)
         {
             return new ProjectDAOCSD().viewProject(projId);
         }

    }
}