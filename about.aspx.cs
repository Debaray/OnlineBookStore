﻿using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class about : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("cart.aspx");
    }
}