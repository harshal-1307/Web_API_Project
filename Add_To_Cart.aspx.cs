using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net.Http;
using System.Text.Json.Nodes;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class Add_To_Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGetOrderData_Click(object sender , EventArgs e)
        {
            var userEmail = Session["name"] as string;
            string apiBaseUrl = ConfigurationManager.AppSettings["ApiBaseUrl"];

            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(apiBaseUrl);
                var apiUrl = $"api/Student/Order_data?userEmail={userEmail}";
                //var response = client.GetAsync("api/Student/Order_data").Result;
                var response = client.GetAsync(apiUrl).Result;
                if (response.IsSuccessStatusCode)
                {
                    var Data = response.Content.ReadAsStringAsync().Result;
                    var Data1 = JsonConvert.DeserializeObject<List<Order_Data>>(Data);
                    rptProducts.DataSource = Data1;
                    rptProducts.DataBind();
                }
            }

        }

    }
}