using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace sasiranew
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string conString = "Data Source=DESKTOP-GHCHD6M;Initial Catalog=register;Integrated Security=True";

        protected void Button1_Click(object sender, EventArgs e)
        {
             
                //session to passvalue to other page
                Session["name"] = TextBox1.Text;
                //exception handle
                try
                {
                    SqlConnection con = new SqlConnection(conString);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    string q = "select *from stdregister where username='" + TextBox1.Text.Trim() + "' and password='" + TextBox2.Text.Trim() + "'";
                    SqlCommand cdm = new SqlCommand(q, con);
                    //read records
                    SqlDataReader dr = cdm.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            Response.Write("<script>alert('" + dr.GetValue(0).ToString() + "');</script>");
                            //introduce a user and session
                            Session["username"] = dr.GetValue(0).ToString();
                            Session["fullname"] = dr.GetValue(1).ToString();
                            Session["role"] = "user";


                        }
                        Response.Redirect("WebFormstudentdash.aspx");

                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid credential');</script>");
                    }

                }
                catch (Exception ex)
                {

                }



            
        }
    }
}