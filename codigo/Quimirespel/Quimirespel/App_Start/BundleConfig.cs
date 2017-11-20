﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.UI;

namespace Quimirespel
{
    public class BundleConfig
    {
        // For more information on Bundling, visit http://go.microsoft.com/fwlink/?LinkID=303951
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/WebFormsJs").Include(
                            "~/Scripts/WebForms/WebForms.js",
                            "~/Scripts/WebForms/WebUIValidation.js",
                            "~/Scripts/WebForms/MenuStandards.js",
                            "~/Scripts/WebForms/Focus.js",
                            "~/Scripts/WebForms/GridView.js",
                            "~/Scripts/WebForms/DetailsView.js",
                            "~/Scripts/WebForms/TreeView.js",
                            "~/Scripts/WebForms/WebParts.js"));

            // Order is very important for these files to work, they have explicit dependencies
            bundles.Add(new ScriptBundle("~/bundles/MsAjaxJs").Include(
                    "~/Scripts/WebForms/MsAjax/MicrosoftAjax.js",
                    "~/Scripts/WebForms/MsAjax/MicrosoftAjaxApplicationServices.js",
                    "~/Scripts/WebForms/MsAjax/MicrosoftAjaxTimer.js",
                    "~/Scripts/WebForms/MsAjax/MicrosoftAjaxWebForms.js"));

           

            // Use the Development version of Modernizr to develop with and learn from. Then, when you’re
            // ready for production, use the build tool at http://modernizr.com to pick only the tests you need
            bundles.Add(new ScriptBundle("~/bundles/jquery-1.10.2").Include(
                            "~/Scripts/jquery-*"));

            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                           "~/Scripts/modernizr-*"));

            //bundles.Add(new ScriptBundle("~/Scripts/sitescript.js"));


            ScriptManager.ScriptResourceMapping.AddDefinition(
                "respond",
                new ScriptResourceDefinition
                {
                    Path = "~/Scripts/respond.min.js",
                    DebugPath = "~/Scripts/respond.js",
                });

            ScriptManager.ScriptResourceMapping.AddDefinition(
               "jquery-ui",
               new ScriptResourceDefinition
               {
                   Path = "~/Scripts/jquery/Jquery-ui.min.js",
                   DebugPath = "~/Scripts/Jquery/jquery-ui.min.js",
               });

            ScriptManager.ScriptResourceMapping.AddDefinition(
                "sitescript",
                new ScriptResourceDefinition
                {
                    Path = "~/Scripts/sitescript.js",
                    DebugPath = "~/Scripts/sitescript.js",
                });
        }
    }
}