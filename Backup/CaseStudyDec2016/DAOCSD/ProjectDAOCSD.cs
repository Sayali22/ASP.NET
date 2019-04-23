using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.ApplicationBlocks.Data;

using CaseStudyDec2016.ModelCSD;
using System.Data.SqlClient;
using System.Data;


namespace CaseStudyDec2016.DAOCSD
{
    public class ProjectDAOCSD
    {
        /// <summary>
        /// It will Add information of project in Project Table
        /// </summary>
        /// <param name="pmod"></param>
        /// <returns></returns>
        public int createProject(ProjectModelCSD pmod) 
        {
            SqlParameter[] param=new SqlParameter[6];
            param[0] = new SqlParameter("@ProjectName", SqlDbType.VarChar);
            param[0].Value = pmod.projectName;

            param[1] = new SqlParameter("@projectDesc ", SqlDbType.VarChar);
            param[1].Value = pmod.projectDescription;

            param[2] = new SqlParameter("@client", SqlDbType.VarChar);
            param[2].Value = pmod.client;

            param[3] = new SqlParameter("@startDate", SqlDbType.DateTime);
            param[3].Value = pmod.startDate;

            param[4] = new SqlParameter("@endDate", SqlDbType.DateTime);
            param[4].Value = pmod.endDate;

            param[5] = new SqlParameter("@createdBy", SqlDbType.Int);
            param[5].Value = pmod.createdBy;

           string con="Data Source=.;Initial Catalog=HRS;Integrated Security=True";
           int i = SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "[dbo].[spCreateProject]", param);
           return i;
             
        }


        /// <summary>
        /// Search Project With ProjectName and Returns it to Dataset.
        /// </summary>
        /// <param name="pname"></param>
        /// <returns></returns>

        public DataSet searchProject(string pname)
        {
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@projectName ", SqlDbType.VarChar);
            param[0].Value = pname;
            string con = "Data Source=.;Initial Catalog=HRS;Integrated Security=True";
            DataSet ds = new DataSet();
            ds=SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "[dbo].[spSearchProject]", param);
            return ds;
        }

        /// <summary>
        /// It will Update new info.into Project Table
        /// </summary>
        /// <param name="pmod"></param>
        /// <returns></returns>

        public int updateProject(ProjectModelCSD pmod)
        {
            SqlParameter[] param = new SqlParameter[7];
            param[0] = new SqlParameter("@projectID", SqlDbType.Int);
            param[0].Value = pmod.projectId;

            param[1] = new SqlParameter("@projectName", SqlDbType.VarChar);
            param[1].Value = pmod.projectName;

            param[2] = new SqlParameter("@projectDesc ", SqlDbType.VarChar);
            param[2].Value = pmod.projectDescription;

            param[3] = new SqlParameter("@client", SqlDbType.VarChar);
            param[3].Value = pmod.client;

            param[4] = new SqlParameter("@startDate", SqlDbType.DateTime);
            param[4].Value = pmod.startDate;

            param[5] = new SqlParameter("@endDate", SqlDbType.DateTime);
            param[5].Value = pmod.endDate;

            param[6] = new SqlParameter("@LastModifiedBy", SqlDbType.Int);
            param[6].Value = pmod.lastModifiedBy;

            string con = "Data Source=.;Initial Catalog=HRS;Integrated Security=True";
            int i = SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "spUpdateProject", param);
            return i;

        }

        /// <summary>
        /// It will Show All Info. releated to Selected ProjectID and Display it with help of SqlDataReader.
        /// </summary>
        /// <param name="projId"></param>
        /// <returns></returns>

        public SqlDataReader viewProject(int projId)
        {
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@projectID", SqlDbType.VarChar);
            param[0].Value = projId;
            string con = "Data Source=.;Initial Catalog=HRS;Integrated Security=True";
            SqlDataReader rd;
            rd = SqlHelper.ExecuteReader(con, CommandType.StoredProcedure,"spViewProject", param);
            return rd;
        }

    }
}