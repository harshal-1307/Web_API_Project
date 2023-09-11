using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace API_INTERFACE.Controller
{
    public class HelloController : ApiController
    {
        public void Insert()
        {
            User user = new User();
            //Insertion(name,id,email,password);
            string connString = ConfigurationManager.AppSettings["ConnectionString"].ToString();

            using (OracleConnection conn = new OracleConnection(connString))
            {
                using (OracleCommand objcmd = new OracleCommand())
                {
                    conn.Open();
                    objcmd.Connection = conn;
                    objcmd.CommandText = "SP_USER_DATE";
                    objcmd.CommandType = System.Data.CommandType.StoredProcedure;

                    objcmd.Parameters.Add(new OracleParameter() { ParameterName = "uemail", Direction = System.Data.ParameterDirection.Input, OracleDbType = OracleDbType.Varchar2 }).Value = user.email;
                    objcmd.Parameters.Add(new OracleParameter() { ParameterName = "upassword", Direction = System.Data.ParameterDirection.Input, OracleDbType = OracleDbType.Varchar2 }).Value = user.password;

                    objcmd.ExecuteNonQuery();
                    conn.Close();
                }
            };
        }




        public void Delete (int id)
        {
            DeleteStudentFromDB(id);
        }

        public int DeleteStudentFromDB(int id)
        {
            return id;
        }


    }
}
