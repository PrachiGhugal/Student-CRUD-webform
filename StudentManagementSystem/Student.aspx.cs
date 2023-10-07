using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace StudentManagementSystem
{
    public partial class Student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetStudentList();
            }
        }

        SqlConnection con = new SqlConnection("Data Source=DESKTOP-55DD561\\SQLEXPRESS01;Initial Catalog=StudentDb;Integrated Security=True");

        protected void Button3_Click(object sender, EventArgs e)
        {

                int id = int.Parse(txtid.Text);
                string name = txtname.Text;
                string gender = RadioButtonList1.SelectedValue;
                string address = txtaddress.Text;
                long contact = long.Parse(txtcontact.Text);
                string email = txtemail.Text;
                string course = DropDownList1.SelectedValue;

                con.Open();
                SqlCommand cmd = new SqlCommand("exec Studentsubmit '" + id + "','" + name + "','" + gender + "','" + address + "','" + contact + "','" + email + "','" + course + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Inserted Successfully');", true);

                GetStudentList();
            }
            void GetStudentList()
            {
                SqlCommand cmd = new SqlCommand("exec StudentList ", con);
                SqlDataAdapter sd = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sd.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }

        protected void Button4_Click(object sender, EventArgs e)
        {
            txtid.Text = "";
            txtname.Text = "";
            RadioButtonList1.SelectedValue = null;
            txtaddress.Text = "";
            txtcontact.Text = "";
            txtemail.Text = "";
            DropDownList1.SelectedValue = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = int.Parse(txtid.Text);
            string name = txtname.Text;
            string gender = RadioButtonList1.SelectedValue;
            string address = txtaddress.Text;
            long contact = long.Parse(txtcontact.Text);
            string email = txtemail.Text;
            string course = DropDownList1.SelectedValue;

            con.Open();
            SqlCommand cmd = new SqlCommand("exec Studentupdate '" + id + "','" + name + "','" + gender + "','" + address + "','" + contact + "','" + email + "','" + course + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Updated Successfully');", true);

            GetStudentList();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            int id = int.Parse(txtid.Text);
            con.Open();
            SqlCommand cmd = new SqlCommand("exec Studentdelete '" + id + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Deleted Successfully');", true);

            GetStudentList();

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            int id = int.Parse(txtid.Text);
            con.Open();
            SqlCommand cmd = new SqlCommand("exec Studentsearch '" + id + "'", con);
            SqlDataAdapter sd=new SqlDataAdapter(cmd);
            DataTable dt=new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            

        }
    }
    }
    


