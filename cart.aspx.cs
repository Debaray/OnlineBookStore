using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;

public partial class cart : System.Web.UI.Page
{
    string s;
    string t;
    string[] a = new string[4];
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt.Columns.AddRange(new DataColumn[4] {new DataColumn("book_name"), new DataColumn("price"),new DataColumn("image"), new DataColumn("id")});

        if (Request.Cookies["aa"] != null)
        {
            s = Convert.ToString(Request.Cookies["aa"].Value);

            string[] strArr = s.Split('|');

            for (int i = 0; i < strArr.Length; i++)
            {
                t = Convert.ToString(strArr[i].ToString());
                string[] strArr1 = t.Split(',');

                for (int j = 0; j < strArr1.Length; j++)
                {
                    a[j] = strArr1[j].ToString();
                }

                dt.Rows.Add(a[0].ToString(), a[1].ToString(), a[2].ToString(), i.ToString());
            }
        }
        data1.DataSource = dt;
        data1.DataBind();
    }
}