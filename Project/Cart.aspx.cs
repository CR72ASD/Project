using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        gdvShop.DataSource = (DataTable)Session["Cart"];
        gdvShop.DataBind();
        if (Session["Cart"] != null)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["Cart"];
            //int q = 0;
            //for(int i =0;  i < dt.Rows.Count; i++)
            //{
            //    q = Convert.ToInt32(dt.Rows[i][3]) + q;
            //}
            double total = 0;
            for(int t = 0; t < dt.Rows.Count; t++)
            {
                total = Convert.ToDouble(dt.Rows[t][3])+total;
            }
            lblTotal.Text = "Total Invoice = "+ total.ToString();
        }
        if (Session["Cart"]  == null) 
            lblCheckOut.Visible = false;
        else 
            lblCheckOut.Visible = true;
    }
}