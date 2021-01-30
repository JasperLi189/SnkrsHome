using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using SnkrsHome.BusinessLayer;
using System.Globalization;
using System.Configuration;

namespace SnkrsHome.DataAccessLayer
{
    public class CustomerDAL
    {
        
        SqlConnection con = new SqlConnection();
        
        //for check the customer exits in database
        public Customer GetCustomer(string Email, string Password)
        {
            con.ConnectionString = GetConnectionString();
            Customer cus = new Customer();
            if (ConnectionState.Closed == con.State) con.Open();
            string sql = "SELECT Customer_ID, FirstName FROM Customer c WHERE c.E_Mail = @Email AND c.Password = @Password";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@Email", Email);
            cmd.Parameters.AddWithValue("@Password", Password);
            try
            {
                SqlDataReader rd = cmd.ExecuteReader();
                while (rd.Read())
                {
                    cus.CustomerID = rd["Customer_ID"].ToString();
                    cus.FirstName = rd["FirstName"].ToString();
                }
                rd.Close();
                return cus;
            }
            catch
            {
                throw;
            }
        }

        //Create the customer by provide some of the information
        public bool CreateCustomer(string FirstName,string LastName,string Password,string Email)
        {
            con.ConnectionString = GetConnectionString();
            Customer cus = new Customer();
            if (ConnectionState.Closed == con.State) con.Open();
            string sql = "INSERT INTO Customer(E_Mail, Password, FirstName, LastName, MemberShip) VALUES(@Email, @Password, @FirstName, @LastName,'Bronze')";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@Email", Email);
            cmd.Parameters.AddWithValue("@Password", Password);
            cmd.Parameters.AddWithValue("@FirstName", FirstName);
            cmd.Parameters.AddWithValue("@LastName", LastName);
            try
            {
                cmd.ExecuteNonQuery();
                return true;
                
            }
            catch
            {
                throw;
            }
        }

        //Update the customer information when making the order 
        public bool UpdateCustomer(string Email, string Country,string State,string City,string ZipCode,string Address,string PhoneNumber)
        {
            con.ConnectionString = GetConnectionString();
            Customer cus = new Customer();
            if (ConnectionState.Closed == con.State) con.Open();
            string sql = "UPDATE Customer SET Country = @Country, State = @State, City = @City, ZipCode= @ZipCode, Address = @Address, PhoneNumber = @PhoneNumber WHERE Customer.E_Mail = @Email";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@Email", Email);
            cmd.Parameters.AddWithValue("@Country", Country);
            cmd.Parameters.AddWithValue("@State", State);
            cmd.Parameters.AddWithValue("@City", City);
            cmd.Parameters.AddWithValue("@ZipCode", ZipCode);
            cmd.Parameters.AddWithValue("@Address", Address);
            cmd.Parameters.AddWithValue("@PhoneNumber", PhoneNumber);
            try
            {
                cmd.ExecuteNonQuery();
                return true;

            }
            catch
            {
                throw;
            }
        }

        //Check up the email valid or not
        public bool CheckEmail(string Email)
        {
            con.ConnectionString = GetConnectionString();
            if (ConnectionState.Closed == con.State) con.Open();
            string sql = "SELECT E_Mail FROM Customer c WHERE c.E_Mail = @Email";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@Email", Email);
            try
            {
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.Read())
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch
            {
                throw;
            }
        }

        //Check the email and change the password
        public bool ChangePassword(string Email, string Password)
        {
            con.ConnectionString = GetConnectionString();
            if (ConnectionState.Closed == con.State) con.Open();
            string sql = "UPDATE Customer SET Password = @Password WHERE E_Mail = @Email";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@Email", Email);
            cmd.Parameters.AddWithValue("@Password", Password);
            try
            {
                cmd.ExecuteNonQuery();
                return true;

            }
            catch
            {
                throw;
            }
        }

        //linking to data by connecting string
        private static string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["SnkrsHomeConnectionString"].ConnectionString;
        }

    }
}