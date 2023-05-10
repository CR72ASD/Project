using CrystalDecisions.CrystalReports.Engine;
using System;
using System.Activities.Expressions;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

public partial class WUCOrderReport : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnName_Click(object sender, EventArgs e)
    {
        SqlConnection Con;
        String x = null;

        x = @"Data Source =.; Initial Catalog = Shipe; Integrated Security = True; Application Name = EntityFramework";
        Con = new SqlConnection(x);
        Con.Open();

        String SQL = null;
        SQL = "SELECT * FROM Orders where UserName='" + txtsearch.Text + "'";
        SqlDataAdapter y = new SqlDataAdapter(SQL, Con);
        Con.Close();
        DataSet DS = new DataSet();
        y.Fill(DS, "Orders");

        ReportDocument n = new ReportDocument();
        n.Load(Server.MapPath("OrderReport.rpt"));

        n.SetDataSource(DS);
        CrystalReportViewer1.ReportSource = n;
    }

    protected void btnQu_Click(object sender, EventArgs e)
    {
        SqlConnection Con;
        String x = null;

        x = @"Data Source =.; Initial Catalog = Shipe; Integrated Security = True; Application Name = EntityFramework";
        Con = new SqlConnection(x);
        Con.Open();

        string SQL = null;
        SQL = "SELECT * FROM Orders where order_Quntaty='" + txtsearch.Text + "'";
        SqlDataAdapter y = new SqlDataAdapter(SQL, Con);
        Con.Close();
        DataSet DS = new DataSet();
        y.Fill(DS, "Orders");

        ReportDocument n = new ReportDocument();
        n.Load(Server.MapPath("OrderReport.rpt"));

        n.SetDataSource(DS);
        CrystalReportViewer1.ReportSource = n;
    }

    protected void btnAddress_Click(object sender, EventArgs e)
    {
        SqlConnection Con;
        String x = null;

        x = @"Data Source =.; Initial Catalog = Shipe; Integrated Security = True; Application Name = EntityFramework";
        Con = new SqlConnection(x);
        Con.Open();

        string SQL = null;
        SQL = "SELECT * FROM Orders where order_Address ='" + txtsearch.Text + "'";
        SqlDataAdapter y = new SqlDataAdapter(SQL, Con);
        Con.Close();
        DataSet DS = new DataSet();
        y.Fill(DS, "Orders");

        ReportDocument n = new ReportDocument();
        n.Load(Server.MapPath("OrderReport.rpt"));

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
        SQL = "SELECT * FROM Orders ";
        SqlDataAdapter y = new SqlDataAdapter(SQL, Con);
        Con.Close();
        DataSet DS = new DataSet();
        y.Fill(DS, "Orders");

        ReportDocument n = new ReportDocument();
        n.Load(Server.MapPath("OrderReport.rpt"));

        n.SetDataSource(DS);
        CrystalReportViewer1.ReportSource = n;
    }
}