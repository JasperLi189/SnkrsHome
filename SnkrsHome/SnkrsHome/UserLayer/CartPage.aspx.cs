using SnkrsHome.BusinessLayer;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SnkrsHome.UserLayer
{
    public partial class CartPage : System.Web.UI.Page
    {
        List<Product> UserCart = new List<Product>();


        protected void Page_Load(object sender, EventArgs e)
        {
            //check the cart empty or not
            if (Session["Cart"] != null)
            {
                UserCart = (List<Product>)Session["Cart"];
            }
            
            //display the cart agin
            if (!IsPostBack)
            {
                itemDisplay();
            }
            

        }

        public void itemDisplay()
        {
            //clear up the cart and display it again
            lbxCart.Items.Clear();
            
            if(UserCart.Count > 0)
            {
                for (int i = 0; i < UserCart.Count; i++)
                {
                    string Message = UserCart[i].Name + " -------- Quantity: " + UserCart[i].Quantity;
                    lbxCart.Items.Add(Message);
                }
            }
             
        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {
            //check the index then remove it from cart and display the cart again
            if (UserCart.Count > 0)
            {
                if(lbxCart.SelectedIndex > -1)
                {
                    UserCart.RemoveAt(lbxCart.SelectedIndex);
                    itemDisplay();
                }
                else
                {
                    lblError.Text = "Please Selected the item you want to remove from cart.";
                }
            }
        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UserLayer/Products.aspx");
        }
    }
}