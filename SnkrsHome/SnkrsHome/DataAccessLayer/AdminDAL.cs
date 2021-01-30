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
    public class AdminDAL
    {
        SqlConnection con = new SqlConnection();
        //Check the admin is valid in database
        public bool CheckAdmin(string Password)
        {
            con.ConnectionString = GetConnectionString();
            if (ConnectionState.Closed == con.State) con.Open();
            string sql = "SELECT * FROM Admin WHERE Password = @Password";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@Password", Password);
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
        //Change the password when the admin want to change
        public bool ChangePassword(string NewPassword,string Account)
        {
            con.ConnectionString = GetConnectionString();
            if (ConnectionState.Closed == con.State) con.Open();
            string sql = "UPDATE Admin SET Password = @NewPassword WHERE Account = @Account";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@NewPassword", NewPassword);
            cmd.Parameters.AddWithValue("@Account", Account);
            try
            {
                cmd.ExecuteNonQuery();
                return true;

            }
            catch
            {
                return false;
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