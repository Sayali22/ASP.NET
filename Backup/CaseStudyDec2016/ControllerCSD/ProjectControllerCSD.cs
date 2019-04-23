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
    public class ProjectControllerCSD
    {

        public int CreateProject(string projName, string projectDesc, string clientName, DateTime projStartDate,
           DateTime projEndDate, int projCreatedBy)
        {
            ProjectModelCSD pmod = new ProjectModelCSD()
              { projectName = projName,
                projectDescription = projectDesc, 
                client = clientName, 
                startDate = projStartDate,
                endDate = projEndDate,
                createdBy=projCreatedBy
              };

            return new ProjectManagerCSD().createProject(pmod);

        }

        public DataSet searchProject(string pname)
        {
            return new ProjectManagerCSD().searchProject(pname);
        }

        public int updateProject(int projId,string projName, string projectDesc, string clientName, DateTime projStartDate,
           DateTime projEndDate, int LastModifiedBy)
        {
            ProjectModelCSD pmod = new ProjectModelCSD()
            {
                projectId=projId,
                projectName = projName,
                projectDescription = projectDesc,
                client = clientName,
                startDate = projStartDate,
                endDate = projEndDate,
                lastModifiedBy=LastModifiedBy
            };

            return new ProjectManagerCSD().updateProject(pmod);

        }

        public SqlDataReader viewProject(int projId)
        {       

            return new ProjectManagerCSD().viewProject(projId);

        }



    }
}