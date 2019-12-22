using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;

namespace Rent_a_car_website
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            String fname= Convert.ToString(first_name.Value);
            String lname = Convert.ToString(last_name.Value);
            String em= Convert.ToString(email.Value);
            String pwd= Convert.ToString(password.Value);
            String pwdConf = Convert.ToString(password_confirmation.Value);


            string script = string.Format("alert('{0}');", fname+lname+em+pwd+pwdConf);

            Page page = HttpContext.Current.CurrentHandler as Page;


            //if (page != null && !page.ClientScript.IsClientScriptBlockRegistered("alert"))
            //{
            //    page.ClientScript.RegisterClientScriptBlock(page.GetType(), "alert", script, true /* addScriptTags */);
            //}

            if (!File.Exists("F:\\Test.xml"))
            {
                XmlWriterSettings xmlWriterSettings = new XmlWriterSettings();
                xmlWriterSettings.Indent = true;
                xmlWriterSettings.NewLineOnAttributes = true;
                using (XmlWriter xmlWriter = XmlWriter.Create("F:\\Test.xml", xmlWriterSettings))
                {
                    xmlWriter.WriteStartDocument();
                    xmlWriter.WriteStartElement("School");

                    xmlWriter.WriteStartElement("Student");
                    xmlWriter.WriteElementString("FirstName", fname);
                    xmlWriter.WriteElementString("LastName", lname);
                    xmlWriter.WriteEndElement();

                    xmlWriter.WriteEndElement();
                    xmlWriter.WriteEndDocument();
                    xmlWriter.Flush();
                    xmlWriter.Close();
                }
            }
            else
            {
                XDocument xDocument = XDocument.Load("F:\\Test.xml");
                XElement root = xDocument.Element("School");
                IEnumerable<XElement> rows = root.Descendants("Student");
                XElement firstRow = rows.First();
                firstRow.AddBeforeSelf(
                   new XElement("Student",
                   new XElement("FirstName", fname),
                   new XElement("LastName", lname)));
                xDocument.Save("F:\\Test.xml");
            }

        }
    }
}