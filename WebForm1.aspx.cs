using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication21
{
    public partial class WebForm1 : System.Web.UI.Page
    {
      

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

      

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Database1ConnectionString1"].ConnectionString);
            conn.Open();
            string userid = TextBox1.Text;
            string password = TextBox2.Text;
            SqlCommand cmd = new SqlCommand("select Email,Password from Table1 where Email='" + TextBox1.Text + "'and Password='" + TextBox2.Text + "'", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Session["session"] = TextBox1.Text;

                Response.Redirect("WebForm3.aspx");
                Session.RemoveAll();
            }
            else
            {
                Response.Write("You have entered wrong Email or Password");
            }
            conn.Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm2.aspx");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
       

    