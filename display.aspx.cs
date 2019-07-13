using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;

public partial class display : System.Web.UI.Page
{
    int id;
    string name,price,image;
   static string mainconn = ConfigurationManager.ConnectionStrings["test"].ConnectionString;
    MySqlConnection sqlconn = new MySqlConnection(mainconn);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["search"] == null)
            {
                sqlconn.Open();
                MySqlCommand cmd = sqlconn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from books";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                da.Fill(dt);
                d3.DataSource = dt;
                d3.DataBind();

                sqlconn.Close();
            }

            else
            {
                sqlconn.Open();
                MySqlCommand comm = sqlconn.CreateCommand();
                comm.CommandType = CommandType.Text;
                comm.CommandText = "select * from books where book_name like('%" + Request.QueryString["search"].ToString() + "%')";
                comm.ExecuteNonQuery();
                DataTable dt = new DataTable();
                MySqlDataAdapter da = new MySqlDataAdapter(comm);
                da.Fill(dt);
                d3.DataSource = dt;
                d3.DataBind();
                sqlconn.Close();
            }
        }
    }
    protected void ImageButton_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("cart.aspx");
    }
    protected void discart_Click(object sender, ImageClickEventArgs e)
    {
        string mainconn = ConfigurationManager.ConnectionStrings["test"].ConnectionString;
        MySqlConnection sqlconn = new MySqlConnection(mainconn);
        MySqlCommand comm = new MySqlCommand("select * from books where id=" + id + "");
        {
            MySqlDataAdapter da = new MySqlDataAdapter();
            comm.Connection = sqlconn;
            da.SelectCommand = comm;
            DataTable dt = new DataTable();
            {
                da.Fill(dt);
                foreach (DataRow dr in dt.Rows)
                {
                    name = dr["book_name"].ToString();
                    price = dr["price"].ToString();
                    image = dr["image"].ToString();

                }

            }

        }
        if (Request.Cookies["ds"] == null)
        {
            Response.Cookies["ds"].Value = name.ToString() + "," + price.ToString() + "," + image.ToString();
            Response.Cookies["ds"].Expires = DateTime.Now.AddDays(1);

        }
        else
        {
            Response.Cookies["ds"].Value = Request.Cookies["ds"].Value + "|" + name.ToString() + "," + price.ToString() + "," + image.ToString();
            Response.Cookies["ds"].Expires = DateTime.Now.AddDays(1);

        }
    }

}