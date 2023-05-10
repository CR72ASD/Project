using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    ShipeEntities db = new ShipeEntities();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        var x = from st in db.Customer where st.cust_Name == txtUser.Text && st.cust_Password == txtPass.Text select st;
        if (x.Any())
        {
            HttpCookie c = new HttpCookie("login");
            c.Values.Add("User", txtUser.Text);
            c.Values.Add("Password", txtPass.Text);
            Response.Cookies.Add(c);

            if (chkremember.Checked)
            {
                c.Expires = DateTime.Now.AddYears(2);
                Response.Cookies.Add(c);

                if (txtUser.Text.ToLower() == "admin")
                {
                    Response.Redirect("~/AdminHome.aspx");
                }
                else
                {
                    Response.Redirect("~/Home.aspx");
                }
            }
            else
            {
                if (txtUser.Text.ToLower() == "admin")
                {
                    Response.Redirect("~/AdminHome.aspx");
                }
                else
                {
                    Response.Redirect("~/Home.aspx");
                }
            }

        }
        else
        {
            Response.Write("<script>alert('The Name or Password is Not Found');</script>");
        }
    }
}