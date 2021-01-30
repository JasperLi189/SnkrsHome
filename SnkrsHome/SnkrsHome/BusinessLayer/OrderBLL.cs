using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SnkrsHome.DataAccessLayer;

namespace SnkrsHome.BusinessLayer
{
    public class OrderBLL
    {
        //Make up the order to the database
        public bool MakeOrder(string StartDate, string PaymentDate, string CustomerID, string ShipID, string ItemList)
        {
            OrderDAL Order = new OrderDAL();
            return Order.CreateOrder(StartDate, PaymentDate, CustomerID, ShipID, ItemList);
        }
    }
}