using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StundentManagement
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string connectionStr = "Server=DESKTOP-RC1CAM9;Database=test-one;Trusted_Connection=True;";

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void addUpdateCourse(bool isCrseUpdate = false)
        {

            string crseName= courseName.Text;
            SqlConnection connection = new SqlConnection(connectionStr);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = connection;
            if (isCrseUpdate)
            {

            }else
            {
                cmd.CommandText = "insert into Course values('" + crseName+"')";
            }
            connection.Open();
            cmd.ExecuteNonQuery();
            connection.Close();
            cmd.Dispose();
            connection.Dispose();

        }
        protected void AddCourse_Click(object sender, EventArgs e)
        {
            addUpdateCourse();
        }

        public void addUpdateClass(bool isUpdateClass = false)
        {
            int courseId = Convert.ToInt32(course_id.Text);
            string clasName = className.Text;
            SqlConnection connection = new SqlConnection(connectionStr);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = connection;
            if (isUpdateClass)
            {

            }else
            {
                cmd.CommandText = "insert into Class values(" + courseId + ",'" + clasName + "')";
            }
            connection.Open(); 
            cmd.ExecuteNonQuery();
            connection.Close();
            cmd.Dispose();
            connection.Dispose();

        }
        protected void AddClass_Click(object sender, EventArgs e)
        {
            addUpdateClass();
        }
    }
}