using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SnkrsHome.PaymentSystem;
using SnkrsHome.BusinessLayer;

namespace SnkrsHome.UserLayer
{
    public partial class Confirmation : System.Web.UI.Page
    {
        List<Product> UserCart = new List<Product>();
        private decimal Amount;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Display the payment amount 
            if (Session["Cart"] != null)
            {
                UserCart = (List<Product>)Session["Cart"];
            }
            if (UserCart.Count > 0)
            {
                for (int i = 0; i < UserCart.Count; i++)
                {
                    decimal ItemTotalprice = decimal.Parse(UserCart[i].UnitPrice)* UserCart[i].Quantity;
                    Amount += ItemTotalprice;
                }
            }
            tbxAmount.Text = Amount.ToString();

        }

        protected void btnPay_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                //start the payment and interact with the payment system
                try
                {
                    IPaymentSystem paymentSystem = INFT3050PaymentFactory.Create();
                    PaymentRequest payment = new PaymentRequest();

                    payment.CardName = tbxCard.Text;
                    payment.CardNumber = tbxNumber.Text;
                    payment.CVC = Int32.Parse(tbxCVC.Text);
                    int year = Int32.Parse(tbxYear.Text);
                    int Month = Int32.Parse(tbxMonth.Text);
                    payment.Expiry = new DateTime(year, Month, 1);
                    payment.Amount = Amount;
                    payment.Description = "Payment";
                    var task = paymentSystem.MakePayment(payment);
                    System.Threading.Thread.Sleep(6000);
                    if (task.IsCompleted)
                    {
                        lblResult.Text = "Transaction " + task.Result.TransactionResult.ToString();
                        btnPay.Enabled = false;
                        hplCheckOut.Visible = true;
                    }
                }
                catch
                {
                    Response.Redirect("~/UserLayer/ErrorPage.aspx");
                }
                
            }
            

        }
    }
}