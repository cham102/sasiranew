using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Net;
using System.Net.Mail;
using System.Text;

namespace sasiranew
{
    public partial class WebFormforgetpass10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string conString = "Data Source=DESKTOP-GHCHD6M;Initial Catalog=register;Integrated Security=True";
        protected void Button1_Click(object sender, EventArgs e)
        {

            {
                SqlConnection con = new SqlConnection(conString);
                string sqlquery = "select email,password from stdregister where email=@email ";
                SqlCommand sqlcomm = new SqlCommand(sqlquery, con);
                sqlcomm.Parameters.AddWithValue("@email", TextBox1.Text);
                con.Open();
                SqlDataReader sdr = sqlcomm.ExecuteReader();
                if (sdr.Read())
                {
                    string username = sdr["email"].ToString();
                    string passwords = sdr["password"].ToString();

                    MailMessage mm = new MailMessage("wwwshami556@gmail.com", TextBox1.Text);
                    mm.Subject = "Your password!";
                    mm.Body = string.Format("Hello:<h1>{0}</h1>is your email id<br/> your password is<h1>{1}</h1>", username, passwords);
                    mm.IsBodyHtml = true;
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    smtp.EnableSsl = true;
                    NetworkCredential nc = new NetworkCredential();
                    nc.UserName = "wwwshami556@gmail.com";
                    nc.Password = "gwtdngyovejickur";
                    smtp.UseDefaultCredentials = true;
                    smtp.Credentials = nc;
                    smtp.Port = 587;
                    smtp.Send(mm);
                    Label1.Text = "your password has been send to" + TextBox1.Text;
                    Label1.ForeColor = Color.Green;


                }
                else
                {
                    Label1.Text = "EMAIL NOT EXISTS!!" + TextBox1.Text;
                    Label1.ForeColor = Color.Red;
                }

            }
        }

         
    }
}