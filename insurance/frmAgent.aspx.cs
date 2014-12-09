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
    public partial class frmAgent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox5.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                //
                string code = this.TextBox1.Text;
                string name = this.TextBox6.Text;
                string cat = this.DropDownList2.Text;
                string com = this.DropDownList3.Text;
                string dt = this.TextBox5.Text;
                

                //  

                string constring = System.Configuration.ConfigurationManager.ConnectionStrings["insuconn"].ConnectionString;
                SqlConnection con = new SqlConnection(constring);

                SqlCommand command = new SqlCommand("spaddAgent", con);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@agentcode", SqlDbType.VarChar).Value = code.ToUpper();
                command.Parameters.Add("@agentname", SqlDbType.VarChar).Value = name.ToUpper();
                command.Parameters.Add("@agentcateg", SqlDbType.VarChar).Value =cat.ToUpper();
                command.Parameters.Add("@companycode", SqlDbType.VarChar).Value = com.ToUpper();
                command.Parameters.Add("@joindate", SqlDbType.DateTime).Value = dt;
                

                con.Open();
                int rows = command.ExecuteNonQuery();
                con.Close();

                // clear fields

                this.TextBox1.Text = "";
                this.TextBox6.Text = "";
                this.TextBox5.Text = "";
                this.DropDownList2.Text = "";
                this.DropDownList3.Text = "";
                this.TextBox6.Text = "";


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

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}