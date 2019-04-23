using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CaseStudyDec2016.ModelCSD;
using CaseStudyDec2016.DAOCSD;
using CaseStudyDec2016.BusinessComponentCSD;
using CaseStudyDec2016.ManagerCSD;
using System.Data.SqlClient;
using System.Data;

namespace CaseStudyDec2016.ControllerCSD
{
    public class Createskillcontroller
    {
        public int createskill(string skillname, string skillDesc, int catid, int createdBy)
        {
            CreateSkill cs = new CreateSkill()
            {

                SkillName = skillname,
                SkillDescription = skillDesc,
                CategoryId = catid,
                CreatedBy = createdBy
            };

            return new ProjectManagerCSD().createskill(cs);
        }
        public int updateskill(int skillid,string skillname,string skilldesc,int lmodifiedby)
        {
            UpdateSkill us = new UpdateSkill()
            {
             SkillId=skillid,
              SkillName=skillname,
              SkillDescription=skilldesc,
              LastModifiedBy=lmodifiedby
            
                
               
            };
            return new ProjectManagerCSD().updateskill(us);
        }
        public DataSet searchskill(string fname)
        {

            return new CreateSkilldao().searchskill(fname);

        }

        public SqlDataReader getOrderById(int skillId)
        {
            return new CreateSkilldao().getOrderById(skillId);
        }
    }
}

