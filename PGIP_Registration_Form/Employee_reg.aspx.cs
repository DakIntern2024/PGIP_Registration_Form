using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Text.RegularExpressions;
using System.Web.UI.WebControls;

namespace PGIP_Registration_Form
{
    public partial class Employee_reg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
            }
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {

            string firstName = txtemployeeFname.Text.Trim();
            string lastName = txtemployeeLname.Text.Trim();
            string employeeID = txtemployeeno.Text.Trim();
            string email = txtemployeeEmail.Text.Trim();
            DateTime dob;

            if (!DateTime.TryParse(txtdob.Text, out dob))
            {
                
                return;
            }

            string department = txtdepartment.Text.Trim();
            string state = txtstate.SelectedItem.Text;
            string address = txtaddress.Text.Trim();
            string zipcode = txtzipcode.Text.Trim();
            string country = txtcountry.Text.Trim();
            string contactNo = txtcontact.Text.Trim();
            string gender = txtgender.SelectedItem.Text;

            
            if (!IsValidFormData(firstName, lastName, employeeID, email, department, address, contactNo))
            {
                
                lblMessage.Text = "<span style='color:red;'>Please fill out this field.</span>";
                return;
            }

            if (!EmailIsValid(email))
            {
                
                lblMessage.Text = "<span style='color:red;'>Invalid email adress.</span>";
                return;
            }

            
            SaveFormData(firstName, lastName, employeeID, email, dob, department, state, address, zipcode, country, contactNo, gender);
        }

        private bool IsValidFormData(string firstName, string lastName, string employeeID, string email, string department, string address, string contactNo)
        {
            return !string.IsNullOrEmpty(firstName) &&
                   !string.IsNullOrEmpty(lastName) &&
                   !string.IsNullOrEmpty(employeeID) &&
                   !string.IsNullOrEmpty(email) &&
                   !string.IsNullOrEmpty(department) &&
                   !string.IsNullOrEmpty(address) &&
                   !string.IsNullOrEmpty(contactNo);
        }

        private void SaveFormData(string firstName, string lastName, string employeeID, string email, DateTime dob, string department, string state, string address, string zipcode, string country, string contactNo, string gender)
        {
            string connectionString = "Data Source=DESKTOP-IC59ODD\\SQLEXPRESS;Initial Catalog=EmployeeRegistrationDB;Integrated Security=True";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO Employee (FirstName, LastName, Email, DateOfBirth, Department, State, Address, Zipcode, Country, ContactNo, Gender) " +
                               "VALUES (@FirstName, @LastName, @Email, @DateOfBirth, @Department, @State, @Address, @Zipcode, @Country, @ContactNo, @Gender)";

                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@FirstName", firstName);
                command.Parameters.AddWithValue("@LastName", lastName);
                command.Parameters.AddWithValue("@EmployeeID", employeeID);
                command.Parameters.AddWithValue("@Email", email);
                command.Parameters.AddWithValue("@DateOfBirth", dob);
                command.Parameters.AddWithValue("@Department", department);
                command.Parameters.AddWithValue("@State", state);
                command.Parameters.AddWithValue("@Address", address);
                command.Parameters.AddWithValue("@Zipcode", zipcode);
                command.Parameters.AddWithValue("@Country", country);
                command.Parameters.AddWithValue("@ContactNo", contactNo);
                command.Parameters.AddWithValue("@Gender", gender);

                try
                {
                    connection.Open();
                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        
                        lblMessage.Text = "<span style='color:green;'>Data saved successfully!.</span>!";
                    }
                    else
                    {
                        
                        lblMessage.Text = "Data saving failed!";
                    }
                }
                catch (Exception ex)
                {
                    
                    lblMessage.Text = "Database connection failed: " + ex.Message;
                }
            }
        }

        private bool EmailIsValid(string email)
        {
            string expression = "\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*";

            if (Regex.IsMatch(email, expression))
            {
                if (Regex.Replace(email, expression, string.Empty).Length == 0)
                {
                    return true;
                }
            }
            return false;
        }
        protected void btnclear_Click(object sender, EventArgs e)
        {
            
            txtemployeeFname.Text = string.Empty;
            txtemployeeLname.Text = string.Empty;
            txtemployeeno.Text = string.Empty;
            txtemployeeEmail.Text = string.Empty;
            txtcontact.Text = string.Empty;
            txtgender.ClearSelection();
            txtaddress.Text = string.Empty;
            txtcity.Text = string.Empty;
            txtstate.SelectedIndex = 0; 
            txtzipcode.Text = string.Empty;
            txtcountry.SelectedIndex = 0; 
            txtdob.Text = string.Empty;
            txtdepartment.Text = string.Empty;
            
        }
    }
}