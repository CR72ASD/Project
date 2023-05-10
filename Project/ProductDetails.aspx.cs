using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProductDetails : System.Web.UI.Page
{
    ShipeEntities db = new ShipeEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string x = Request.QueryString["c_Id"].ToString();
            var y = from st in db.Product where st.p_ID.ToString() == x select st;
            foreach (var q in y)
            {
                lblProductId.Text = x;
                lblProductId.Text = q.p_ID.ToString();
                lblProductName.Text = q.p_Name;
                lblPrice.Text = q.p_Price.ToString();
                lblQuintaty.Text = q.p_Quantity.ToString();
                imgProduct.ImageUrl = "~//imgproduct//" + x + ".jpg";
            }
        }
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        
    }

    protected void btnshop_Click(object sender, ImageClickEventArgs e)
    {
        if (Convert.ToInt32(lblQuintaty.Text) < Convert.ToInt32(txtuser.Text))
        {
            Response.Write("<script>alert('Out Of Rang Of Product')</script>");
        }
        else
        {
            DataTable tbl;
            if (Session["Cart"] == null)
            {
                tbl = new DataTable();

                tbl.Columns.Add("ProName");
                tbl.Columns.Add("Price");
                tbl.Columns.Add("Quantity");
                tbl.Columns.Add("SubTotal");
                tbl.Columns.Add("Catno");
                tbl.Columns.Add("prono");
                //DataColumn col = tbl.Columns[6];
                //tbl.Constraints.Add("PK", col, true);
                DataRow tb = tbl.NewRow();
                tb[0] = lblProductName.Text;
                tb[1] = lblPrice.Text;
                tb[2] = txtuser.Text;
                tb[3] = Convert.ToInt16(txtuser.Text) * Convert.ToDouble(lblPrice.Text);
                tb[4] = lblCategory.Text;
                tb[5] = lblProductId.Text;


                tbl.Rows.Add(tb);

                Session["Cart"] = tbl;
                int z = Convert.ToInt32(lblQuintaty.Text) - Convert.ToInt32(txtuser.Text);
                var y = db.Product.Find(Convert.ToInt32(lblProductId.Text));
                y.p_Quantity = z;
                db.SaveChanges();
                Response.Redirect("Category.aspx");

            }
            else
                tbl = (DataTable)Session["Cart"];

            DataRow row = tbl.NewRow();
            row[0] = lblProductName.Text;
            row[1] = lblPrice.Text;
            row[2] = txtuser.Text;
            row[3] = Convert.ToInt16(txtuser.Text) * Convert.ToDouble(lblPrice.Text);
            row[4] = lblCategory.Text;
            row[5] = lblProductId.Text;

            tbl.Rows.Add(row);

            Session["Cart"] = tbl;

            int m = Convert.ToInt32(lblQuintaty.Text) - Convert.ToInt32(txtuser.Text);
            var pr = db.Product.Find(Convert.ToInt32(lblProductId.Text));
            pr.p_Quantity = m;
            db.SaveChanges();
            Response.Redirect("Category.aspx");

        }
    }
}