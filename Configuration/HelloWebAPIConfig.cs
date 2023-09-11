using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Http.Routing;

namespace API_INTERFACE.Configuration
{
    public class HelloWebAPIConfig
    {
        public static void Register(HttpConfiguration config)
        {
            // Web API routes
            config.MapHttpAttributeRoutes();

            // if any additional route is configured before defaultapi , first it will exceute then default and if it does not url does not 
             config.Routes.MapHttpRoute(
                name: "School",
                routeTemplate: "api/myschool/{id}",
                defaults: new { controller="school", id = RouteParameter.Optional },
                constraints: new { id ="/d+" }
            );


            config.Routes.MapHttpRoute(
                name: "DefaultApi",
                routeTemplate: "api/{controller}/{id}",
                defaults: new { id = RouteParameter.Optional }
            );

            //Manually adding configuration Routes.
            //The MapHttpRoute() extension method internally creates a new instance of IHttpRoute and adds it to an HttpRouteCollection.


            //config.MapHttpAttributeRoutes();
            //IHttpRoute defaultRoute=config.Routes.CreateRoute("api/{controller/{id}}",new {id=RouteParameter.Optional},null);
            //config.Routes.Add("DefaultApi", defaultRoute);

        }
    }
}