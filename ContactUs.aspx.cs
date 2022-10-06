using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignIN
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible=false;
            Label2.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if(nametext.Text!="" && emailtext.Text!="" && contact.Text!="" && msgtext.Text!="")
            {
                Label1.Visible = true;
            }
            else
            {
                Label2.Visible = true;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dashboard.aspx");
        }
    }
}