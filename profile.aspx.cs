using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Net.Http;
using System.Web.Services.Description;
using System.Web.Mvc;
using System.Text;
using System.Web.Script.Serialization;
using System.Text.Json.Serialization;
using Newtonsoft.Json;

namespace WebApplication5
{
    public partial class profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            hiddenValue.Value = "1";
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //HttpClient client = new HttpClient();
            //client.BaseAddress = new Uri(apiBaseUrl);

            //HttpResponseMessage response = client.GetAsync("api/Student/names").Result;

            //if (response.IsSuccessStatusCode)
            //{
            //    string responseBody = response.Content.ReadAsStringAsync().Result;
            //}
            //else
            //{
            //    Console.WriteLine("Request failed with status code: " + response.StatusCode);
            //}




            string apiBaseUrl = ConfigurationManager.AppSettings["ApiBaseUrl"];

            User user = new User
            {
                email = txtEmail.Text,
                password = txtpassword.Text,
                HiddenValue ="2",
            };

            //try
            //{
            //    using (HttpClient httpClient = new HttpClient())
            //    {
            //        httpClient.BaseAddress = new Uri(apiBaseUrl);
            //        string json = new JavaScriptSerializer().Serialize(user);

            //        HttpContent content = new StringContent(json, Encoding.UTF8, "application/json");

            //        HttpResponseMessage response1 = httpClient.PostAsync("api/Student/data", content).Result;

            //        if (response1.IsSuccessStatusCode)
            //        {
            //            string responseBody = response1.Content.ReadAsStringAsync().Result;
            //        }
            //        else
            //        {
            //        }
            //    }
            //}
            //catch (Exception ex)
            //{
            //    //ResultLabel.Text = "Error: " + ex.Message;
            //}


            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(apiBaseUrl);
                var response = client.GetAsync("api/Student/get_data").Result;
                if (response.IsSuccessStatusCode)
                {
                    var responseBody = response.Content.ReadAsStringAsync().Result;

                    var products = JsonConvert.DeserializeObject<List<User>>(responseBody);

                    rptProducts.DataSource = products;
                    rptProducts.DataBind();
                   
                }
            }

        }
    }
    
}
