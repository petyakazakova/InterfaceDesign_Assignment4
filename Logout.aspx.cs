﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HandIn3
{
    public partial class LogOut : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                LabelMessage.Text = "Welcome " + Session["user"].ToString();
            }
        }

        protected void ButtonLogOut_Click(object sender, EventArgs e)
        {
            Session.Remove("user");
            Response.Redirect("~/Index.aspx");
        }
    }
}