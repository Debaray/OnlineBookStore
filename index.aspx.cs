using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;

public partial class index : System.Web.UI.Page
{
   static string mainconn = ConfigurationManager.ConnectionStrings["test"].ConnectionString;
    MySqlConnection sqlconn = new MySqlConnection(mainconn);
    protected void Page_Load(object sender, EventArgs e)
    {
        
            
            sqlconn.Open();
            MySqlCommand cmd = sqlconn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from books limit 4";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);
            d1.DataSource = dt;
            d1.DataBind();

            sqlconn.Close();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("cart.aspx");
    }
}