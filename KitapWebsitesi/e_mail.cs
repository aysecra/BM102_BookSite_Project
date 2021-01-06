using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Net;

namespace KitapWebsitesi
{
    public class e_mail
    {
        public void SendMail(string email, string subject, string message)
        {
            MailMessage mail = new MailMessage();
            SmtpClient sm = new SmtpClient();
            sm.Credentials = new NetworkCredential("projebooksite@gmail.com", "passwordBM102");
            sm.Port = 587;
            sm.Host = "smtp.gmail.com";
            sm.EnableSsl = true;

            mail.To.Add(email);
            mail.From = new MailAddress("projebooksite@gmail.com");
            mail.Subject = subject;
            mail.Body = message;
            sm.Send(mail);
        }
        public void SendFileMail(string email, string subject, string path)
        {
            MailMessage mail = new MailMessage();
            SmtpClient sm = new SmtpClient();
            sm.Credentials = new NetworkCredential("projebooksite@gmail.com", "passwordBM102");
            sm.Port = 587;
            sm.Host = "smtp.gmail.com";
            sm.EnableSsl = true;

            mail.To.Add(email);
            mail.From = new MailAddress("projebooksite@gmail.com");
            mail.Subject = subject;
            Attachment att = new Attachment(@path);
            mail.Attachments.Add(att);
            sm.Send(mail);
        }
    }
}