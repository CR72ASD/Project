using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Checkout : System.Web.UI.Page
{
    ShipeEntities DB = new ShipeEntities();
    Visa C = new Visa();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Cart"] == null)
        {
            Response.Redirect("Category.aspx");
        }
    }
    protected void btnPay_Click(object sender, EventArgs e)
    {
        var x = from vs in DB.Visa
                where vs.Name_On_Card == txtFullName.Text
                && vs.Card_Number == txtNumper.Text
                && vs.CVV == Convert.ToInt32(txtCvv.Text)
                select vs;
        if (txtFullName.Text != C.Name_On_Card && txtNumper.Text != C.Card_Number && Convert.ToInt32(txtCvv.Text) != C.CVV)
        {
            Response.Write("<script>alert('The Data is Not Found');</script>");
        }
            
    }
    protected void btnGo_Click(object sender, EventArgs e)
    {
        Response.Redirect("Payment.aspx");
    }
}