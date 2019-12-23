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


            //string script = string.Format("alert('{0}');", fname+lname+em+pwd+pwdConf);

            //Page page = HttpContext.Current.CurrentHandler as Page;


            //if (page != null && !page.ClientScript.IsClientScriptBlockRegistered("alert"))
            //{
            //    page.ClientScript.RegisterClientScriptBlock(page.GetType(), "alert", script, true /* addScriptTags */);
            //}

            if (!File.Exists("F:\\Users.xml"))
            {
                XmlWriterSettings xmlWriterSettings = new XmlWriterSettings();
                xmlWriterSettings.Indent = true;
                xmlWriterSettings.NewLineOnAttributes = true;
                using (XmlWriter xmlWriter = XmlWriter.Create("F:\\Users.xml", xmlWriterSettings))
                {
                    xmlWriter.WriteStartDocument();
                    xmlWriter.WriteStartElement("Users");

                    xmlWriter.WriteStartElement("Record");
                    xmlWriter.WriteElementString("FirstName", fname);
                    xmlWriter.WriteElementString("LastName", lname);
                    xmlWriter.WriteElementString("Email", em);
                    xmlWriter.WriteElementString("Password", pwd);
                    
                    xmlWriter.WriteEndElement();

                    xmlWriter.WriteEndElement();
                    xmlWriter.WriteEndDocument();
                    xmlWriter.Flush();
                    xmlWriter.Close();
                }
            }
            else
            {
                XDocument xDocument = XDocument.Load("F:\\Users.xml");
                XElement root = xDocument.Element("Users");    
                IEnumerable<XElement> rows = root.Descendants("Record");
                XElement firstRow = rows.First();
                firstRow.AddBeforeSelf(
                   new XElement("Record",
                   new XElement("FirstName", fname),
                   new XElement("LastName", lname),
                   new XElement("Email", em),
                   
                   new XElement("Password", pwd)));
                xDocument.Save("F:\\Test.xml");
            }

        }
    }
}