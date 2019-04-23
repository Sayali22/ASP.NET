using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CaseStudyDec2016.ModelCSD;
using System.Data;
using System.Data.SqlClient;
using Microsoft.ApplicationBlocks.Data;

namespace CaseStudyDec2016.DAOCSD
{
    public class CreateSkilldao
    {
        /// <summary>
        /// Inserts new Skill Name and its description in Skill Table.
        /// </summary>
        /// <param name="cs"></param>
        /// <returns></returns>
        public int createskill(CreateSkill cs)
        {
            SqlParameter[] param = new SqlParameter[4];
            param[0] = new SqlParameter("@skillName", SqlDbType.VarChar);
            param[0].Value = cs.SkillName;
            param[1] = new SqlParameter("@skillDesc", SqlDbType.VarChar);
            param[1].Value = cs.SkillDescription;
            param[2] = new SqlParameter("@categoryId", SqlDbType.Int);
            param[2].Value = cs.CategoryId;
            param[3] = new SqlParameter("@createdBy", SqlDbType.Int);
            param[3].Value = cs.CreatedBy;
            int i = Convert.ToInt32(SqlHelper.ExecuteNonQuery("Data Source=.;Initial Catalog=HRS;Integrated Security=True", CommandType.StoredProcedure, "[dbo].[spCreateSkill]", param));
            return i;
        }
        /// <summary>
        ///Updates Skill Name and description in Skill Table.
        /// </summary>
        /// <param name="us"></param>
        /// <returns></returns>
        public int updateskill(UpdateSkill us)
        {
            SqlParameter[] param1 = new SqlParameter[4];
            
            param1[0] = new SqlParameter("@skillId", SqlDbType.Int);
            param1[0].Value = us.SkillId;
            param1[1] = new SqlParameter("@skillName", SqlDbType.VarChar);
            param1[1].Value = us.SkillName;
            param1[2] = new SqlParameter("@skillDesc", SqlDbType.VarChar);
            param1[2].Value = us.SkillDescription;
            param1[3] = new SqlParameter("@modifiedBy", SqlDbType.Int);
            param1[3].Value = us.LastModifiedBy;
            int j = SqlHelper.ExecuteNonQuery("Data Source=.;Initial Catalog=HRS;Integrated Security=True", CommandType.StoredProcedure, "[dbo].[spUpdateSkill]", param1);
            return j;
        }
        /// <summary>
        /// Search Skill by SkillName in Skill Table.
        /// </summary>
        /// <param name="fname"></param>
        /// <returns></returns>
        public DataSet searchskill(string fname)
        {
            SqlParameter[] param2 = new SqlParameter[1];
            param2[0] = new SqlParameter("@skillName", SqlDbType.VarChar);
            param2[0].Value = fname;
            string con = "Data Source=.;Initial Catalog=HRS;Integrated Security=True";
            DataSet ds=new DataSet();
           ds=SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "[dbo].[spSearchSkill]", param2);
            return ds;
        }
        /// <summary>
        /// Views SkillName And Its Description By SkillId.
        /// </summary>
        /// <param name="skillId"></param>
        /// <returns></returns>

        public SqlDataReader getOrderById(int skillId) 
        {
            SqlParameter[] param2 = new SqlParameter[1];
            param2[0] = new SqlParameter("@skillId", SqlDbType.VarChar);
            param2[0].Value = skillId;
            SqlDataReader rd;
            rd=SqlHelper.ExecuteReader("Data Source=.;Initial Catalog=HRS;Integrated Security=True", CommandType.StoredProcedure, "[dbo].[spViewSkill]", param2);
            return rd;
            
        }
        
    }
}