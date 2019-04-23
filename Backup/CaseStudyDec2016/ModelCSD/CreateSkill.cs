using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CaseStudyDec2016.ModelCSD
{
    public class CreateSkill
    {
        public int SkillId { get; set; }
        public string SkillName { get; set; }
        public string SkillDescription { get; set; }
        public int CategoryId { get; set; }
        public string CategoryName{ get; set; }
        public int CreatedBy { get; set; }
        public int ModifiedBy { get; set; }
        public DateTime CreatedDate { get; set; }
    }
    public class UpdateSkill
    {
        public int SkillId { get; set; }
        public string SkillName { get; set; }
        public string SkillDescription { get; set; }
        public int LastModifiedBy { get; set; }
        public DateTime LastModifiedDate { get; set; }
     }
    public class SearchSkill
    {
        public string SkillName { get; set; }
    }
    public class ViewSkill
    {
        public int SkillId { get; set; }
        public string SkillName { get; set; }
        public string SkillDescription { get; set; }
    }
}