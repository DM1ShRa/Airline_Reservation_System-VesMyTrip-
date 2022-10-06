using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignUp_Form
{
    public partial class index : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=UserRegistration;Integrated Security=True;";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                clear();

                if (!String.IsNullOrEmpty(Request.QueryString["id"]))
                {
                    int UserId = Convert.ToInt32(Request.QueryString["id"]);
                    using (SqlConnection sqlcon = new SqlConnection(connectionString))
                    {
                        sqlcon.Open();
                        SqlDataAdapter sqlDa = new SqlDataAdapter("USERVIEWBYID", sqlcon);
                        sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
                        sqlDa.SelectCommand.Parameters.AddWithValue("@UserId", UserId);
                        DataTable dt = new DataTable();
                        sqlDa.Fill(dt);
                        HfUserId.Value = UserId.ToString();
                        FNameText.Text = dt.Rows[0][1].ToString();
                        LNameText.Text = dt.Rows[0][2].ToString();
                        ContactText.Text = dt.Rows[0][3].ToString();
                        DropDownList1.Items.FindByValue(dt.Rows[0][4].ToString()).Selected = true;
                        AddressText.Text = dt.Rows[0][5].ToString();
                        USRText.Text = dt.Rows[0][6].ToString();
                        PASSText.Text = dt.Rows[0][7].ToString();
                        PASSText.Attributes.Add("value", dt.Rows[0][7].ToString());
                        ConfirmText.Text = dt.Rows[0][7].ToString();
                        ConfirmText.Attributes.Add("value", dt.Rows[0][7].ToString());



                    }
                }
            }
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            if (USRText.Text == "" || PASSText.Text == "")
                Label2.Text = "Please Fill User_Name & Password";
            else if (FNameText.Text == "")
                Label2.Text = "Please Fill Out Name";
            else if (PASSText.Text != ConfirmText.Text)
                Label2.Text = "Password Do not Match";
            else
            {
                using (SqlConnection sqlcon = new SqlConnection(connectionString))
                {
                    sqlcon.Open();
                    SqlCommand sqlcmd = new SqlCommand("USERADDOREDIT", sqlcon);
                    sqlcmd.CommandType = CommandType.StoredProcedure;
                    sqlcmd.Parameters.AddWithValue("@UserId", Convert.ToInt32(HfUserId.Value == "" ? "0" : HfUserId.Value));
                    sqlcmd.Parameters.AddWithValue("@FirstName", FNameText.Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@LastName", LNameText.Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@Contact", ContactText.Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@Gender", DropDownList1.SelectedValue);
                    sqlcmd.Parameters.AddWithValue("@Address", AddressText.Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@UserName", USRText.Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@Password", PASSText.Text.Trim());
                    sqlcmd.ExecuteNonQuery();
                    clear();
                    Label1.Text = "Registered Successfully";
                    Response.Redirect("LoginIn_Page.aspx");


                }
            }
        }
        void clear()
        {
            FNameText.Text = LNameText.Text = ContactText.Text = AddressText.Text = USRText.Text = PASSText.Text = "";
            HfUserId.Value = "";
            Label1.Text = Label2.Text = "";
        }
    }
}