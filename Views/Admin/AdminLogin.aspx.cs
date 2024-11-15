using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admission.Views.Admin
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        Models.function Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.function();
        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            try
            {
                String UserName = UserNameTb.Value;
                String password = passwordTb.Value;
                if (Validate(UserName,password))
                {
                    Response.Redirect("Approval.aspx");
                }
                else
                {
                    ErrorMsg.InnerText = "Wrong Credentials!";
                    ErrorMsg.Visible = true;
                }
            }
            catch(Exception Ex)
            {
                throw;
            }
        }

        private bool Validate(string UserName, string password)
        {
            return UserName == "Admin" && password == "87654321";
        }
    }
}