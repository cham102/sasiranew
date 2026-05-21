using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using sasiranew.App_Code.Models;
using sasiranew.App_Code.Services;

namespace sasiranew
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                var service = new StudentAccountService();
                var result = service.Register(new StudentAccount
                {
                    Username = txtus.Text,
                    FullName = TextBox1.Text,
                    Nic = TextBox2.Text,
                    Email = TextBox3.Text,
                    Password = TextBox4.Text,
                    ConfirmPassword = TextBox5.Text
                });

                if (!result.Succeeded)
                {
                    Response.Write("<script>alert('" + result.ErrorMessage + "');</script>");
                    return;
                }

                Response.Write("<script>alert('register is successfull');</script>");
                Response.Redirect("studentlogin.aspx");
            }
            catch
            {
                Response.Write("<script>alert('Something went wrong while registering.');</script>");
            }

        }
    }
}