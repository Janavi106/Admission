using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admission.Views.Candidate
{
    public partial class Login : System.Web.UI.Page
    {
        Models.function Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.function();
        }
        public static String CandName = "";
        public static int CandId;
        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            try
            {
                String Uname = UserNameTb.Value;
                String password = passwordTb.Value;
                String Query = "select * from ApplicationRegisterations where SFname ='{0}' and password='{1}' ";
                Query = string.Format(Query, Uname, password);
                DataTable dt = Con.GetData(Query);
                if (dt.Rows.Count == 0)
                {
                    ErrorMsg.InnerText = "Invalid User!!";
                }
                else
                {
                    CandName = UserNameTb.Value;
                    CandId = Convert.ToInt32(dt.Rows[0][0].ToString());
                    Response.Redirect("Result.aspx");
                }

            }catch(Exception Ex)
            {
                throw;
            }

        }
    }
}