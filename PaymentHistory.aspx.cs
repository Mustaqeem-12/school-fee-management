using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School_Project
{
    public partial class PaymentHistory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Tablepayment();

        }
        void Tablepayment()
        {
            string constr = "data source=BOOK-EC3IUCKRIS\\MYSQLSERVER;initial catalog=school;integrated security=true;trustservercertificate=true";
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            string query = "select * from Payment";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string constr = "data source=BOOK-EC3IUCKRIS\\MYSQLSERVER;initial catalog=school;integrated security=true;trustservercertificate=true";
            SqlConnection con = new SqlConnection(constr);
            con.Open();

            string query = $"select * from payment where Roll_Number = {TextBox1.Text}";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapter.Fill(ds);

            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();

            con.Close();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}
