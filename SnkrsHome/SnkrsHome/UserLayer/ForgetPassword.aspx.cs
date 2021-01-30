using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Drawing;
using SnkrsHome.BusinessLayer;

namespace SnkrsHome.UserLayer
{
    public partial class ForgetPassword : System.Web.UI.Page
    {
        //initicalize the properties
        string VerifyCode;
        string UserEmail;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            
            UserEmail = tbxEmail.Text;
            string[] Alphabet = {"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P"
                                ,"Q","R","S","T","Z","U","V","W","X","Y","Z"};
            MailMessage msg = new MailMessage();

            CustomerBLL cus = new CustomerBLL();
            if (cus.CheckCusEmail(UserEmail))
            {
                Random ran = new Random();
                for (int i = 0; i < 5; i++)
                {
                    VerifyCode += Alphabet[ran.Next(0, 26)];
                }
                lblError.Visible = false;
                //write Email information
                msg.From = new MailAddress("Jasper@JMail.com", "SnkrsHome");
                msg.To.Add(new MailAddress(UserEmail));
                msg.Subject = "Verification for new Password";
                msg.Body = "Your new Verification code is: " + VerifyCode + ".";
                Session["VerifyCode"] = VerifyCode;
                //send the email information
                SmtpClient client = new SmtpClient();
                client.Send(msg);
                btnSend.Visible = false;
                btnVerify.Visible = true;
                tbxVerify.Visible = true;
            }
            else
            {
                lblError.Visible = true;
                lblError.Text = "Your account is invalid account!";
            }

            
        }

        protected void btnVerify_Click(object sender, EventArgs e)
        {
            //For check the verification code is correct and update the password
            CustomerBLL cus = new CustomerBLL();
            UserEmail = tbxEmail.Text;
            string Code = Session["VerifyCode"].ToString();
            if (tbxVerify.Text == Code)
            {
                if (cus.ChangeCusPassword(UserEmail,tbxNewPass2.Text))
                {
                    lblError.Visible = true;
                    lblError.Text = "Successfully change your password!";
                    Session["VerifyCode"] = null;
                }
                else
                {
                    lblError.Visible = true;
                    lblError.Text = "Please try again! Something went wrong";
                }
            }
            else
            {
                lblError.Visible = true;
                lblError.Text = "Please double check your verification code and try again!";
            }
        }
    }
}