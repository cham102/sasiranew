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
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Text = "Mark Attendance for" + DateTime.Now.ToShortDateString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
             
        }
         

        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                int rollno1 = Convert.ToInt32(row.Cells[0].Text);
                String studentname1 = row.Cells[1].Text;
                RadioButton rbn1 = (row.Cells[2].FindControl("RadioButton1") as RadioButton);
                RadioButton rbn2 = (row.Cells[2].FindControl("RadioButton2") as RadioButton);
                String status1;
                if (rbn1.Checked)
                {
                    status1 = "present";
                }
                else
                {
                    status1 = "Absent";
                }
                String dateodclass1 = DateTime.Now.ToShortDateString();
                String sclass1 = DropDownList1.SelectedItem.Text;
                saveattendance(rollno1, studentname1, dateodclass1, status1, sclass1);
            }
            Label4.Text = "attendance saved successfully";
        }
        private void saveattendance(int rollno, String studentname, String dateofclass1, String status, String sclass)
        {
            String cont = "Data Source=DESKTOP-GHCHD6M;Initial Catalog=register;Integrated Security=True";
            String v = "insert into studentAttendance(rollnb,stdname,dateofclass,attendancestatus,class) values(" + rollno + ",'" + studentname + "','" + dateofclass1 + "','" + status + "','" + sclass + "')";

            SqlConnection con = new SqlConnection(cont);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = v;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();


        }
    }
}