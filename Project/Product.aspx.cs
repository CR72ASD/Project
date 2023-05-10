using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Product : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["c_ID"] != null)
            SqlDataSource.SelectCommand = "select * from [Product] where c_ID =" + Request.QueryString["c_ID"].ToString();
        else
            SqlDataSource.SelectCommand = "select * from [Product]";
    }
}