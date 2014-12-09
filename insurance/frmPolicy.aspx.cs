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
    public partial class frmPolicy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {



                string constring = System.Configuration.ConfigurationManager.ConnectionStrings["insuconn"].ConnectionString;
                SqlConnection con = new SqlConnection(constring);

                SqlCommand command = new SqlCommand("spgetpolicytype", con);
                command.CommandType = CommandType.StoredProcedure;



                con.Open();


                SqlDataReader rdr = null;
                rdr = command.ExecuteReader();

                // Fill the list box with the values retrieved

                while (rdr.Read())
                {
                    DropDownList1.Items.Add(rdr[0].ToString());
                }

                con.Close();




            }
            catch (Exception ex)
            {
                throw;
            }
            //

            try
            {



                string constring = System.Configuration.ConfigurationManager.ConnectionStrings["insuconn"].ConnectionString;
                SqlConnection con = new SqlConnection(constring);

                SqlCommand command = new SqlCommand("spgetcomtypes", con);
                command.CommandType = CommandType.StoredProcedure;



                con.Open();


                SqlDataReader rdr = null;
                rdr = command.ExecuteReader();

                // Fill the list box with the values retrieved

                while (rdr.Read())
                {
                    DropDownList2.Items.Add(rdr[0].ToString());
                }

                con.Close();




            }
            catch (Exception ex)
            {
                throw;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                //
                string id = this.TextBox1.Text;
                string name = this.TextBox2.Text;
                string type = this.DropDownList1.Text;
                string comtype = this.DropDownList2.Text;
                string net = this.TextBox5.Text;
                string ldate = this.TextBox6.Text;
               
                //  

                string constring = System.Configuration.ConfigurationManager.ConnectionStrings["insuconn"].ConnectionString;
                SqlConnection con = new SqlConnection(constring);

                SqlCommand command = new SqlCommand("spaddpolicy", con);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@policycode", SqlDbType.VarChar).Value =id.ToUpper();
                command.Parameters.Add("@policyname", SqlDbType.VarChar).Value = name.ToUpper();
                command.Parameters.Add("@type", SqlDbType.VarChar).Value =type.ToUpper();
                command.Parameters.Add("@company", SqlDbType.VarChar).Value =comtype.ToUpper();
                command.Parameters.Add("@worth", SqlDbType.Money).Value = net;
                command.Parameters.Add("@launchdate", SqlDbType.DateTime).Value = ldate;
              

                con.Open();
                int rows = command.ExecuteNonQuery();
                con.Close();

                // clear fields

                this.TextBox1.Text = "";
                this.TextBox2.Text = "";
                this.TextBox5.Text = "";
                this.DropDownList1.Text = "";
                this.DropDownList2.Text = "";
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

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox6.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Calendar1.Visible = true;
        }
    }
}