﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using System.Data.Entity;
using Baitayonline.Models;
using Baitayonline.Logic;

namespace Baitayonline
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            // Initialize the book database.
            Database.SetInitializer(new BookDatabaseInitializer());
            RoleActions roleActions = new RoleActions();
            roleActions.AddUserAndRole();
        }
    }
}