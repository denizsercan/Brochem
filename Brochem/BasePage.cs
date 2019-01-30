﻿using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading;

namespace Brochem
{
    public class BasePage : System.Web.UI.Page
    {
        protected override void InitializeCulture()
        {
            string language = "tr";

            //Detect User's Language.
            if (Request.UserLanguages != null)
            {
                //Set the Language.
                language = Request.UserLanguages[0];
            }

            //Check if PostBack is caused by Language DropDownList.
            if (Request.Form["__EVENTTARGET"] != null && (Request.Form["__EVENTTARGET"].Contains("imgTR") || Request.Form["__EVENTTARGET"].Contains("imgEN")))
            {
                //Set the Language.
                language = Request.Form[Request.Form["__EVENTTARGET"]];
            }

            //Set the Culture.
            Thread.CurrentThread.CurrentCulture = new CultureInfo(language);
            Thread.CurrentThread.CurrentUICulture = new CultureInfo(language);
        }
    }
}
