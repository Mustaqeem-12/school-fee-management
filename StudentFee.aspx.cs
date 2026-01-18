using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Claims;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace School_Project
{
    public partial class StudentFee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Register = TextBox1.Text;
            string Name = TextBox2.Text;
            string Class = DropDownList1.Text;
            string Fee = TextBox3.Text;
            string Payment = DropDownList2.Text;

            string constr = "data source=BOOK-EC3IUCKRIS\\MYSQLSERVER;initial catalog=school;integrated security=true;trustservercertificate=true";
            SqlConnection con = new SqlConnection(constr);
            con.Open();

            string query = $"insert into payment values({Register},'{Name}','{Class}',{Fee},'{Payment}')";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string constr = "data source=BOOK-EC3IUCKRIS\\MYSQLSERVER;initial catalog=school;integrated security=true;trustservercertificate=true";
            SqlConnection con = new SqlConnection(constr);
            con.Open();

            string query = $"UPDATE payment SET Student_Name='{TextBox2.Text}', Class='{DropDownList1.SelectedItem.Text}', Fee_Amount={TextBox3.Text}, Payment_Method='{DropDownList2.SelectedItem.Text}' WHERE Roll_Number={TextBox1.Text}";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string constr = "data source=BOOK-EC3IUCKRIS\\MYSQLSERVER;initial catalog=school;integrated security=true;trustservercertificate=true";
            SqlConnection con = new SqlConnection(constr);
            con.Open();

            string query = $"DELETE from payment where Roll_Number={TextBox1.Text}";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}