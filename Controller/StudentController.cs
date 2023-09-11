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

    public class StudentController : ApiController
    {
        string connString = ConfigurationManager.AppSettings["ConnectionString"].ToString();

        //[Route("api/Student/names")]
        //public IEnumerable<string> Get()
        //{
        //    return new string[] { "Harshal", "Sanyashi" };
        //}


        [HttpPost]
        [Route("api/Student/data")]
        public IHttpActionResult Post(User user)
        {
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
                    objcmd.Parameters.Add(new OracleParameter() { ParameterName = "uhiddenvalue", Direction = System.Data.ParameterDirection.Input, OracleDbType = OracleDbType.Varchar2 }).Value = user.HiddenValue;

                    objcmd.ExecuteNonQuery();
                    conn.Close();
                    return Ok("Data inserted sucessfukly");
                }
            };
        }



        [HttpPost]
        [Route("api/Student/Post_Order_data")]
        public IHttpActionResult Post_Order_Data(Order_Data order_Data)
        { 
            using (OracleConnection conn = new OracleConnection(connString))
            {
                using (OracleCommand objcmd = new OracleCommand())
                {
                    conn.Open();
                    objcmd.Connection = conn;
                    objcmd.CommandText = "SP_HiddenValue";
                    objcmd.CommandType = System.Data.CommandType.StoredProcedure;

                    objcmd.Parameters.Add(new OracleParameter() { ParameterName = "h_value", Direction = System.Data.ParameterDirection.Input, OracleDbType = OracleDbType.Varchar2 }).Value = order_Data.value;
                    objcmd.Parameters.Add(new OracleParameter() { ParameterName = "h_id", Direction = System.Data.ParameterDirection.Input, OracleDbType = OracleDbType.Varchar2 }).Value = order_Data.Id;

                    objcmd.ExecuteNonQuery();
                    conn.Close();
                    return Ok("Data inserted sucessfukly");
                }
            };
        }




        [HttpGet]
        [Route("api/Student/get_data")]
        public IHttpActionResult GetData()
        {
            List<User> users = new List<User>();
            
            using (OracleConnection conn = new OracleConnection(connString))
            {
                using (OracleCommand objcmd = new OracleCommand("SP_Get_Data", conn))
                {
                    objcmd.CommandType = System.Data.CommandType.StoredProcedure;

                    OracleParameter parameter = new OracleParameter("p_cursor",OracleDbType.RefCursor);
                    parameter.Direction = System.Data.ParameterDirection.Output;
                    objcmd.Parameters.Add(parameter);

                    conn.Open();
                    using (OracleDataReader reader = objcmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            User user = new User
                            {
                                email = reader["uemail"].ToString(),
                                password = reader["upassword"].ToString(),
                                HiddenValue = reader["uhiddenvalue"].ToString()
                            };
                            
                        }
                    }
                }
            }
            return Ok(users);
        }



        [HttpGet]
        [Route("api/Student/Order_data")]
        public IHttpActionResult Get_Order_Data(string userEmail )
        {
            List<Order_Data> order_Data = new List<Order_Data>();

            using (OracleConnection conn = new OracleConnection(connString))
            {
                using (OracleCommand objcmd = new OracleCommand("Sp_Match_order_Data", conn))
                {
                    objcmd.CommandType = System.Data.CommandType.StoredProcedure;

                    OracleParameter parameter = new OracleParameter("p_output", OracleDbType.RefCursor);
                    parameter.Direction = System.Data.ParameterDirection.Output;
                    objcmd.Parameters.Add(parameter);
                    conn.Open();

                    using (OracleDataReader reader = objcmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            Order_Data order1 = new Order_Data
                            {
                                Name = reader["F_Name"].ToString(),
                                value = reader["uemail"].ToString(),
                                Desc = reader["F_Desc"].ToString(),
                            };
                            while (order1.value == userEmail)
                            {
                                order_Data.Add(order1);
                                break;
                            }
                        }
                    }

                }
            }
            return Ok(order_Data);
        }


        [HttpGet]
        [Route("api/Student/User_data")]
        public IHttpActionResult Get_user_data(string userEmail ,string password)
        {
            List<User> users = new List<User>();
            using(OracleConnection conn = new OracleConnection(connString))
            {
                using (OracleCommand cmd = new OracleCommand("SP_Match_user_Data", conn))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    OracleParameter parameter = new OracleParameter("p_output",OracleDbType.RefCursor);

                    parameter.Direction = System.Data.ParameterDirection.Output;
                    cmd.Parameters.Add(parameter);
                    conn.Open();
                    using(OracleDataReader reader = cmd.ExecuteReader())
                    {
                        while(reader.Read())
                        {
                            User user = new User
                            {
                                email = reader["U_email"].ToString(),
                                password = reader["U_password"].ToString()
                            };
                            users.Add(user);
                        }
                    }

                }
            }
            return Ok(users);
        }


    }
}

