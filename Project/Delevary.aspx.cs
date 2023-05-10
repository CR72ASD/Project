using CrystalDecisions.CrystalReports.Engine;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Delevary : System.Web.UI.Page
{
    ShipeEntities db = new ShipeEntities();
    Orders O = new Orders();
    Order_Details OD = new Order_Details();

    public int GetNextOrderNo()
    {
		try
		{
			string query = (db.Orders.OrderByDescending(b => b.Id).FirstOrDefault().Id + 1).ToString();
			return Convert.ToInt16(query);
		}
		catch(System.NullReferenceException ex)
		{
			Response.Write(ex.Message);
			return 1;
		}
	}
    protected void Page_Load(object sender, EventArgs e)
    {
		
	}

    protected void btn_Click(object sender, EventArgs e)
    {
		DataTable x = (DataTable)Session["Cart"];
		O.Id = GetNextOrderNo();
		O.order_Date = DateTime.Now;
		O.order_Address = txtAddress.Text;
		O.City = txtCity.Text;
		O.Street = txtStreet.Text;


		double total = 0;
		double Quantity = 0;
		for (int i = 0; i < x.Rows.Count; i++)
		{
			Quantity = Convert.ToDouble(x.Rows[i][2]) + Quantity;
			total = Convert.ToDouble(x.Rows[i][3]) + total;
		}
		O.order_Total = Convert.ToDecimal(total);
		O.order_Quntaty = Convert.ToInt32(Quantity);
		O.UserName = Request.Cookies["login"]["User"].ToString();
		db.Orders.Add(O);
		db.SaveChanges();

		for (int n = 0; n < x.Rows.Count; n++)
		{

			OD.O_id = O.Id;
			OD.p_id = Convert.ToInt16(x.Rows[n][5]);

			OD.Quantity = Convert.ToInt16(x.Rows[n][2]);
			OD.Total = Convert.ToInt32(x.Rows[n][3]);
			OD.Price = Convert.ToDecimal(x.Rows[n][1]);

			db.Order_Details.Add(OD);
			db.SaveChanges();

		}

		Response.Redirect("Checkout.aspx");
    }
}