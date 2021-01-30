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
    public class OrderDAL
    {
        SqlConnection con = new SqlConnection();

        //Create the order when the customer make order
        public bool CreateOrder(string StartDate,string PaymentDate,string CustomerID,string ShipID,string ItemList)
        {
            con.ConnectionString = GetConnectionString();
            if (ConnectionState.Closed == con.State) con.Open();
            string sql = "INSERT INTO Orders(StartDate,PaymentDate,CustomerID,ShipID,ItemList) VALUES (@StartDate,@PaymentDate,@CustomerID,@ShipID,@ItemList)";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@StartDate", StartDate);
            cmd.Parameters.AddWithValue("@PaymentDate", PaymentDate);
            cmd.Parameters.AddWithValue("@CustomerID", CustomerID);
            cmd.Parameters.AddWithValue("@ShipID", ShipID);
            cmd.Parameters.AddWithValue("@ItemList", ItemList);
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