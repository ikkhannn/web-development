using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Rent_a_car_website
{
    public partial class ViewCars : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (DataSet ds = new DataSet())
            {
               
                ds.ReadXml("F:\\Cars.xml");
                //Assign the xml data to gridview
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }
    }
}