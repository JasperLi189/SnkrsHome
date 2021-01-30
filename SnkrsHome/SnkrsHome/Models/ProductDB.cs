using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Threading.Tasks;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.ComponentModel;
using SnkrsHome.BusinessLayer;


namespace SnkrsHome.Models
{
    [DataObject(true)]
    public static class ProductDB
    {
        private static List<Product> productList;
        [DataObjectMethod(DataObjectMethodType.Select)]
        public static List<Product> GetProducts()
        {
            productList = new List<Product>();
            string sql = "SELECT * FROM Item ";
            using (SqlConnection con = new SqlConnection(GetConnectionString()))
            {
                using (SqlCommand cmd = new SqlCommand(sql, con))
                {
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    Product product;
                    while (dr.Read())
                    {
                        product = new Product();
                        product.ProductID = dr["ItemID"].ToString();
                        product.Name = dr["Name"].ToString();
                        product.ShortDescription = dr["Description"].ToString();
                        product.ImageFile = dr["Image"].ToString();
                        product.Size = dr["Size"].ToString();
                        product.UnitPrice = dr["Price"].ToString();
                        productList.Add(product);
                    }
                    dr.Close();
                }
            }
            return productList;
        }

        private static string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["SnkrsHomeConnectionString"].ConnectionString;
        }
    }
}