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
    public partial class adminmembermangement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            //go
            getmemeberbyid();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            //verified
            updatememberstatus("active");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            //pending
            updatememberstatus("pending");

        }
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            //not approved
            updatememberstatus("deactivate");

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkmemberexist())
            {
                deletememberbyid();
            }
            else
            {
                Response.Write("<script>alert('Member ID doesn't exist')</script>");
            }
        }

        //get member by id

        void getmemeberbyid()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State==ConnectionState.Closed)
                {
                    con.Open();
                }
               
                SqlCommand cmd = new SqlCommand("SELECT * FROM member_master_table WHERE member_id='"+TextBox4.Text.Trim()+"'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox3.Text = dr.GetValue(0).ToString();
                        TextBox1.Text = dr.GetValue(3).ToString();
                        TextBox2.Text = dr.GetValue(2).ToString();
                        TextBox8.Text = dr.GetValue(8).ToString();
                        TextBox9.Text = dr.GetValue(5).ToString();
                        TextBox10.Text = dr.GetValue(6).ToString();
                        TextBox11.Text = dr.GetValue(7).ToString();
                        TextBox5.Text = dr.GetValue(4).ToString();
                        TextBox7.Text = dr.GetValue(11).ToString();
                    }
                }
                else
                {
                    TextBox3.Text = "";
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox8.Text = "";
                    TextBox9.Text = "";
                    TextBox10.Text = "";
                    TextBox11.Text = "";
                    TextBox5.Text = "";
                    TextBox7.Text = "";
                }

            }
            catch (Exception ex)
            {

            }
        }

        void updatememberstatus(string status)
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("UPDATE member_master_table SET account_status='"+status+"' WHERE member_id='"+TextBox4.Text.Trim()+"'", con);
            TextBox7.Text = status;
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
        }

        void deletememberbyid()
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("DELETE FROM member_master_table WHERE member_id='"+TextBox4.Text.Trim()+"'",con);
            cmd.ExecuteNonQuery();
            con.Close();
            clearform();
            GridView1.DataBind();
        }

        void clearform()
        {
            TextBox3.Text = "";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox5.Text = "";
            TextBox7.Text = "";
            TextBox4.Text = "";
        }

        bool checkmemberexist()
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT * FROM member_master_table WHERE member_id='"+TextBox4.Text.Trim()+"'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if(dt.Rows.Count >= 1)
            {
                return true;
            }
            else
            {
                return false;
            }
            
        }


    }
}