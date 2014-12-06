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
    public partial class frmCompanyType : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {



            try
            {

                //
                string code = this.TextBox1.Text;
                string name = this.TextBox2.Text;
                string desc = this.TextBox3.Text;

                //  

                string constring = System.Configuration.ConfigurationManager.ConnectionStrings["insuconn"].ConnectionString;
                SqlConnection con = new SqlConnection(constring);

                SqlCommand command = new SqlCommand("spaddCompanyType", con);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@typecode", SqlDbType.VarChar).Value = code.ToUpper();
                command.Parameters.Add("@typeName", SqlDbType.VarChar).Value = name.ToUpper();
                command.Parameters.Add("@Description", SqlDbType.VarChar).Value = desc.ToUpper();


                con.Open();
                int rows = command.ExecuteNonQuery();
                con.Close();

                // clear fields

                this.TextBox1.Text = "";
                this.TextBox2.Text = "";
                this.TextBox3.Text = "";

                //
                if (rows >= 1)
                {
                    Response.Write("<script>alert('Record Saved Succesfully');</script>");

                }





            }
            catch (Exception ex)
            {
                throw;
            }
        }
    }
}