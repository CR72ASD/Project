using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignUp : System.Web.UI.Page
{
    ShipeEntities db = new ShipeEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        var y = from st in db.Customer where st.cust_Name == txtuserName.Text select st;
        if (y.Any())
        {
            Response.Write("<script>alert('Enter Anthor Name');</script>");
            btngo.Visible = false;
        }
        else
        {
            btngo.Visible = true;
        }
    }

    protected void btngo_Click(object sender, EventArgs e)
    {
        Customer C = new Customer
        {
            cust_Name = txtuserName.Text,
            cust_Email = txtEmail.Text,
            cust_Password = txtPass.Text,
            cust_ConfarmPassword = txtRePass.Text,
            cust_Phone = txtPhone.Text,
            cust_Address = txtAddress.Text,
            cust_Quistion = txtQuistion.Text,
            cust_Answer = txtAnswer.Text
        };
        db.Customer.Add(C);
        db.SaveChanges();
        Response.Write("<Script>alert('Data Has Been Added Succecful');</Script>");
    }
}