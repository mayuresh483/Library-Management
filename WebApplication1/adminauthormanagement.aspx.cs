using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class adminauthormanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //go click
            getauthorbyid();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //insert
            if (checkauthorid())
            {
                Response.Write("<script>alert('Author Exists')</script>");
            }
            else
            {
                addnewauthor();
                cleartext();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //update

            if (checkauthorid())
            {
                updateauthor();
                cleartext();

            }
            else
            {
                Response.Write("<script>alert('Author Does not Exist')</script>");

            }

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            //delete
            if (checkauthorid())
            {
                deleteauthor();
                cleartext();
                Response.Write("<script>alert('Author Deleted Successfully')</script>");
                GridView1.DataBind();

            }
            else
            {
                Response.Write("<script>alert('Author Not found')</script>");
            }
        }

        //check userid is present or not
        bool checkauthorid()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State==ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM author_master_table WHERE author_id='"+TextBox3.Text.Trim()+"' ",con);
                //Database connectivity using disconnect method
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count>=1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('"+ex.Message+"')</script>");
                return false;
            }
        }
        //void add new author
        void addnewauthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO author_master_table(author_id,author_name) VALUES(@author_id,@author_name)", con);
                cmd.Parameters.AddWithValue("@author_id",TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@author_name",TextBox4.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Author Added Successfully')</script>");
                GridView1.DataBind();
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('"+ex.Message+"')</script>");

            }
        }

        //update author

        void updateauthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State==ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd =new SqlCommand("UPDATE author_master_table SET author_name=@author_name WHERE author_id='"+TextBox3.Text.Trim()+"'",con);
                cmd.Parameters.AddWithValue("@author_name",TextBox4.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Updated Successfully')</script>");
                GridView1.DataBind();

            }
            catch (Exception ex)
            {

            }
        }

        //delete author

        void deleteauthor()
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("DELETE FROM author_master_table WHERE author_id='"+TextBox3.Text.Trim()+"'", con);
            cmd.ExecuteNonQuery();
            con.Close();

        }
        //clear text after execution

        void cleartext()
        {
            TextBox3.Text ="";
            TextBox4.Text ="";
        }

        void getauthorbyid()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT author_name FROM author_master_table WHERE author_id='"+TextBox3.Text.Trim()+"'",con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox4.Text = dt.Rows[0][0].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Author Id')</script>");
                }
            }
            catch(Exception ex)
            {

            }

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}