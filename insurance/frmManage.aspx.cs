using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace insurance
{
    public partial class frmManage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

             

                string constring = System.Configuration.ConfigurationManager.ConnectionStrings["insuconn"].ConnectionString;
                SqlConnection con = new SqlConnection(constring);

                SqlCommand command = new SqlCommand("spmanage", con);
                command.CommandType = CommandType.StoredProcedure;
                


                con.Open();
                int rows = command.ExecuteNonQuery();
               

                // gridview
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
		        adapter.Fill(ds);
                con.Close();
		       // GridView1.DataSource = ds.Tables[0];
		        GridView1.DataBind();






            }
            catch (Exception ex)
            {
                throw;
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}