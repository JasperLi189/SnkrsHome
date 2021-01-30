using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SnkrsHome.BusinessLayer;

namespace SnkrsHome.UserLayer
{
    public partial class AdminPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnChange_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                //access to the BLL for change the password
                AdminBLL admin = new AdminBLL();
                admin.ChnageAdminPassword(tbxNewPassword2.Text, tbxAccount.Text);
                lblSuccess.Text = "Password changed.";
                btnChange.Visible = false;
                btnGoBack.Visible = true;
            }
            
        }
    }
}