using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Payment : System.Web.UI.Page
{
    ShipeEntities DB = new ShipeEntities();
    Visa C = new Visa();
    Orders O = new Orders();
    Order_Details OD = new Order_Details();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Cart"] == null)
        {
            Response.Redirect("Category.aspx");
        }

    }
    public int GetNextOrderNo()
    {
        try
        {
            string query = (DB.Orders.OrderByDescending(b => b.Id).FirstOrDefault().Id + 1).ToString();
            return Convert.ToInt16(query);
        }
        catch
        {

            return 1;
        }
    }

    protected void btn_Click(object sender, EventArgs e)
    {
        DataTable cart = (DataTable)Session["Cart"];
        C.c_Name = Request.Cookies["login"]["User"].ToString();
        C.Email = txtEmail.Text;
        C.Address = txtAddress.Text;
        C.City = txtCity.Text;
        C.State = txtxState.Text;
        C.Card_Number = txtNumber.Text;
        C.Zip_Code = Convert.ToInt32(txtZipCode.Text);
        C.Exp_Year = Convert.ToInt32(txtYear.Text);
        C.Exp_Month = txtMonth.Text;
        C.CVV = Convert.ToInt32(txtCVV.Text);
        C.Name_On_Card = txtName.Text;
        DB.Visa.Add(C);
        DB.SaveChanges();
    }
}