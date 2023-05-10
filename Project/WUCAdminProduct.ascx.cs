using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WUCAdminProduct : System.Web.UI.UserControl
{
    ShipeEntities db = new ShipeEntities();

    public void x()
    {
        try
        {
            txtId.Text = (db.Product.OrderByDescending(b => b.p_ID).FirstOrDefault().p_ID + 1).ToString();
        }
        catch (System.NullReferenceException e)
        {
            Response.Write(e.Message);
            txtId.Text = "1";
        }

        gdvproduct.DataSource = db.Product.ToList();
        gdvproduct.DataBind();
        txtName.Text = "";
        txtPrice.Text = "";
        txtQu.Text = "";
        
        btnAdd.Visible = false;
        btnDelete.Visible = true;
        btnUpdate.Visible = true;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)

        {

            try
            {
                txtId.Text = (db.Product.OrderByDescending(b => b.p_ID).FirstOrDefault().p_ID + 1).ToString();
            }
            catch (System.NullReferenceException ex)
            {
                Response.Write(ex.Message);
                txtId.Text = "1";
            }
        }
        btnDelete.Visible = false;
        btnUpdate.Visible = false;
        btnAdd.Visible = true;
        gdvproduct.DataSource = db.Product.ToList();
        gdvproduct.DataBind();
    }

    protected void btnNew_Click(object sender, EventArgs e)
    {
        try
        {
            txtId.Text = (db.Product.OrderByDescending(b => b.p_ID).FirstOrDefault().p_ID + 1).ToString();
        }
        catch
        {

            txtId.Text = "1";
        }

        btnDelete.Visible = false;
        btnUpdate.Visible = false;
        btnAdd.Visible = true;
        gdvproduct.DataSource = db.Product.ToList();
        gdvproduct.DataBind();
        txtName.Text = "";
        txtPrice.Text = "";
        txtQu.Text = "";
        imgproduct.ImageUrl = "";
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        Product P = new Product()
        {
            p_ID = Convert.ToInt32(txtId.Text),
            p_Name = txtName.Text,
            p_Price = Convert.ToInt32(txtPrice.Text),
            p_Quantity = Convert.ToInt32(txtQu.Text),
            c_ID = Convert.ToInt32(dlc.SelectedValue)

        };
        db.Product.Add(P);
        db.SaveChanges();
        Response.Write("<script>window.alert('Product Has Been Added')</script>");
        if (fubimage.HasFile)
        {
            fubimage.SaveAs(Server.MapPath("imgproduct") + "\\" + txtId.Text.Trim() + ".jpg");
            imgproduct.ImageUrl = "~\\imgproduct\\" + txtId.Text.Trim() + ".jpg";
        }
        x();
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        var pr = db.Product.Find(Convert.ToInt32(gdvproduct.SelectedRow.Cells[1].Text.ToString()));
        pr.p_Name = txtName.Text;
        pr.p_Price = Convert.ToInt32(txtPrice.Text);
        pr.c_ID = Convert.ToInt32(dlc.SelectedValue);
        pr.p_Quantity = Convert.ToInt32(txtQu.Text);
        Response.Write("<script>window.alert('Data has Been Updated')</script>");
        db.SaveChanges();

        if (fubimage.HasFile)
        {
            fubimage.SaveAs(Server.MapPath("imgproduct") + "\\" + txtId.Text.Trim() + ".jpg");
            imgproduct.ImageUrl = "~\\imgproduct\\" + txtId.Text.Trim() + ".jpg";
        }
        x();
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        var y = db.Product.Find(Convert.ToInt32(gdvproduct.SelectedRow.Cells[1].Text.ToString()));
        db.Product.Remove(y);
        db.SaveChanges();
        Response.Write("<script>window.alert('Data has Been Deleted')</script>");
        x();
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        gdvproduct.DataSource = db.Product.Select(b => new { b.p_ID, b.p_Name, b.p_Price, b.p_Quantity, b.c_ID }).Where(x => x.p_Name.Contains(txtSearch.Text)).ToList();
        gdvproduct.DataBind();
    }

    protected void gdvproduct_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtId.Text = gdvproduct.SelectedRow.Cells[1].Text.ToString();
        txtName.Text = gdvproduct.SelectedRow.Cells[2].Text.ToString();
        txtPrice.Text = gdvproduct.SelectedRow.Cells[3].Text.ToString();
        txtQu.Text = gdvproduct.SelectedRow.Cells[4].Text.ToString();
        imgproduct.ImageUrl = "~\\imgproduct\\" + txtId.Text.Trim() + ".jpg";
        btnUpdate.Visible = true;
        btnDelete.Visible = true;
        btnAdd.Visible = false;
    }

    protected void gdvproduct_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gdvproduct.PageIndex = e.NewPageIndex;
        gdvproduct.DataSource = db.Product.ToList();
        gdvproduct.DataBind();
    }
}