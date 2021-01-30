using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SnkrsHome.DataAccessLayer;

namespace SnkrsHome.BusinessLayer
{
    public class Product
    {
        public string ProductID { get; set; }
        public string Name { get; set; }
        public string ShortDescription { get; set; }
        public string UnitPrice { get; set; }
        public string ImageFile { get; set; }
        public int Quantity { get; set; }
        public string Size { get; set; }
       
    }
}