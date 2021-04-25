using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmailSenderApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSendEmail_Click(object sender, EventArgs e)
        {
            string EmailTo = txtEmailTo.Text;
            string CC = txtCC.Text;
            string BCC = txtBC.Text;
            string smtpAddress = "smtp.gmail.com"; //SMTP Address
            int portNumber = 587; //Port number
            bool enableSSL = true; //Enable SSL
            string emailFromAddress = ""; //Sender Email  
            string password = ""; //Sender Email Password  
            string subject = txtSubject.Text; //Subject of Email
            string body = txtBody.Text; //Body of Email

            MailMessage mail = new MailMessage(); //Create MailMessage 
            mail.From = new MailAddress(emailFromAddress);
            mail.To.Add(EmailTo); //Add email to send to
            //mail.CC.Add(CC); //Add cc email
            //mail.Bcc.Add(BCC); //Add bbc email
            mail.Subject = subject; //Set mail subject
            mail.Body = body; //Set mail body
            mail.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient(smtpAddress, portNumber); //Create smtp client

            //Try to send email
            try
            {
                smtp.Credentials = new NetworkCredential(emailFromAddress, password); //Set email credentials
                smtp.EnableSsl = enableSSL; //Set SSL
                smtp.Send(mail); //Send Email
                Response.Write("Email sent to " + EmailTo);
            }
            catch
            {
                Response.Write("Email could not be sent!");
            }
        }
    }
}