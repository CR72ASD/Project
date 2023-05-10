using CrystalDecisions.CrystalReports.Engine;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WUCAdminCategory : System.Web.UI.UserControl
{
    ShipeEntities db = new ShipeEntities();

    public void Clear()
    {
        txtName.Text = "";
        gdv.SelectedIndex = -1;
        try
        {
            txtId.Text = (db.Category.OrderByDescending(b => b.c_ID).FirstOrDefault().c_ID + 1).ToString();
        }
        catch
        {
            txtId.Text = "1";
        }

    }
    public void GDVLoad()
    {

        gdv.DataSource = db.Category.ToList();
        gdv.DataBind();

    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)

        {

            try
            {
                txtId.Text = (db.Category.OrderByDescending(b => b.c_ID).FirstOrDefault().c_ID + 1).ToString();
            }
            catch (System.NullReferenceException ex)
            {
                Response.Write(ex.Message);
                txtId.Text = "1";
            }
        }
        btnDelete.Visible = false;
        btnUpdate.Visible = false;
        GDVLoad();
    }



    protected void btnNew_Click(object sender, EventArgs e)
    {
        Clear();
        btnUpdate.Visible = false;
        btnDelete.Visible = false;
        btnAdd.Visible = true;
    }


    protected void btnAdd_Click(object sender, EventArgs e)
    {
        Category b = new Category()
        {
            c_ID = Convert.ToInt32(txtId.Text),
            c_Name = txtName.Text,

        };

        db.Category.Add(b);
        db.SaveChanges();
        if (fup.HasFile)
        {
            fup.SaveAs(Server.MapPath("imgcategory") + "\\" + txtId.Text.Trim() + ".jpg");
            img.ImageUrl = "~/imgcategory/" + txtId.Text.Trim() + ".jpg";
        }
        GDVLoad();
        Response.Write("<script>window.alert('Category Has Been Added')</script>");
        Clear();
    }

    protected void gdv_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtId.Text = gdv.SelectedRow.Cells[1].Text.ToString();
        txtName.Text = gdv.SelectedRow.Cells[2].Text.ToString();

        img.ImageUrl = "~/imgcategory/" + txtId.Text.Trim() + ".jpg";

        btnAdd.Visible = false;
        btnUpdate.Visible = true;
        btnDelete.Visible = true;
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
		Category c = new Category()
		{

            c_ID = Convert.ToInt32(txtId.Text),
            c_Name = txtName.Text,

        };
        var br = db.Category.Find(Convert.ToInt32(txtId.Text));
        br.c_Name = txtName.Text;

        db.SaveChanges();
        Response.Write("<script>window.alert('Data has Been Updated')</script>");

        btnUpdate.Visible = false;
        btnDelete.Visible = false;
        btnAdd.Visible = true;

        GDVLoad();
        Clear();
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        var br = db.Category.Find(Convert.ToInt32(txtId.Text));
        db.Category.Remove(br);
        db.SaveChanges();
        Response.Write("<script>window.alert('Data has Been Deleted')</script>");
        btnUpdate.Visible = false;
        btnDelete.Visible = false;
        btnAdd.Visible = true;

        Clear();
        GDVLoad();
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        gdv.DataSource = db.Category.Select(b => new { b.c_ID, b.c_Name }).Where(x => x.c_Name.Contains(txtSearch.Text)).ToList();
        gdv.DataBind();
    }

    protected void gdv_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gdv.PageIndex = e.NewPageIndex;
        GDVLoad();

    }
}