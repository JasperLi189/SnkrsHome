using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SnkrsHome.UserLayer
{
    public partial class HomePage : System.Web.UI.MasterPage
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //check the user in what state in order to enable and disable some of the function
            if ((string)Session["Logon"] == "True")
            {
                hlhistory.Visible = true;
            }
            if ((string)Session["AdminOn"] == "True")
            {
                hlAdmin.Visible = true;
            }
            

        }
    }
}