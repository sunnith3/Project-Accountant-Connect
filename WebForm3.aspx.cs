using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication21
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
                string search = this.TextBox1.Text;
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Database1ConnectionString1"].ConnectionString);
                try
                {
                    conn.Open();
                    String users = "select* from Table1 where Email = '" + search + "'";
                    SqlCommand cmd = new SqlCommand(users, conn);
                    SqlDataReader verify = cmd.ExecuteReader();
                    if (verify.Read())
                    {
                        this.Label1.Text = verify["FirstName"].ToString();
                        this.Label2.Text = verify["LastName"].ToString();
                        this.Label3.Text = "Email";
                        this.Label4.Text = verify["Email"].ToString() ;
                        this.Label5.Text = "Gender";
                        this.Label6.Text = verify["Gender"].ToString();
                        conn.Close();

                    }
                    else
                    {
                        this.Label7.Text = "No results found!";
                    }
                }
                catch
                {

                }
            }
    }
}