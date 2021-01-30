using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

namespace SnkrsHome
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            var settings = new FriendlyUrlSettings();
            settings.AutoRedirectMode = RedirectMode.Temporary; 
            routes.EnableFriendlyUrls(settings);

            routes.MapPageRoute("Product", "Product/{ProductName}", "~/UserLayer/Products.aspx");
        }
    }
     
}
