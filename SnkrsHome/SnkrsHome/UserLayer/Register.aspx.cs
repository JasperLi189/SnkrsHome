using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SnkrsHome.BusinessLayer;

namespace SnkrsHome.UserLayer
{
    public partial class Register : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                CustomerBLL NewCustomer = new CustomerBLL();
                try
                {
                    NewCustomer.CreateCustomer(tbxFirstName.Text, tbxLastName.Text, tbxRePassword.Text, tbxEmail.Text);
                    //Save infor in session, Redirect to Login Page ,show Hello in Product page.
                    Session["UserPassword"] = tbxRePassword.Text;
                    Session["UserID"] = tbxEmail.Text;
                }
                catch
                {
                    Response.Redirect("~/UserLayer/ErrorPage.aspx");
                }
                Response.Redirect("~/UserLayer/RegisterSuccess.aspx");
            }
        }
    }
}