using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace SignIN
{
    public partial class LoginIn_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           Label1.Visible=false;
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            using (SqlConnection sqlcon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=UserRegistration;Integrated Security=True"))
            {
                sqlcon.Open();
                string query = "SELECT COUNT(1) FROM UserRegistration WHERE UserName=@username AND Password=@password";
                SqlCommand sqlCmd=new SqlCommand(query,sqlcon);
                sqlCmd.Parameters.AddWithValue("@username", usernametext.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@password", passtext.Text.Trim());
                int count=Convert.ToInt32(sqlCmd.ExecuteScalar());
                if(count==1)
                {
                    Session["UserName"] = usernametext.Text.Trim();
                    Response.Redirect("Dashboard.aspx");
                }
                else
                {
                    Label1.Visible=true;
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}