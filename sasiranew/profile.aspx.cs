using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using sasiranew.Services;

namespace sasiranew
{
    public partial class profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                return;
            }

            var username = Session["name"] as string;
            userlabel.Text = username ?? string.Empty;

            try
            {
                var service = new StudentAccountService();
                var result = service.GetProfile(username);
                if (!result.Succeeded)
                {
                    Label7.Text = result.ErrorMessage;
                    Label7.ForeColor = System.Drawing.Color.Red;
                    return;
                }

                niclabel.Text = result.Value.Nic ?? string.Empty;
                emaillabel.Text = result.Value.Email ?? string.Empty;
            }
            catch
            {
                Label7.Text = "Something went wrong while loading the profile.";
                Label7.ForeColor = System.Drawing.Color.Red;
            }


        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            var username = Session["name"] as string;

            try
            {
                var service = new StudentAccountService();
                var result = service.ChangePassword(username, TextBox4.Text, TextBox5.Text, TextBox6.Text);
                if (result.Succeeded)
                {
                    Label7.Text = "successful update";
                    Label7.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    Label7.Text = result.ErrorMessage;
                    Label7.ForeColor = System.Drawing.Color.Red;
                }
            }
            catch
            {
                Label7.Text = "Something went wrong while changing the password.";
                Label7.ForeColor = System.Drawing.Color.Red;
            }
       
           
            
                 
            
             

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebFormID.aspx");

        }
    }
}