using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admission.Views.Candidate
{
    public partial class Result : System.Web.UI.Page
    {
        Models.function Con;

        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.function();
            ShowResult();
        }

        private void ShowResult()
        {
            String Query= "select SFname as[Candidate Name],Department as [Department],Appstatus as [Appplication Status] from ApplicationRegisterations where Sno = '{0}'";
            Query = String.Format(Query, Login.CandId); 
            ResultTb.DataSource = Con.GetData(Query);
            ResultTb.DataBind();
        }
    }
}