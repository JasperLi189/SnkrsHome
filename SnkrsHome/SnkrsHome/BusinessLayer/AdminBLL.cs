using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SnkrsHome.DataAccessLayer;

namespace SnkrsHome.BusinessLayer
{
    public class AdminBLL
    {
        //Check up the Administrator account and password
        public bool CheckAdministrator(string password)
        {
            AdminDAL admin = new AdminDAL();
            return admin.CheckAdmin(password);
        }

        //Change the admin password and return true and false 
        public bool ChnageAdminPassword(string NewPassword, string Account)
        {
            AdminDAL admin = new AdminDAL();
            return admin.ChangePassword(NewPassword, Account);
        }
    }
}