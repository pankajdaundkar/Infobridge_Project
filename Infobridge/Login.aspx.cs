using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Infobridge
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUserName.Text == "admin" && txtPass.Text == "admin123")
            {
                Response.Redirect("~/Employee.aspx");
            }
            else
            {
                lblMsg.ForeColor = System.Drawing.Color.Red;
                lblMsg.Text = "Username or password is incorrect";
            }

        }
    }
}