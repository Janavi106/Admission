using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admission.Views.Guest
{
    public partial class Register : System.Web.UI.Page
    {
        Models.function Con;

        protected void Page_Load(object sender, EventArgs e)
        {

            Con = new Models.function();


        }


        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                String SFname = SFnameTb.Value;
                String SLname = SLnameTb.Value;
                String AppStatus= AppStatusTb.Value;
                String Semail = SemailTb.Value;
                String password = passwordTb.Value;
                String DOB = DOBTb.Value;
                String gender = genderTb.Value;
                String Program = ProgramTb.Value;
                String dept = deptTb.Value;
                String Regular = RegularTb.Value;
                String PhN = PhNTb.Value;
                String Pincode = PincodeTb.Value;
                String Address = AddressTb.Value;
                String District = DistrictTb.Value;
                String State = StateTb.Value;
                String Query = "insert into ApplicationRegisterations values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}','{13}','{14}')";
                Query = String.Format(Query, SFname, SLname,AppStatus , Semail, password, DOB, gender, Program, dept, Regular, PhN, Pincode, Address, District,  State);
                Con.SetData(Query);
                ErrorMsg.InnerText = "Application Submitted";
                SFnameTb.Value = "";
                SLnameTb.Value = "";
                AppStatusTb.Value = "";
                SemailTb.Value = "";
                passwordTb.Value = "";
                DOBTb.Value = "";
                genderTb.Value = "";
                ProgramTb.Value = "";
                deptTb.Value = "";
                RegularTb.Value = "";
                PhNTb.Value = "";



            }
            catch(Exception Ex)
            {
                ErrorMsg.InnerText = Ex.Message;
            }
        }
       
    }
}