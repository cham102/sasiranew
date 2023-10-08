using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows;
using System.Data;
using Google.Apis.Admin.Directory.directory_v1.Data;

namespace sasiranew
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string conString = "Data Source=DESKTOP-GHCHD6M;Initial Catalog=register;Integrated Security=True";
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckmemberExist())
            {
                Response.Write("<script>alert('username already password exist');</script>");
            }
            else
            {
                signUpNewUser();
            }

        }
        bool CheckmemberExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(conString);

                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                string b = "select * from  stdregister where username='" + txtus.Text + "'";
                SqlCommand cdm = new SqlCommand(b, con);
                SqlDataAdapter da = new SqlDataAdapter(cdm);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }


            }
            catch (Exception ex) {
                Response.Write("<script>alert(' "+ex.Message+"');</script>");
                return false;
            }
                
             
            
        }

       void signUpNewUser()
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {

                string q = "insert into stdregister(username,fullname,nic,email,password,confirmpass)values('" + txtus.Text.ToString() + "','" + TextBox1.Text.ToString() + "','" + TextBox2.Text.ToString() + "','" + TextBox3.Text.ToString() + "','" + TextBox4.Text.ToString() + "','" + TextBox5.Text.ToString() + "')";
                SqlCommand cdm = new SqlCommand(q, con);

                Response.Write("<script>alert('register is successfull');</script>");


                cdm.ExecuteNonQuery();
            }
            Response.Redirect("studentlogin.aspx");

        }
    }
}