using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MathiasOgRune
{
    public partial class Homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //test if user is loggedin, is there a session named "Username"?

            if(Session["Username"] == null)
            {
                Response.Redirect("Default.aspx");
                
            }

            string userName = (string)Session["Username"];


        }
    }
}