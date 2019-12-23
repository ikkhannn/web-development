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
    public partial class AddCars : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddCar_Click(object sender, EventArgs e)
        {
            String title = Convert.ToString(Title.Value);
            String carname = Convert.ToString(Carname.Value);
            String model_no = Convert.ToString(model.Value);
            String Year_no = Convert.ToString(Year.Value);
            String mydropdown = Convert.ToString(city.Value);


            if (!File.Exists("F:\\Cars.xml"))
            {
                XmlWriterSettings xmlWriterSettings = new XmlWriterSettings();
                xmlWriterSettings.Indent = true;
                xmlWriterSettings.NewLineOnAttributes = true;
                using (XmlWriter xmlWriter = XmlWriter.Create("F:\\Cars.xml", xmlWriterSettings))
                {
                    xmlWriter.WriteStartDocument();
                    xmlWriter.WriteStartElement("Cars");

                    xmlWriter.WriteStartElement("Record");
                    xmlWriter.WriteElementString("Title", title);
                    xmlWriter.WriteElementString("Carname", carname);
                    xmlWriter.WriteElementString("Model", model_no);
                    xmlWriter.WriteElementString("Year", Year_no);
                    xmlWriter.WriteElementString("City", mydropdown.ToString());

                    xmlWriter.WriteEndElement();

                    xmlWriter.WriteEndElement();
                    xmlWriter.WriteEndDocument();
                    xmlWriter.Flush();
                    xmlWriter.Close();
                }
            }
            else
            {
                XDocument xDocument = XDocument.Load("F:\\Cars.xml");
                XElement root = xDocument.Element("Cars");
                IEnumerable<XElement> rows = root.Descendants("Record");
                XElement firstRow = rows.First();
                firstRow.AddBeforeSelf(
                   new XElement("Record",
                   new XElement("Title", title),
                   new XElement("Carname", carname),
                   new XElement("Model", model_no),
                   new XElement("Year", Year_no),

                   new XElement("City", mydropdown.ToString())));
                xDocument.Save("F:\\Cars.xml");
            }


        }

    }
}