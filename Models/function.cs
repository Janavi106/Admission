using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Admission.Models
{
    public class function
    {

        private SqlConnection Con;
        private SqlCommand cmd;
        private DataTable dt;
        private string Constr;
        private SqlDataAdapter sda;
        public function()
        {
            Constr = @"Data Source=04-08-2022\SQLEXPRESS;Initial Catalog=tempdb;Integrated Security=True";
            Con = new SqlConnection(Constr);
            cmd = new SqlCommand();
            cmd.Connection = Con;
        }
        public int SetData(string sql)
        {
            int Cnt = 0;
            if (Con.State == ConnectionState.Closed)
            {
                Con.Open();

            }
            cmd.CommandText = sql;
            Cnt = cmd.ExecuteNonQuery();
            Con.Close();
            return Cnt;


        }
        public DataTable GetData(string sql)
        {
            dt = new DataTable();
            sda = new SqlDataAdapter(sql, Constr);
            sda.Fill(dt);
            return dt;
        }

    }
}