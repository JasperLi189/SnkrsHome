using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SnkrsHome.BusinessLayer
{
    public class Orders
    {
        public string OrderID { get; set; }
        public string StartDate { get; set; }
        public string PaymentDate { get; set; }
        public string FinishedDate { get; set; }
        public string CustomerID { get; set; }
        public string ShipID { get; set; }
        public string ItemList { get; set; }
    }
}