using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Reflection;
using System.Resources;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace Brochem
{
    public partial class index : Page
    {
        private ResourceManager rm;
        protected void Page_Load(object sender, EventArgs e)
        {
            CultureInfo ci;
            if (!Page.IsPostBack)
            {
                Thread.CurrentThread.CurrentCulture = new CultureInfo("tr-TR");
                rm = new ResourceManager("Resources.Strings", Assembly.Load("App_GlobalResources"));
                ci = Thread.CurrentThread.CurrentCulture;
                LoadData(ci);
            }
            else
            {
                rm = new ResourceManager("Resources.Strings", Assembly.Load("App_GlobalResources"));
                ci = Thread.CurrentThread.CurrentCulture;
                LoadData(ci);

            }
        }

        protected void imgTR_Click(object sender, ImageClickEventArgs e)
        {
            Thread.CurrentThread.CurrentCulture = new CultureInfo("tr-TR");
            LoadData(Thread.CurrentThread.CurrentCulture);
        }

        protected void imgEN_Click(object sender, ImageClickEventArgs e)
        {
            Thread.CurrentThread.CurrentCulture = new CultureInfo("en-US");
            LoadData(Thread.CurrentThread.CurrentCulture);
        }

        public void LoadData(CultureInfo ci)
        {
            lblHome.Text = rm.GetString("menuHome", ci);
            lblContact.Text = rm.GetString("menuContact", ci);
            lblService.Text = rm.GetString("menuServices", ci);
            lblAbout.Text = rm.GetString("menuAboutUs", ci);
            lblCarouselH1.Text = rm.GetString("carouselH", ci);
            lblCarouselH2.Text = rm.GetString("carouselH", ci);
            lblCarouselH3.Text = rm.GetString("carouselH", ci);
            lblCarouselP1.Text = rm.GetString("carouselP", ci);
            lblCarouselP2.Text = rm.GetString("carouselP", ci);
            lblCarouselP3.Text = rm.GetString("carouselP", ci);
            lblCarousel1.Text = rm.GetString("carouselBTN", ci);
            lblCarousel2.Text = rm.GetString("carouselBTN", ci);
            lblCarousel3.Text = rm.GetString("carouselBTN", ci);
            //btnCarousel1.Text = rm.GetString("carouselBTN", ci);
            //btnCarousel2.Text = rm.GetString("carouselBTN", ci);
            //btnCarousel3.Text = rm.GetString("carouselBTN", ci);
            lblCarouselNext.Text = rm.GetString("carouselNext", ci);
            lblCarouselPrev.Text = rm.GetString("carouselPrevious", ci);
            partHeaderAboutUs.Text = rm.GetString("partHeaderAboutUs", ci);
            p1AboutUs.Text = rm.GetString("p1AboutUs", ci);
            //p2AboutUs.Text = rm.GetString("p2AboutUs", ci);
            //p3AboutUs.Text = rm.GetString("p3AboutUs", ci);
            lblpartHeaderProducts.Text = rm.GetString("partHeaderProducts", ci);
            lblPlasticsSector.Text = rm.GetString("productPlasticsSector", ci);
            lblPlasticsSectorDetail.Text = rm.GetString("productPlasticsSectorDetail", ci);
            lblInternationalTrade.Text = rm.GetString("productInternationalTrade", ci);
            lblInternationalTradeDetail.Text = rm.GetString("productInternationalTradeDetail", ci);
            lblInternationalTradeDetail2.Text = rm.GetString("productInternationalTradeDetail2", ci);
            lblInternationalTradeDetail3.Text = rm.GetString("productInternationalTradeDetail3", ci);
            lblPharmaceuticalSector.Text = rm.GetString("productPharmaceuticalSector", ci);
            lblPharmaceuticalSectorDetail.Text = rm.GetString("productPharmaceuticalSectorDetail", ci);
            lblContactUs.Text = rm.GetString("partHeaderContactUs", ci);
            lblContactUsDetail.Text = rm.GetString("partHeaderContactUsDetail", ci);
            lblAddress.Text = rm.GetString("contactAddress", ci);
            txtName.Attributes["placeholder"] = rm.GetString("placeholderName", ci);
            txtPhone.Attributes["placeholder"] = rm.GetString("placeholderPhone", ci);
            Mesaj.Attributes["placeholder"] = rm.GetString("placeholderMessage", ci);
            lblAddress.Text = rm.GetString("contactAddress", ci);
            lblPhone.Text = rm.GetString("contactPhone", ci);
            lblFax.Text = rm.GetString("contactFax", ci);
            btnSubmit.Text = rm.GetString("contactSubmit", ci);
            lblContactMessage.Text = rm.GetString("contactMessage", ci);
            lblEducation.Text = rm.GetString("menuConsulting", ci);
            lblheaderEducation.Text = rm.GetString("partHeaderEducation", ci);
            lblPartEducation1.Text = rm.GetString("partEducation1", ci);
            lblPartEducation2.Text = rm.GetString("partEducation2", ci);
            lblPartEducation3.Text = rm.GetString("partEducation3", ci);
            lblPartEducation4.Text = rm.GetString("partEducation4", ci);
            lblPartEducation5.Text = rm.GetString("partEducation5", ci);
            lblPartEducation6.Text = rm.GetString("partEducation6", ci);
            lblPartEducation7.Text = rm.GetString("partEducation7", ci);
            lblPartEducation8.Text = rm.GetString("partEducation8", ci);
            lblPartEducation9.Text = rm.GetString("partEducation9", ci);
            lblPartEducation10.Text = rm.GetString("partEducation10", ci);
            lblPartEducation11.Text = rm.GetString("partEducation11", ci);
            lblPartEducation12.Text = rm.GetString("partEducation12", ci);
            H1.Text = rm.GetString("header1", ci);
            H2.Text = rm.GetString("header2", ci);
            H3.Text = rm.GetString("header3", ci);
        }



        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            bool isTurkish = btnSubmit.Text == "Send" ? false : true;
            if (!String.IsNullOrEmpty(txtName.Text) &&
                !String.IsNullOrEmpty(txtEmail.Text) &&
                !String.IsNullOrEmpty(txtPhone.Text) &&
                !String.IsNullOrEmpty(Mesaj.InnerText))
            {
                try
                {
                    MailMessage mail = new MailMessage();
                    mail.To.Add(new MailAddress("info@brochem.net"));
                    mail.To.Add(new MailAddress("ender@brochem.net"));
                    mail.To.Add(new MailAddress("islam@brochem.net"));
                    mail.To.Add(new MailAddress("metin@brochem.net"));
                    mail.To.Add(new MailAddress("tijana@brochem.net"));
                    //mail.To.Add(new MailAddress("mrorcun21@gmail.com"));
                    //mail.To.Add(new MailAddress("denizsercan91@gmail.com"));
                    mail.Subject = isTurkish ? "Brochem.net'ten bir iletiniz var." : "You have new message from Brochem.net";
                    mail.Body = Mesaj.InnerText;

                    SmtpClient smtpClient = new SmtpClient();
                    //smtpClient.Host = "smtpout.secureserver.net";
                    smtpClient.Host = "relay-hosting.secureserver.net";
                    smtpClient.Port = 25;
                    //smtpClient.Port = 3535;
                    //smtpClient.Timeout = 10000;
                    //smtpClient.UseDefaultCredentials = false;
                    //smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
                    //smtpClient.Credentials = new NetworkCredential("Brochem_Ambalaj", "8R0CH3M4m84l4j");
                    smtpClient.Send(mail);
                    Messagebox(isTurkish ? "Email başarıyla gönderildi." : "Email is successfully sent.");
                }
                catch (Exception)
                {
                    Messagebox(isTurkish ? "Email gönderirken bir hata oluştu. Lütfen daha sonra tekrar deneyiniz!" : "An error occured while sending the email. Please try again later!");
                }
            }
            else
            {
                Messagebox(isTurkish ? "Lütfen tüm alanları doldurunuz!" : "Please fill all the fields!");
            }
        }

        private void Messagebox(string msg)
        {
            Type cstype = this.GetType();
            ClientScriptManager cs = Page.ClientScript;
            String cstext = "alert('" + msg + "');";
            cs.RegisterStartupScript(cstype, "PopupScript", cstext, true);
        }
    }
}