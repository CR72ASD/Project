using CrystalDecisions.CrystalReports.Engine;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WUCCategoryReport : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnName_Click(object sender, EventArgs e)
    {
        SqlConnection Con;
        String x = null;
        x = @"Data Source=.;Initial Catalog=Shipe;Integrated Security=True;Application Name=EntityFramework";
        Con = new SqlConnection(x);
        Con.Open();

        string SQL = null;
        SQL = "SELECT * FROM Category where c_Name='" + txtsearch.Text + "'";
        SqlDataAdapter y = new SqlDataAdapter(SQL, Con);
        Con.Close();
        DataSet DS = new DataSet();
        y.Fill(DS, "Category");

        ReportDocument n = new ReportDocument();
        n.Load(Server.MapPath("CategoryReport.rpt"));

        n.SetDataSource(DS);
        CrystalReportViewer1.ReportSource = n;
    }

    protected void btnAll_Click(object sender, EventArgs e)
    {
        SqlConnection Con;
        String x = null;
        x = @"Data Source=.;Initial Catalog=Shipe;Integrated Security=True;Application Name=EntityFramework";
        Con = new SqlConnection(x);
        Con.Open();

        string SQL = null;
        SQL = "SELECT * FROM Category";
        SqlDataAdapter y = new SqlDataAdapter(SQL, Con);
        Con.Close();
        DataSet DS = new DataSet();
        y.Fill(DS, "Category");

        ReportDocument n = new ReportDocument();
        n.Load(Server.MapPath("CategoryReport.rpt"));

        n.SetDataSource(DS);
        CrystalReportViewer1.ReportSource = n;
    }
}