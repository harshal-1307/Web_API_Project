using Microsoft.SqlServer.Server;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net.Http;
using System.Reflection;
using System.Reflection.Emit;
using System.Text;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Xceed.Wpf.Toolkit;

namespace WebApplication5
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login_page.aspx");
        }

        protected void btnADC_Click(object sender, EventArgs e)
        {
            string userEmail = Session["name"] as string;

            if (userEmail == null)
            {
                Response.Redirect("registration.aspx",false);
            }
            else
            {
                Button button = (Button)sender;
                string commandArgument = button.CommandArgument;

                string apiBaseUrl = ConfigurationManager.AppSettings["ApiBaseUrl"];

                Order_Data order_Data = new Order_Data
                {
                    value = userEmail,
                    Id = commandArgument
                };

                try
                {
                    using (HttpClient client = new HttpClient())
                    {
                        client.BaseAddress = new Uri(apiBaseUrl);
                        string json = new JavaScriptSerializer().Serialize(order_Data);
                        HttpContent Content = new StringContent(json, Encoding.UTF8, "application/json");

                        HttpResponseMessage httpResponse = client.PostAsync("api/Student/Post_Order_data", Content).Result;

                        if (httpResponse.IsSuccessStatusCode)
                        {
                            string responsbody = httpResponse.Content.ReadAsStringAsync().Result;
                        }
                    }
                }

                catch (Exception ex)
                {

                }
            }
            

        }


        protected void btn_get_order_data(object sender, EventArgs e)
        {
            Response.Redirect("Add_To_Cart.aspx");
        }

    }
}