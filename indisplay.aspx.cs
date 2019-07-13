using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;

public partial class indisplay : System.Web.UI.Page
{
    static string mainconn = ConfigurationManager.ConnectionStrings["test"].ConnectionString;
    MySqlConnection sqlconn = new MySqlConnection(mainconn);
    int id;
    string name, price, image;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] == null)
        {
            Response.Redirect("display.aspx");
        }
        else
        {
            id = Convert.ToInt32(Request.QueryString["id"].ToString());
            sqlconn.Open();
            MySqlCommand cmd = sqlconn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from books where id=" + id + "";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);
            d2.DataSource = dt;
            d2.DataBind();
            sqlconn.Close();

            sqlconn.Open();
            MySqlCommand cm = sqlconn.CreateCommand();
            cm.CommandType = CommandType.Text;
            cm.CommandText = "select * from review where book_id=" + id + "";
            cm.ExecuteNonQuery();
            DataTable dtt = new DataTable();
            MySqlDataAdapter daa = new MySqlDataAdapter(cm);
            daa.Fill(dtt);
            d3.DataSource = dtt;
            d3.DataBind();
            sqlconn.Close();
        }
    }
    protected void b1C(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("cart.aspx");
    }
    protected void cart_Click(object sender, ImageClickEventArgs e)
    {
        if (!Page.IsPostBack)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["test"].ConnectionString;
            MySqlConnection sqlconn = new MySqlConnection(mainconn);
            MySqlCommand comm = new MySqlCommand("select book_name,price,image from books where id=" + id + "");
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
            if (Request.Cookies["aa"] == null)
            {
                Response.Cookies["aa"].Value = name.ToString() + "," + price.ToString() + "," + image.ToString();
                Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);

            }
            else
            {
                Response.Cookies["aa"].Value = Request.Cookies["aa"].Value + "|" + name.ToString() + "," + price.ToString() + "," + image.ToString();
                Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);

            }
        }
    }
    protected void top_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("cart.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        sqlconn.Open();
        MySqlCommand cmmm = sqlconn.CreateCommand();
        cmmm.CommandType = CommandType.Text;
        cmmm.CommandText = "INSERT INTO `review` (`id`, `book_id`, `name`, `review`) VALUES (NULL, '"+id+"','"+t1.Text+"','" + t2.Text +"')";
        cmmm.ExecuteNonQuery();
        sqlconn.Close();
        Response.Redirect("indisplay.aspx?id="+id+"");
    }
}