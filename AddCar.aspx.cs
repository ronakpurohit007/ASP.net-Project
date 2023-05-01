using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class rqcar : System.Web.UI.Page
{
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = @"data Source=DESKTOP-CK2F1G9\SQLEXPRESS01;Initial Catalog=car;Integrated Security=True";

        con.Open();
        SqlCommand cmd;
        SqlDataAdapter ad = new SqlDataAdapter();
        String sql = "INSERT INTO add(carname,companyname,carditails,carnumber,price) Values('" + txtCarName.Text + "','" + txtCompanyName.Text + "','" + txtditails.Text + "','" + txtCarNumber.Text + "','" + txtPrice.Text + "')";

        cmd = new SqlCommand(sql, con);

        ad.InsertCommand = new SqlCommand(sql, con);
        int a = ad.InsertCommand.ExecuteNonQuery();

       


        con.Close();

        if (a == 1)
        {
            lblerror.Text = "Save";
            lblerror.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
            lblerror.Text = "Invalid";
            lblerror.ForeColor = System.Drawing.Color.Red;
        }
    }
    protected void txtCarNumber_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnupload_Click(object sender, EventArgs e)
    {

    }
     public void clearfn() 
    {
        txtCarName.Text="";
        txtCompanyName.Text="";
        txtditails.Text="";
        txtCarNumber.Text="";
        txtPrice.Text="";
       
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile) 
        {
            try
            {

                string fname = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.SaveAs(Server.MapPath("Images/") + fname);

                SqlConnection con = new SqlConnection();
                con.ConnectionString = @"data Source=DESKTOP-CK2F1G9\SQLEXPRESS01;Initial Catalog=car;Integrated Security=True";

                con.Open();
                SqlCommand cmd;
                SqlDataAdapter ad = new SqlDataAdapter();
                String sql = "INSERT INTO addcars(ad_carname,ad_companyname,ad_carditails,ad_carnumber,ad_price,ad_image) Values('" + txtCarName.Text + "','" + txtCompanyName.Text + "','" + txtditails.Text + "','" + txtCarNumber.Text + "','" + txtPrice.Text + "','" + FileUpload1.FileName + "')";

                cmd = new SqlCommand(sql, con);
                SqlDataAdapter da = new SqlDataAdapter();



                cmd = new SqlCommand(sql, con);
                da.InsertCommand = new SqlCommand(sql, con);
                int t = cmd.ExecuteNonQuery();

                DataTable dt = new DataTable();
                con.Close();

                if (t > 1)
                {
                    lblerror.Text = "New Car Add";
                    clearfn();
                }

            }
            catch (Exception ex) 
            {
                lblerror.Text = "file not uploaded. the following error occured:" + ex.Message;
            }
        }
    }
   
}