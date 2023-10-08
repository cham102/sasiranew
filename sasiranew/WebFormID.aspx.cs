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
    public partial class WebForm6 : System.Web.UI.Page
    {
        public string conString = "Data Source=DESKTOP-GHCHD6M;Initial Catalog=register;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["name"].ToString();

            //conection to retrive other data
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cdm = new SqlCommand("select username, nic, email from stdregister where username=@username", con);
            cdm.Parameters.AddWithValue("username", Label1.Text);
            SqlDataReader reader1;
            reader1 = cdm.ExecuteReader();
            if (reader1.Read())
            {
                Label2.Text = reader1["nic"].ToString();
                Label3.Text = reader1["email"].ToString();
            }
            con.Close();
        }

        
    }
}