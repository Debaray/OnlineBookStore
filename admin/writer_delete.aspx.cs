using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;

public partial class admin_writer_delete : System.Web.UI.Page
{
    string writer;
    static string mainconn = ConfigurationManager.ConnectionStrings["test"].ConnectionString;
    MySqlConnection sqlconn = new MySqlConnection(mainconn);

    protected void Page_Load(object sender, EventArgs e)
    {
        writer = Request.QueryString["writer"].ToString();
        sqlconn.Open();
        MySqlCommand cmd = sqlconn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "delete from writer where writer_name='" + writer.ToString() + "'";
        cmd.ExecuteNonQuery();

        MySqlCommand cmd1 = sqlconn.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "delete from books where writer_name='" + writer.ToString() + "'";
        cmd1.ExecuteNonQuery();

        sqlconn.Close();

        Response.Redirect("add_writer.aspx");


    }
}