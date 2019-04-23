using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CaseStudyDec2016.DAOCSD;
using CaseStudyDec2016.ModelCSD;
using CaseStudyDec2016.ManagerCSD;
using System.Data;
using System.Data.SqlClient;
namespace CaseStudyDec2016.ControllerCSD
{
    public class EmployeeController
    {
        
        
        public int AddEmp(string FirstName,string MiddleName, string LastName,DateTime BirthDate,
            string Gender,int CivilStatus,string SSNo,string TinNo,string Citizenship,string MobileNo,string HomePhoneNo,
            string Street1, string Street2, string City, string State, string Country, string EducBackGround, 
            string Recognitions, string Email, string EnterpriseId, int Level, string LMU, string GMU, DateTime DateHired,
            string WorkGroup, int Specialty, string ServiceLine, string Status, int CreatedBy)
        {
            AccentureDetailsCSD ASD = new AccentureDetailsCSD();
            ASD.Email = Email;
            ASD.EnterpriseId = EnterpriseId;
            ASD.Level = Level;
            ASD.LMU = LMU;
            ASD.GMU = GMU;
            ASD.DateHired = DateHired;
            ASD.WorkGroup = WorkGroup;
            ASD.Specialty = Specialty;
           ASD.ServiceLine = ServiceLine;
           ASD.Status = Status;
           ASD.CreatedBy = CreatedBy;
            
            
           
            
            EmpInfoCSD ed = new EmpInfoCSD()
            {
                
                FirstName = FirstName,
                MiddleName = MiddleName,
                LastName = LastName,
                BirthDate = BirthDate,
                Gender = Gender,
                CivilStatus = CivilStatus,
                SSNo = SSNo,
                TinNo = TinNo,
                Citizenship = Citizenship,
                MobileNo = MobileNo,
                HomePhoneNo = HomePhoneNo,
                Street1 = Street1,
                Street2 = Street2,
                City = City,
                State = State,
                Country = Country,
                EducBackGround = EducBackGround,
                Recognitions = Recognitions,
                
                Ad=ASD
            };
            return new ProjectManagerCSD().AddEmp(ed);
        
        }
        public DataSet searchEmp(string fname, string lname)
        {
            return new ProjectManagerCSD().searchEmp(fname, lname);
        
        }
        public int UpdateEmp(int EmployeeID,string FirstName, string MiddleName, string LastName, DateTime BirthDate,
            string Gender, int CivilStatus, string SSNo, string TinNo, string Citizenship, string MobileNo, string HomePhoneNo,
            string Street1, string Street2, string City, string State, string Country, string EducBackGround,
            string Recognitions, string Email, string EnterpriseId, int Level, string LMU, string GMU, DateTime DateHired,
            string WorkGroup, int Specialty, string ServiceLine, string Status, int LastModifiedBy)
        {
            AccentureDetailsCSD ASD = new AccentureDetailsCSD();
          
            ASD.Email = Email;
            ASD.EnterpriseId = EnterpriseId;
            ASD.Level = Level;
            ASD.LMU = LMU;
            ASD.GMU = GMU;
            ASD.DateHired = DateHired;
            ASD.WorkGroup = WorkGroup;
            ASD.Specialty = Specialty;
            ASD.ServiceLine = ServiceLine;
            
            ASD.Status = Status;
            ASD.LastModifiedBy = LastModifiedBy;
           
            EmpInfoCSD ed = new EmpInfoCSD()
                {
                   EmployeeId=EmployeeID,
                    FirstName = FirstName,
                    MiddleName = MiddleName,
                    LastName = LastName,
                    BirthDate = BirthDate,
                    Gender = Gender,
                    CivilStatus = CivilStatus,
                    SSNo = SSNo,
                    TinNo = TinNo,
                    Citizenship = Citizenship,
                    MobileNo = MobileNo,
                    HomePhoneNo = HomePhoneNo,
                    Street1 = Street1,
                    Street2 = Street2,
                    City = City,
                    State = State,
                    Country = Country,
                    EducBackGround = EducBackGround,
                    Recognitions = Recognitions,
                   
                    
                    Ad=ASD
                };
            return new ProjectManagerCSD().UpdateEmp(ed);

        }
        public SqlDataReader ViewEmployee(int EmployeeID)
        {
            return new ProjectManagerCSD().ViewEmployee(EmployeeID);
        
        }
        

    }
}