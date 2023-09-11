using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Web;
using System.Web.Mvc;
using System.Web.Script.Serialization;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string userEmail = Session["name"] as string;

            if (!IsPostBack)
            {
                if (userEmail ==null )
                {
                    string script = "alert(' you are not login user please login here.');";
                    ClientScript.RegisterStartupScript(this.GetType(), "PageLoadAlert", script, true);
                }
                else
                {

                }
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login_page.aspx");
        }


        protected void btnRegister_Click(object sender, EventArgs e)
        {
            //Check_User_Data();

            string apiBaseUrl = ConfigurationManager.AppSettings["ApiBaseUrl"];

            User user = new User
            {
                email = txtEmail.Text,
                password = txtpassword.Text,
                HiddenValue = "2",
            };

            try
            {
                using (HttpClient httpClient = new HttpClient())
                {
                    httpClient.BaseAddress = new Uri(apiBaseUrl);
                    string json = new JavaScriptSerializer().Serialize(user);

                    HttpContent content = new StringContent(json, Encoding.UTF8, "application/json");

                    HttpResponseMessage response1 = httpClient.PostAsync("api/Student/data", content).Result;

                    if (response1.IsSuccessStatusCode)
                    {
                        string responseBody = response1.Content.ReadAsStringAsync().Result;
                        string name = txtEmail.Text.Trim();
                        Session["name"] = name;
                        Response.Redirect("WebForm1.aspx?name=" + name, false);
                    }

                }
            }
            catch (Exception ex)
            {
                //ResultLabel.Text = "Error: " + ex.Message;
            }
            
        }

        private void Check_User_Data()
        {
            var userEmail = Session["name"] as string;
            var userPassword = txtpassword.Text;
            string apiBaseUrl = ConfigurationManager.AppSettings["ApiBaseUrl"];

            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(apiBaseUrl);
                var apiUrl = $"api/Student/Order_data?userEmail={userEmail} {userPassword}";

                var response = client.GetAsync("api/Student/Order_data").Result;
                if (response.IsSuccessStatusCode)
                {
                    var Data = response.Content.ReadAsStringAsync().Result;

                    var Data1 = JsonConvert.DeserializeObject<List<Order_Data>>(Data);
                }
            }
        }



    }
    
}