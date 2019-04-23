using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CaseStudyDec2016.ModelCSD
{
    public class CategoryModelCSD
    {
        public int CategoryId { get; set; }
        public string CategoryName { get; set; }
        public string CategoryDescription { get; set; }
        public int CreatedBy { get; set; }
        public DateTime  CreatedDate{ get; set; }
        public int LastModifiedBy { get; set; }
        public DateTime LastModifiedDate { get; set; }
    }
}