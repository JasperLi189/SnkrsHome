using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SnkrsHome.BusinessLayer;

namespace SnkrsHome.UserLayer
{
    public partial class CheckOut : System.Web.UI.Page
    {
        //initializeing the properties 
        public DateTime CurrentDate;
        private List<Product> UserCart = new List<Product>();
        private string OrderItemList;
        private string OrdYear,OrdMonth,OrdDay;
        private string OrderDate;

        protected void Page_Load(object sender, EventArgs e)
        {
            //Make up the current time for payment
           CurrentDate = DateTime.Now;

        }

     

        protected void chkSameInfo_CheckedChanged(object sender, EventArgs e)
        {
            //for switch the same information for biling and shipping information 
            tbxSAddress.Enabled = !tbxSAddress.Enabled;
            tbxSCity.Enabled = !tbxSCity.Enabled;
            tbxSCode.Enabled = !tbxSCode.Enabled;
            tbxSState.Enabled = !tbxSState.Enabled;
            tbxSContury.Enabled = !tbxSContury.Enabled;

            rfvSAddress.Enabled = !rfvSAddress.Enabled;
            rfvSCity.Enabled = !rfvSCity.Enabled;
            rfvSCode.Enabled = !rfvSCode.Enabled;
            rfvSState.Enabled = !rfvSState.Enabled;
            rfvSContury.Enabled = !rfvSContury.Enabled;

        }

        protected void btnCheckOut_Click(object sender, EventArgs e)
        {
            //if page valid then go to patment page
            if (IsValid)
            {
                CustomerBLL UpdateCus = new CustomerBLL();
                UpdateCus.UpdateCustomer(tbxReEmail.Text,tbxContury.Text,tbxState.Text,tbxCity.Text,tbxCode.Text,tbxAddress.Text,tbxPhone.Text);
                CreateOrderList();
                OrdYear = CurrentDate.Year.ToString();
                OrdMonth = CurrentDate.Month.ToString();
                OrdDay = CurrentDate.Day.ToString();
                OrderDate = OrdYear + "-" + OrdMonth + "-" + OrdDay;
                OrderBLL NewOrder = new OrderBLL();
                string UserID = Session["UserID"].ToString();
                NewOrder.MakeOrder(OrderDate,OrderDate,UserID,ddlShip.SelectedValue, OrderItemList);
                Response.Redirect("~/UserLayer/HomeMenu.aspx");
                
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            //go back to Home Page
            Response.Redirect("~/UserLayer/HomeMenu.aspx");
        }

        private void CreateOrderList()
        {
            //Make up the order list for database
            if (Session["Cart"] != null)
            {
                UserCart = (List<Product>)Session["Cart"];
                if (UserCart.Count > 0)
                {
                    for (int i = 0; i < UserCart.Count; i++)
                    {
                        OrderItemList += UserCart[i].Name + "-Size:"+ UserCart[i].Size + "-Quantity" + UserCart[i].Quantity + "  ";
                    }
                }
            }

        }
    }
}