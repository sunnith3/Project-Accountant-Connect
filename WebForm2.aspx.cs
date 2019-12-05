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
    public partial class WebForm2 : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        internal void Show()
        {
            
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            int currentYear = Convert.ToInt32(DateTime.Now.Year);
            List<int> yrs = new List<int>();
            for (int i = 2019; i<= currentYear; i++)
            {
                yrs.Add(i);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DataBase1ConnectionString1"].ConnectionString);
                conn.Open();//Add data to the sql database
                string insertQuery = "insert into Table1(FirstName,LastName,Email,Password,Day,Month,Year,Gender,AccountantType)values (@FirstName,@LastName,@Email,@Password,@Day,@Month,@Year,@Gender,@AccountantType)";
                 SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@FirstName", TextBox1.Text);
                cmd.Parameters.AddWithValue("@LastName", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Email", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Password", TextBox4.Text);
                cmd.Parameters.AddWithValue("@Month", DropDownList1.Text);
                cmd.Parameters.AddWithValue("@Day", DropDownList2.Text);
                cmd.Parameters.AddWithValue("@Year", DropDownList3.Text);
                cmd.Parameters.AddWithValue("@Gender", DropDownList4.Text);
                cmd.Parameters.AddWithValue("@AccountantType", DropDownList5.Text);



                cmd.ExecuteNonQuery();

                Response.Write("Registeration Successfull!!!Thank you");
                Response.Redirect("WebForm1.aspx");
                conn.Close();

            }//catch errors
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Write("WebForm1.aspx");
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }
    }
}