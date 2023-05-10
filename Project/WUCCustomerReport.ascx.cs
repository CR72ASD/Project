using CrystalDecisions.CrystalReports.Engine;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WUCCustomerReport : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnEmail_Click(object sender, EventArgs e)
    {
        SqlConnection Con;
        String x = null;
        x = @"Data Source =.; Initial Catalog = Shipe; Integrated Security = True; Application Name = EntityFramework";
        Con = new SqlConnection(x);
        Con.Open();

        string SQL = null;
        SQL = "SELECT * FROM Customer where cust_Email='" + txtsearch.Text + "'";
        SqlDataAdapter y = new SqlDataAdapter(SQL, Con);
        Con.Close();
        DataSet DS = new DataSet();
        y.Fill(DS, "Customer");

        ReportDocument n = new ReportDocument();
        n.Load(Server.MapPath("CustomerReport.rpt"));

        n.SetDataSource(DS);
        CrystalReportViewer1.ReportSource = n;
    }

    protected void btnPhone_Click(object sender, EventArgs e)
    {
        SqlConnection Con;
        String x = null;
        x = @"Data Source =.; Initial Catalog = Shipe; Integrated Security = True; Application Name = EntityFramework";
        Con = new SqlConnection(x);
        Con.Open();

        string SQL = null;
        SQL = "SELECT * FROM Customer where cust_Phone='" + txtsearch.Text + "'";
        SqlDataAdapter y = new SqlDataAdapter(SQL, Con);
        Con.Close();
        DataSet DS = new DataSet();
        y.Fill(DS, "Customer");

        ReportDocument n = new ReportDocument();
        n.Load(Server.MapPath("CustomerReport.rpt"));

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
        SQL = "SELECT * FROM Customer where cust_Address='" + txtsearch.Text + "'";
        SqlDataAdapter y = new SqlDataAdapter(SQL, Con);
        Con.Close();
        DataSet DS = new DataSet();
        y.Fill(DS, "Customer");

        ReportDocument n = new ReportDocument();
        n.Load(Server.MapPath("CustomerReport.rpt"));

        n.SetDataSource(DS);
        CrystalReportViewer1.ReportSource = n;
    }

    protected void btnName_Click(object sender, EventArgs e)
    {
        SqlConnection Con;
        String x = null;
        x = @"Data Source =.; Initial Catalog = Shipe; Integrated Security = True; Application Name = EntityFramework";
        Con = new SqlConnection(x);
        Con.Open();

        string SQL = null;
        SQL = "SELECT * FROM Customer where cust_Name='" + txtsearch.Text + "'";
        SqlDataAdapter y = new SqlDataAdapter(SQL, Con);
        Con.Close();
        DataSet DS = new DataSet();
        y.Fill(DS, "Customer");

        ReportDocument n = new ReportDocument();
        n.Load(Server.MapPath("CustomerReport.rpt"));

        n.SetDataSource(DS);
        CrystalReportViewer1.ReportSource = n;
    }
}