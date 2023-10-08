using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace sasiranew
{
    public partial class profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //read data from session
            userlabel.Text= Session["name"].ToString();
             
            //conection to retrive other data
           SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cdm = new SqlCommand("select username, nic, email from stdregister where username=@username",con);
            cdm.Parameters.AddWithValue("username",userlabel.Text);
            SqlDataReader reader1;
            reader1 = cdm.ExecuteReader();
            if (reader1.Read())
            {
                niclabel.Text = reader1["nic"].ToString();
                emaillabel.Text = reader1["email"].ToString();
            }
            con.Close();


        }
        public string conString = "Data Source=DESKTOP-GHCHD6M;Initial Catalog=register;Integrated Security=True";
        protected void Button1_Click(object sender, EventArgs e)
        {


            SqlConnection con = new SqlConnection(conString);
            SqlDataAdapter dsa = new SqlDataAdapter("select *from stdregister where password= '" + TextBox4.Text + "' ",con);
            DataTable dt = new DataTable();
            dsa.Fill(dt);
            if (dt.Rows.Count.ToString() == "1")

            {
                if (TextBox5.Text == TextBox6.Text)
                {
                    con.Open();
                    SqlCommand cdm = new SqlCommand("Update stdregister set password='" + TextBox6.Text + "', confirmpass='"+TextBox6.Text+"'where password='" + TextBox4.Text + "'",con);
                    cdm.ExecuteNonQuery();

                    con.Close();
                    Label7.Text = "successful update";
                    Label7.ForeColor = System.Drawing.Color.Green;

                 }

            }
            else
            {
                Label7.Text = "please check your old password";
            }
       
           
            
                 
            
             

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebFormID.aspx");

        }
    }
}