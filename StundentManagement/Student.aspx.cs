using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StundentManagement
{
    public partial class WebForm2 : System.Web.UI.Page
    {
         string strConnectionString = "Server=DESKTOP-RC1CAM9;Database=test-one;Trusted_Connection=True;";

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void handleAddUpdateStudent(bool isUpdateStudnt = false)
        {
            int roll = Convert.ToInt32(rollNo.Text);
            string nam = name.Text;
            string clas = classs.Text;
            string Course = course.Text;
            string Email = email.Text;
            string Mobile = mobile.Text;
            string Date = dob.Text; 

            SqlConnection connection = new SqlConnection(strConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = connection;

            if (isUpdateStudnt)
            {
                cmd.CommandText = "UPDATE Student SET name = '"+nam+"', class = '" + clas+"', course = '" + Course + "', email = '" + Email+"', mobile = '" + Mobile+"' ,dob = '"+Date+"' WHERE rollno = "+roll+";";
            }
            else
            {
                cmd.CommandText = "insert into Student values(" + roll + ",'"+nam+"','"+clas+"','"+ Course + "','"+Email+"','"+Mobile+"','"+ Date + "')";
            }
            connection.Open();
            cmd.ExecuteNonQuery();
            connection.Close();
            cmd.Dispose();
            connection.Dispose();
        }
        protected void addStudent_Click(object sender, EventArgs e)
        {
            handleAddUpdateStudent();
        }

        protected void updateStudent_Click(object sender, EventArgs e)
        {
            handleAddUpdateStudent(true);
        }

        protected void search_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(strConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = connection;
            cmd.CommandText = "select * from Student where rollno = " + Convert.ToInt32(rollNo.Text);
            connection.Open();
            SqlDataReader  reader  = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                if (reader.Read()) {
                    Console.WriteLine("reader "+ reader["rollno"]);
                    Console.WriteLine("reader "+ reader.ToString());

                }
            }
            connection.Close();
            cmd.Dispose();
            connection.Dispose();

        }

        protected void delete_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(strConnectionString); 
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = connection;

            connection.Open();
            cmd.CommandText = "delete from Student where rollno = " + Convert.ToInt32(rollNo.Text);
            int rowAffected = cmd.ExecuteNonQuery();
            if (rowAffected > 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Record deleted successfully!');", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('No record found with the provided roll number.');", true);
            }
            connection.Close();
            cmd.Dispose();
            connection.Dispose();

        }
    }
}