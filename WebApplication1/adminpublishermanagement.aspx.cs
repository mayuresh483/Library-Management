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
    public partial class adminpublishermanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //go
            getauthorbyid();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //add
            if (checkpublisherid())
            {
                Response.Write("<script>alert('Publisher Exists')</script>");
            }
            else
            {
                addnewpublisher();
                cleartext();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //update
            if (checkpublisherid())
            {
                updatepublisher();
                cleartext();

            }
            else
            {
                Response.Write("<script>alert('Publisher Does not Exist')</script>");

            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            //delete
            if (checkpublisherid())
            {
                deletepublisher();
                cleartext();
                Response.Write("<script>alert('Publisher Deleted Successfully')</script>");
                GridView1.DataBind();

            }
            else
            {
                Response.Write("<script>alert('Publisher Not found')</script>");
            }

        }


        //get author by id

        void getauthorbyid()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT publisher_name FROM publisher_master_table WHERE publisher_id='" + TextBox3.Text.Trim() + "'", con);
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
            catch (Exception ex)
            {

            }

        }

        //check publisher id is present
        bool checkpublisherid()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM publisher_master_table WHERE publisher_id='" + TextBox3.Text.Trim() + "' ", con);
                //Database connectivity using disconnect method
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
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
                Response.Write("<script>alert('" + ex.Message + "')</script>");
                return false;
            }
        }

        //add publisher
        void addnewpublisher()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO publisher_master_table(publisher_id,publisher_name) VALUES(@publisher_id,@publisher_name)", con);
                cmd.Parameters.AddWithValue("@publisher_id", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@publisher_name", TextBox4.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Publisher Added Successfully')</script>");
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");

            }
        }

        //update publisher

        void updatepublisher()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE publisher_master_table SET publisher_name=@publisher_name WHERE publisher_id='" + TextBox3.Text.Trim() + "'", con);
                cmd.Parameters.AddWithValue("@publisher_name", TextBox4.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Updated Successfully')</script>");
                GridView1.DataBind();

            }
            catch (Exception ex)
            {

            }
        }
        //delete

        void deletepublisher()
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("DELETE FROM publisher_master_table WHERE publisher_id='" + TextBox3.Text.Trim() + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();

        }

        void cleartext()
        {
            TextBox3.Text = "";
            TextBox4.Text = "";
        }
    }
}