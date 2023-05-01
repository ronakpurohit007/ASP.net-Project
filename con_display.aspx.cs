using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class con_display : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gvbind();
        }

    }

    protected void gvbind()
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = @"data Source=DESKTOP-CK2F1G9\SQLEXPRESS01;Initial Catalog=car;Integrated Security=True";
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from carrequest1", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
        
    }

   protected void btndelete_Click(object sender, EventArgs e)
   {
      
   }
}