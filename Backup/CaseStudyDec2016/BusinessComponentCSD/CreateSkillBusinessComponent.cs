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
    public class CreateSkillBusinessComponent
    {
        public int createskill(CreateSkill cs)
        {
            
            return new CreateSkilldao().createskill(cs);
        }
        public int updateskill(UpdateSkill us)
        {
            return new CreateSkilldao().updateskill(us);
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