using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.ApplicationBlocks.Data;
using System.Data;
using System.Data.SqlClient;
using CaseStudyDec2016.ModelCSD;
namespace CaseStudyDec2016.DAOCSD
{
    public class EmployeeCSD
    {
        string cc = "Data Source=.;Initial Catalog=HRS;Integrated Security=True";

     //   string conStr = System.Configuration.ConfigurationManager.ConnectionStrings["test"].ToString();
            //System.Configuration.ConfigurationManager.AppSettings["conStr"].ToString();
        /// <summary>
        /// Inserts new Employee into database(ec)
        /// </summary>
        /// <param name="ec"></param>
        /// <returns></returns>
        public int AddEmp(EmpInfoCSD ec)
        {
            SqlParameter[] param = new SqlParameter[29];
            param[0] = new SqlParameter("@FirstName",SqlDbType.VarChar);
            param[0].Value=ec.FirstName;
            param[1] = new SqlParameter("@MiddleName", SqlDbType.VarChar);
            param[1].Value = ec.MiddleName;
            param[2] = new SqlParameter("@LastName",SqlDbType.VarChar);
            param[2].Value = ec.LastName;
            param[3] = new SqlParameter("@BirthDate", SqlDbType.DateTime);
            param[3].Value = ec.BirthDate;
            param[4] = new SqlParameter("@Gender", SqlDbType.VarChar);
            param[4].Value = ec.Gender;
            param[5] = new SqlParameter("@CivilStatus", SqlDbType.Int);
            param[5].Value = ec.CivilStatus;
            param[6] = new SqlParameter("@SSNo",SqlDbType.VarChar);
            param[6].Value = ec.SSNo;
            param[7] = new SqlParameter("@TinNo", SqlDbType.VarChar);
            param[7].Value = ec.TinNo;
            param[8] = new SqlParameter("@Citizenship", SqlDbType.VarChar);
            param[8].Value = ec.Citizenship;
            param[9] = new SqlParameter("@MobileNo", SqlDbType.VarChar);
            param[9].Value = ec.MobileNo;
            param[10] = new SqlParameter("@HomePhoneNo", SqlDbType.VarChar);
            param[10].Value = ec.HomePhoneNo;
            param[11] = new SqlParameter("@Street1", SqlDbType.VarChar);
            param[11].Value = ec.Street1;
            param[12] = new SqlParameter("@Street2", SqlDbType.VarChar);
            param[12].Value = ec.Street2;
            param[13] = new SqlParameter("@City", SqlDbType.VarChar);
            param[13].Value = ec.City;
            param[14] = new SqlParameter("@State", SqlDbType.VarChar);
            param[14].Value = ec.State;
            param[15] = new SqlParameter("@Country", SqlDbType.VarChar);
            param[15].Value = ec.Country;
            param[16] = new SqlParameter("@EducBackground", SqlDbType.VarChar);
            param[16].Value = ec.EducBackGround;
            param[17] = new SqlParameter("@Recognitions", SqlDbType.VarChar);
            param[17].Value = ec.Recognitions;
            param[18] = new SqlParameter("@Email", SqlDbType.VarChar);
            param[18].Value = ec.Ad.Email;
            param[19] = new SqlParameter("@EnterpriseId", SqlDbType.VarChar);
            param[19].Value = ec.Ad.EnterpriseId;
            param[20] = new SqlParameter("@Level", SqlDbType.Int);
            param[20].Value = ec.Ad.Level;
            param[21] = new SqlParameter("@LMU", SqlDbType.VarChar);
            param[21].Value = ec.Ad.LMU;
            param[22] = new SqlParameter("@GMU", SqlDbType.VarChar);
            param[22].Value = ec.Ad.GMU;
            param[23] = new SqlParameter("@DateHired", SqlDbType.DateTime);
            param[23].Value = ec.Ad.DateHired;
            param[24] = new SqlParameter("@WorkGroup", SqlDbType.VarChar);
            param[24].Value = ec.Ad.WorkGroup;
            param[25] = new SqlParameter("@Specialty", SqlDbType.Int);
            param[25].Value = ec.Ad.Specialty;
            param[26] = new SqlParameter("@ServiceLine", SqlDbType.VarChar);
            param[26].Value = ec.Ad.ServiceLine;
            param[27] = new SqlParameter("@Status", SqlDbType.VarChar);
            param[27].Value = ec.Ad.Status;
          param[28] = new SqlParameter("@CreatedBy", SqlDbType.Int);
          param[28].Value = ec.Ad.CreatedBy;
            int i = SqlHelper.ExecuteNonQuery("Data Source=.;Initial Catalog=HRS;Integrated Security=True", CommandType.StoredProcedure, "spCreateEmployee", param);
           return i;
        }
        /// <summary>
        /// Search Employee by firstname and lastname and returns a dataset(string lname,fname)
        /// </summary>
        /// <param name="fname"></param>
        /// <param name="lname"></param>
        /// <returns></returns>
        public DataSet searchEmp(string fname, string lname)
        {
            SqlParameter[] param = new SqlParameter[2];
            param[0] = new SqlParameter("@firstName",SqlDbType.VarChar);
            param[0].Value = fname;
            param[1] = new SqlParameter("@lastName",SqlDbType.VarChar);
            param[1].Value = lname;
            DataSet ds = SqlHelper.ExecuteDataset(cc, CommandType.StoredProcedure, "spSearchEmployee", param);
            return ds;
        
        }
        /// <summary>
        /// Updates Employee(ec)
        /// </summary>
        /// <param name="ec"></param>
        /// <returns></returns>
        public int UpdateEmp(EmpInfoCSD ec)
        {

            SqlParameter[] param = new SqlParameter[30];
            param[0] = new SqlParameter("@EmpId", SqlDbType.Int);
            param[0].Value = ec.EmployeeId;
            param[1] = new SqlParameter("@FirstName", SqlDbType.VarChar);
            param[1].Value = ec.FirstName;
            param[2] = new SqlParameter("@MiddleName", SqlDbType.VarChar);
            param[2].Value = ec.MiddleName;
            param[3] = new SqlParameter("@LastName", SqlDbType.VarChar);
            param[3].Value = ec.LastName;
            param[4] = new SqlParameter("@BirthDate", SqlDbType.DateTime);
            param[4].Value = ec.BirthDate;  
            param[5] = new SqlParameter("@Gender", SqlDbType.VarChar);
            param[5].Value = ec.Gender;
            param[6] = new SqlParameter("@CivilStatus", SqlDbType.Int);
            param[6].Value = ec.CivilStatus;      
            param[7] = new SqlParameter("@SSNo", SqlDbType.VarChar);
            param[7].Value = ec.SSNo;
            param[8] = new SqlParameter("@TinNo", SqlDbType.VarChar);
            param[8].Value = ec.TinNo;
            param[9] = new SqlParameter("@Citizenship", SqlDbType.VarChar);
            param[9].Value = ec.Citizenship;
            param[10] = new SqlParameter("@MobileNo", SqlDbType.VarChar);
            param[10].Value = ec.MobileNo;
            param[11] = new SqlParameter("@HomePhoneNo", SqlDbType.VarChar);
            param[11].Value = ec.HomePhoneNo;
            param[12] = new SqlParameter("@Street1", SqlDbType.VarChar);
            param[12].Value = ec.Street1;
            param[13] = new SqlParameter("@Street2", SqlDbType.VarChar);
            param[13].Value = ec.Street2;
            param[14] = new SqlParameter("@City", SqlDbType.VarChar);
            param[14].Value = ec.City;
            param[15] = new SqlParameter("@State", SqlDbType.VarChar);
            param[15].Value = ec.State;        
            param[16] = new SqlParameter("@Country", SqlDbType.VarChar);
            param[16].Value = ec.Country;        
            param[17] = new SqlParameter("@EducBackground", SqlDbType.VarChar);
            param[17].Value = ec.EducBackGround;
            param[18] = new SqlParameter("@Recognitions", SqlDbType.VarChar);
            param[18].Value = ec.Recognitions;      
            param[19] = new SqlParameter("@Email", SqlDbType.VarChar);
            param[19].Value = ec.Ad.Email;
            param[20] = new SqlParameter("@EnterpriseId", SqlDbType.VarChar);
            param[20].Value = ec.Ad.EnterpriseId;
            param[21] = new SqlParameter("@Level", SqlDbType.Int);
            param[21].Value = ec.Ad.Level;
            param[22] = new SqlParameter("@LMU", SqlDbType.VarChar);
            param[22].Value = ec.Ad.LMU;
            param[23] = new SqlParameter("@GMU", SqlDbType.VarChar);
            param[23].Value = ec.Ad.GMU;
            param[24] = new SqlParameter("@DateHired", SqlDbType.DateTime);
            param[24].Value = ec.Ad.DateHired;
            param[25] = new SqlParameter("@WorkGroup", SqlDbType.VarChar);
            param[25].Value = ec.Ad.WorkGroup;
            param[26] = new SqlParameter("@Specialty", SqlDbType.Int);
            param[26].Value = ec.Ad.Specialty;
            param[27] = new SqlParameter("@ServiceLine", SqlDbType.VarChar);
            param[27].Value = ec.Ad.ServiceLine;
            param[28] = new SqlParameter("@Status", SqlDbType.VarChar);
            param[28].Value = ec.Ad.Status;
            param[29] = new SqlParameter("@LastModifiedBy", SqlDbType.Int);
            param[29].Value = ec.Ad.LastModifiedBy;
            int i = SqlHelper.ExecuteNonQuery("Data Source=.;Initial Catalog=HRS;Integrated Security=True", CommandType.StoredProcedure, "spUpdateEmployee", param);
            return i;
        }
        /// <summary>
        /// Shows the already entered records of Employee using Employee ID and returns a SQLDatatreader(int EmployeeID)
        /// </summary>
        /// <param name="EmployeeID"></param>
        /// <returns></returns>
        public SqlDataReader ViewEmployee(int EmployeeID)
        {
            SqlParameter [] param = new SqlParameter[1];
            param[0] = new SqlParameter("@empID",SqlDbType.Int);
            param[0].Value = EmployeeID;
            SqlDataReader rd;
            rd = SqlHelper.ExecuteReader("Data Source=.;Initial Catalog=HRS;Integrated Security=True", CommandType.StoredProcedure, "spViewEmployee",param);
            return rd;
        }
     
    }
}