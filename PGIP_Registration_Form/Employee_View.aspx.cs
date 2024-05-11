using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PGIP_Registration_Form
{
    public partial class Employee_View : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
        }

        private void BindGridView()
        {
            string connectionString = "Data Source=DESKTOP-IC59ODD\\SQLEXPRESS;Initial Catalog=EmployeeRegistrationDB;Integrated Security=True";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT EmployeeID, FirstName, LastName, Email, DateOfBirth, Department, State, Address, Zipcode, Country, ContactNo, Gender FROM Employee";

                SqlCommand command = new SqlCommand(query, connection);

                try
                {
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();
                    GridViewEmployees.DataSource = reader;
                    GridViewEmployees.DataBind();
                }
                catch (Exception ex)
                {
                    
                    lblMessage.Text = "Database connection failed: " + ex.Message;
                }
            }
        }
    }
}