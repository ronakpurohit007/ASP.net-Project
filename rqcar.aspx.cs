using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;  

public partial class rqcar : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        
       
       if (!this.IsPostBack)  
          {

              SqlConnection con = new SqlConnection();
              con.ConnectionString = @"data Source=DESKTOP-CK2F1G9\SQLEXPRESS01;Initial Catalog=car;Integrated Security=True";
               
              {
                  using (SqlCommand cmd = new SqlCommand("select * from request1"))  
                  {  
                      using (SqlDataAdapter da = new SqlDataAdapter())  
                      {  
                          cmd.Connection = con;  
                          da.SelectCommand = cmd;  
                          using (DataTable dt = new DataTable())  
                          {  
                                
                          }  
                      }  
                  }  
              }  
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
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
            GridView1.DataSource = ds;
            GridView1.DataBind();
            int columncount = GridView1.Rows[0].Cells.Count;
            GridView1.Rows[0].Cells.Clear();
            GridView1.Rows[0].Cells.Add(new TableCell());
            GridView1.Rows[0].Cells[0].ColumnSpan = columncount;
            GridView1.Rows[0].Cells[0].Text = "No Records Found";
        }
    }  


    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = @"data Source=DESKTOP-CK2F1G9\SQLEXPRESS01;Initial Catalog=car;Integrated Security=True";
        SqlCommand cmd = new SqlCommand();
        con.Open();
        SqlDataAdapter ad = new SqlDataAdapter();


    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = @"data Source=DESKTOP-CK2F1G9\SQLEXPRESS01;Initial Catalog=car;Integrated Security=True";
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        Label lbldeleteid = (Label)row.FindControl("lblID");
        con.Open();
        SqlCommand cmd = new SqlCommand("delete FROM carrequest1 where rq_id='" + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()) + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        gvbind();  
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        HiddenField1.Value = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text;
        Response.Write(""+HiddenField1.Value);
        SqlConnection con = new SqlConnection();
        con.ConnectionString = @"data Source=DESKTOP-CK2F1G9\SQLEXPRESS01;Initial Catalog=car;Integrated Security=True";
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from carrequest1 where rq_id='"+HiddenField1.Value+"'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DataTable dt=ds.Tables[0];
        con.Close();

        txtname.Text = dt.Rows[0]["rq_name"].ToString();
        txtEmail.Text = dt.Rows[0]["rq_email"].ToString();

        txtrq_Sday.Text = dt.Rows[0]["rq_Sday"].ToString();
        txtrq_SMonth.Text = dt.Rows[0]["rq_SMonth"].ToString();
        txtrq_Syear.Text = dt.Rows[0]["rq_Syear"].ToString();

        txtrq_Eday.Text = dt.Rows[0]["rq_Eday"].ToString();
        txtrq_EMonth.Text = dt.Rows[0]["rq_EMonth"].ToString();
        txtrq_EYear.Text = dt.Rows[0]["rq_EYear"].ToString();

        txtrq_carform.Text = dt.Rows[0]["rq_carform"].ToString();
        txtrq_carto.Text = dt.Rows[0]["rq_carto"].ToString();

        txtrq_cartype.Text = dt.Rows[0]["rq_cartype"].ToString();
        txtcarname.Text = dt.Rows[0]["rq_carname"].ToString();
        txtrequirements.Text = dt.Rows[0]["rq_rq"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = @"data Source=DESKTOP-CK2F1G9\SQLEXPRESS01;Initial Catalog=car;Integrated Security=True";
        con.Open();
        SqlCommand cmd = new SqlCommand("UPDATE carrequest1 SET rq_carrequ='"+drpreq.Text+"' where rq_id='"+HiddenField1.Value+"'", con);
        cmd.CommandType = CommandType.Text;
        cmd.ExecuteNonQuery();
    }
}