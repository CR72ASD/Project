using CrystalDecisions.CrystalReports.Engine;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WUCOrderDetails : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnQu_Click(object sender, EventArgs e)
    {
        SqlConnection Con;
        String x = null;

        x = @"Data Source =.; Initial Catalog = Shipe; Integrated Security = True; Application Name = EntityFramework";
        Con = new SqlConnection(x);
        Con.Open();

        string SQL = null;
        SQL = "SELECT * FROM OrderReport where Quantity='" + txtsearch.Text + "'";
        SqlDataAdapter y = new SqlDataAdapter(SQL, Con);
        Con.Close();
        DataSet DS = new DataSet();
        y.Fill(DS, "OrderReport");

        ReportDocument n = new ReportDocument();
        n.Load(Server.MapPath("OrderReport.rpt"));

        n.SetDataSource(DS);
        CrystalReportViewer1.ReportSource = n;
    }

    protected void btnId_Click(object sender, EventArgs e)
    {
        SqlConnection Con;
        String x = null;

        x = @"Data Source =.; Initial Catalog = Shipe; Integrated Security = True; Application Name = EntityFramework";
        Con = new SqlConnection(x);
        Con.Open();

        String SQL = null;
        SQL = "SELECT * FROM OrderDetails where Id='" + txtsearch.Text + "'";
        SqlDataAdapter y = new SqlDataAdapter(SQL, Con);
        Con.Close();
        DataSet DS = new DataSet();
        y.Fill(DS, "OrderDetails");

        ReportDocument n = new ReportDocument();
        n.Load(Server.MapPath("OrderDetailsReport.rpt"));

        n.SetDataSource(DS);
        CrystalReportViewer1.ReportSource = n;
    }

    protected void btnGetAll_Click(object sender, EventArgs e)
    {
        SqlConnection Con;
        String x = null;

        x = @"Data Source =.; Initial Catalog = Shipe; Integrated Security = True; Application Name = EntityFramework";
        Con = new SqlConnection(x);
        Con.Open();

        string SQL = null;
        SQL = "SELECT * FROM OrderDetails";
        SqlDataAdapter y = new SqlDataAdapter(SQL, Con);
        Con.Close();
        DataSet DS = new DataSet();
        y.Fill(DS, "OrderDetails");

        ReportDocument n = new ReportDocument();
        n.Load(Server.MapPath("OrderDetailsReport.rpt"));

        n.SetDataSource(DS);
        CrystalReportViewer1.ReportSource = n;
    }
}