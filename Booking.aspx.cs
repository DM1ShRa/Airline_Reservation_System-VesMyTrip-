using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Services.Description;
using System.Configuration;

namespace SignIN
{
    public partial class Booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=UserRegistration;Integrated Security=True"))
            {
                con.Open();
                if (Fromtext.Text != "" || Totext.Text != "")
                {
                    string query = "SELECT * FROM Flight WHERE Origin='" + Fromtext.Text + "' AND Destination='" + Totext.Text + "'";
                    SqlCommand sqlCmd = new SqlCommand(query, con);
                    SqlDataReader dr = sqlCmd.ExecuteReader();
                    if (dr.HasRows == true)
                    {
                        GridView1.DataSource = dr;
                        GridView1.DataBind();
                    }

                }
                else
                {
                    Label1.Visible = true;
                }

            }
        }
    }
}