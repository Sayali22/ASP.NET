using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CaseStudyDec2016.ModelCSD
{
    public class AccentureDetailsCSD
    {
        public int EmployeeId { get; set; }
        public string Email { get; set; }
        public string EnterpriseId { get; set; }
        public int Level { get; set; }
        public string LMU { get; set; }
        public string GMU { get; set; }
        public DateTime DateHired { get; set; }
        public string WorkGroup { get; set; }
        public int Specialty { get; set; }
        public string ServiceLine { get; set; }
        public string Status { get; set; }
        public int CreatedBy { get; set; }
        public DateTime CreatedDate { get; set; }
        public int LastModifiedBy { get; set; }
        public DateTime LastModifiedDate { get; set; }
    }
}