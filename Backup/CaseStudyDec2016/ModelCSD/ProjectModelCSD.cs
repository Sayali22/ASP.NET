using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CaseStudyDec2016.ModelCSD
{
    public class ProjectModelCSD
    {
        public int projectId { get; set; }
        public string projectName { get; set; }
        public string projectDescription { get; set; }
        public DateTime startDate { get; set; }
        public DateTime endDate { get; set; }
        public string client { get; set; }
        public int createdBy { get; set; }
        public int lastModifiedBy { get; set; }
    }
}