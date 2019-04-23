using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CaseStudyDec2016.ModelCSD
{
    public class EmpInfoCSD :AccentureDetailsCSD

    {
        private AccentureDetailsCSD ad = new AccentureDetailsCSD();

        public AccentureDetailsCSD Ad
        {
            get { return ad; }
            set { ad = value; }
        }
     
       
        public string FirstName { get; set; }
        public string MiddleName { get; set; }
        public string LastName { get; set; }
        public DateTime BirthDate { get; set; }
        public int Age { get; set; }
        public string Gender { get; set; }
        public int CivilStatus { get; set; }
        public string Religion { get; set; }
        public string SSNo { get; set; }
        public string TinNo { get; set; }
        public string Citizenship { get; set; }
        public string MobileNo { get; set; }
        public string HomePhoneNo { get; set; }
        public string Street1 { get; set; }
        public string Street2 { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string ZipCode { get; set; }
        public string Country { get; set; }
        public string ProjectProfile { get; set; }
        public string SkillProfile { get; set; }
        public string EducBackGround { get; set; }
        public string Recognitions { get; set; }
       

    }
}