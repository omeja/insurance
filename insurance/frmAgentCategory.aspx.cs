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
    public partial class frmAgentCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                //
                string type = this.TextBox1.Text;
                string name = this.TextBox2.Text;
                string det = this.TextBox3.Text;

                //  

                string constring = System.Configuration.ConfigurationManager.ConnectionStrings["insuconn"].ConnectionString;
                SqlConnection con = new SqlConnection(constring);

                SqlCommand command = new SqlCommand("spaddAgentCateg", con);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@categcode", SqlDbType.VarChar).Value = type.ToUpper();
                command.Parameters.Add("@categname", SqlDbType.VarChar).Value = name.ToUpper();
                command.Parameters.Add("@categdet", SqlDbType.VarChar).Value = det.ToUpper();


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