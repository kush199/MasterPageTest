using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Change : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {  
            //RadioButtonList1.SelectedValue = Session["master"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Session["master"] = RadioButtonList1.SelectedValue;
        ////lets reload to see the change
        //Response.Redirect("Change.aspx");
    }

    protected void Page_PreInit(object sender, EventArgs e)
    {
        //this.MasterPageFile = Session["master"].ToString();      
    }
    
}
