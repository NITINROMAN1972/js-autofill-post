using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Portal_HomePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            PreFillDetails();
        }
    }

    protected void PreFillDetails()
    {
        //DOB.Text = DateTime.Today.AddDays(5).ToString("yyyy-MM-dd");
        DOB.Text = "1942-10-26";
    }
}