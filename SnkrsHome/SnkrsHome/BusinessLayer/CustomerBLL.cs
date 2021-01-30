using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Protocols;
using SnkrsHome.DataAccessLayer;

namespace SnkrsHome.BusinessLayer
{
    public class CustomerBLL
    {
        Customer NewCustomer = new Customer();
        
        //Check up the customer password and account for login
        public Customer CheckCustomer(string Email,string Password)
        {
            CustomerDAL customer = new CustomerDAL();
            return NewCustomer = customer.GetCustomer(Email, Password);
        }
        //Check up the customer exist in database or not 
        public bool CheckCusEmail(string Email)
        {
            CustomerDAL customer = new CustomerDAL();
            return customer.CheckEmail(Email);
        }

        //check the email account and make change to password accordingly 
        public bool ChangeCusPassword(string Email, string Password)
        {
            CustomerDAL customer = new CustomerDAL();
            return customer.ChangePassword(Email, Password);
        }
        //For register a new customer to database
        public bool CreateCustomer(string FirstName, string LastName, string Password, string Email)
        {
            CustomerDAL customer = new CustomerDAL();
            return customer.CreateCustomer(FirstName, LastName, Password, Email);
        }
        //during the order check out update some of the missing information to the customer 
        public bool UpdateCustomer(string Email, string Country, string State, string City, string ZipCode,string Address,string PhoneNumber)
        {
            CustomerDAL customer = new CustomerDAL();
            return customer.UpdateCustomer(Email, Country, State, City, ZipCode,Address, PhoneNumber);
        }
    }
}