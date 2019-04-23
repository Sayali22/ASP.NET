using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.ApplicationBlocks.Data;
using CaseStudyDec2016.ModelCSD;
using System.Data;
using System.Data.SqlClient;
namespace CaseStudyDec2016.DAOCSD
{
    public class CategoryDAOCSD
    {
        /// <summary>
        /// Create Category by adding name and description.
        /// </summary>
        /// <param name="mod"></param>
        /// <returns></returns>
        public int createCategory(CategoryModelCSD mod) 
        {
            SqlParameter[] param= new SqlParameter[3];
            param[0] = new SqlParameter("@categoryName",SqlDbType.VarChar);
            param[0].Value = mod.CategoryName;

            param[1] = new SqlParameter("@categoryDesc", SqlDbType.VarChar);
            param[1].Value = mod.CategoryDescription;

            param[2] = new SqlParameter("@createdBy", SqlDbType.Int);
            param[2].Value = mod.CreatedBy;

            int i = SqlHelper.ExecuteNonQuery("Data Source=.;Initial Catalog=HRS;Integrated Security=True", CommandType.StoredProcedure, "spCreateCategory", param);
            return i;
        }

        /// <summary>
        /// search category using category name.
        /// </summary>
        /// <param name="cat"></param>
        /// <returns></returns>
        public DataSet searchCatagory(string cat) 
        {
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@catName", SqlDbType.VarChar);
            param[0].Value = cat;
            DataSet ds = new DataSet();
            ds = SqlHelper.ExecuteDataset("Data Source=.;Initial Catalog=HRS;Integrated Security=True", CommandType.StoredProcedure, "spSearchCategory", param);
            return ds;
        
        }

        /// <summary>
        /// View category name and description
        /// </summary>
        /// <param name="cid"></param>
        /// <returns></returns>
        public SqlDataReader viewCatagory(int cid) 
        {
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@catId", SqlDbType.Int);
            param[0].Value = cid;

            SqlDataReader rd = SqlHelper.ExecuteReader("Data Source=.;Initial Catalog=HRS;Integrated Security=True", CommandType.StoredProcedure, "spViewCategory", param);
            return rd;
        
        }

        /// <summary>
        /// update category name and description
        /// </summary>
        /// <param name="mod"></param>
        /// <returns></returns>
        public int updateCategory(CategoryModelCSD mod) 
        {
            SqlParameter[] param = new SqlParameter[4];
            param[0] = new SqlParameter("@categoryId", SqlDbType.Int);
            param[0].Value = mod.CategoryId;

            param[1] = new SqlParameter("@categoryName", SqlDbType.VarChar);
            param[1].Value = mod.CategoryName;

            param[2] = new SqlParameter("@categoryDesc", SqlDbType.VarChar);
            param[2].Value = mod.CategoryDescription;

            param[3] = new SqlParameter("@modifiedBy", SqlDbType.Int);
            param[3].Value = mod.LastModifiedBy;

            int i = SqlHelper.ExecuteNonQuery("Data Source=.;Initial Catalog=HRS;Integrated Security=True", CommandType.StoredProcedure, "spUpdateCategory", param);
            return i;
        }
    }
}