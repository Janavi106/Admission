using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admission.Views.Admin
{
    public partial class Approval : System.Web.UI.Page
    {

        Models.function Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.function();
            ShowAppliactions();
        }
        private void ShowAppliactions()
        {
            String Query = "select * from ApplicationRegisterations";
            AppTable.DataSource = Con.GetData(Query);
            AppTable.DataBind();
        }

        static int Key = 0;
        protected void AppTable_SelectedIndexChanged(object sender, EventArgs e)
        {
            Key = Convert.ToInt32(AppTable.SelectedRow.Cells[1].Text);
        }
        
        protected void AppTable_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            
        }

        protected void ApproveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                String Status = "Approved";
               
                String Query = "Update ApplicationRegisterations set AppStatus = '{0}' where Sno ='{1}'";
                Query = String.Format(Query,Status,Key);
                Con.SetData(Query);
                ShowAppliactions();
                ErrorMsg.InnerText = "Application Approved!!";
                ShowAppliactions();
            
            }
            catch (Exception Ex)
            {
               ErrorMsg.InnerText = Ex.Message;
            }
        
        }

        protected void RejectBtn_Click(object sender, EventArgs e)
        {
            try
            {
                String Status = "Rejected";

                String Query = "Update ApplicationRegisterations set AppStatus = '{0}' where Sno ='{1}'";
                Query = String.Format(Query, Status, Key);
                Con.SetData(Query);
                ShowAppliactions();
                ErrorMsg.InnerText = "Application Rejected!!";
                ShowAppliactions();

            }
            catch (Exception Ex)
            {
                ErrorMsg.InnerText = Ex.Message;
            }
        }
    }
}