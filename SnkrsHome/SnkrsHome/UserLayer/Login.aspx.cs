using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using SnkrsHome.BusinessLayer;


namespace SnkrsHome.UserLayer
{
    public partial class Login : System.Web.UI.Page
    {
        //Start for user and set up admin account and password
        private string AdminID = "JasperAdministrator";



        protected void Page_Load(object sender, EventArgs e)
        {
            //check the user in which state
            if (Session["Logon"] == null)
            {
                lblShow.Text = "Please Register First!!!";

            }
            //Show or hide some of the function on login page
            if((string)Session["Logon"] == "True")
            {
                btnLogin.Visible = false;
                tbxName.Visible = false;
                tbxPassword.Visible = false;
                btnLogout.Visible = true;
                lblHeader.Text = "Log Out";
                Session.Contents.RemoveAll();
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //Check the user exits in database or not
            CustomerBLL LogCustomer = new CustomerBLL();
            Customer LogedCustomer = LogCustomer.CheckCustomer(tbxName.Text, tbxPassword.Text);

            if (LogedCustomer.CustomerID != null)
            {
                //do thing if exits
                Session["Logon"] = "True";
                Session["UserID"] = LogedCustomer.CustomerID;
                Response.Redirect("~/UserLayer/Products.aspx");
            }
            
            else
            {
                //show error
                lblError.Text = "Wrong id or password!";
            }
            //Admin login check up and redirect
            if(cbxAdmin.Checked && tbxName.Text == AdminID)
            {
                AdminBLL admin = new AdminBLL();
                if (admin.CheckAdministrator(tbxPassword.Text))
                {
                    Session["AdminOn"] = "True";
                    Response.Redirect("~/UserLayer/AdminHomePage.aspx");
                }
                else
                {
                    lblError.Text = "Something went wrong please try again!";
                }
                
            }
        }
    
    }
}