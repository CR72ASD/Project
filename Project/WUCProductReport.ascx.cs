using CrystalDecisions.CrystalReports.Engine;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WUCProductReport : System.Web.UI.UserControl
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

        string SQL = null;
        SQL = "SELECT * FROM Product where p_Name='" + txtsearch.Text + "'";
        SqlDataAdapter y = new SqlDataAdapter(SQL, Con);
        Con.Close();
        DataSet DS = new DataSet();
        y.Fill(DS, "Product");

        ReportDocument n = new ReportDocument();
        n.Load(Server.MapPath("ProductReport.rpt"));

        n.SetDataSource(DS);
        CrystalReportViewer1.ReportSource = n;
    }

    protected void btnPrice_Click(object sender, EventArgs e)
    {
        SqlConnection Con;
        String x = null;
        x = @"Data Source =.; Initial Catalog = Shipe; Integrated Security = True; Application Name = EntityFramework";
        Con = new SqlConnection(x);
        Con.Open();

        string SQL = null;
        SQL = "SELECT * FROM Product where p_Price='" + txtsearch.Text + "'";
        SqlDataAdapter y = new SqlDataAdapter(SQL, Con);
        Con.Close();
        DataSet DS = new DataSet();
        y.Fill(DS, "Product");

        ReportDocument n = new ReportDocument();
        n.Load(Server.MapPath("ProductReport.rpt"));

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
        SQL = "SELECT * FROM Product where p_Quantity='" + txtsearch.Text + "'";
        SqlDataAdapter y = new SqlDataAdapter(SQL, Con);
        Con.Close();
        DataSet DS = new DataSet();
        y.Fill(DS, "Product");

        ReportDocument n = new ReportDocument();
        n.Load(Server.MapPath("ProductReport.rpt"));

        n.SetDataSource(DS);
        CrystalReportViewer1.ReportSource = n;
    }

    protected void btnAll_Click(object sender, EventArgs e)
    {
        SqlConnection Con;
        String x = null;
        x = @"Data Source =.; Initial Catalog = Shipe; Integrated Security = True; Application Name = EntityFramework";
        Con = new SqlConnection(x);
        Con.Open();

        string SQL = null;
        SQL = "SELECT * FROM Product";
        SqlDataAdapter y = new SqlDataAdapter(SQL, Con);
        Con.Close();
        DataSet DS = new DataSet();
        y.Fill(DS, "Product");

        ReportDocument n = new ReportDocument();
        n.Load(Server.MapPath("ProductReport.rpt"));

        n.SetDataSource(DS);
        CrystalReportViewer1.ReportSource = n;
    }
}
