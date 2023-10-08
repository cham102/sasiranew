using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace sasiranew
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        public string conString = "Data Source=DESKTOP-GHCHD6M;Initial Catalog=register;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
             
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                string q = "delete from stdregister where username='" + TextBox1.Text + "'";
                SqlCommand cdm = new SqlCommand(q, con);
                cdm.ExecuteNonQuery();
                 
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}