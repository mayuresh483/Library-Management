using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class adminbookinventory : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
            getauthorpublishervalue();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //add
            if (checkbookexist())
            {
                Response.Write("<script>alert('Book Exist')</script>");
            }
            else
            {
                addnewbook();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //update
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            //delete
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //go
        }
        //add book
        void addnewbook()
        {
            try
            {
                //to store multiple genre
                string genre = "";
                if (ListBox1.GetSelectedIndices().Length> 0)
                {
                    foreach (int i in ListBox1.GetSelectedIndices())
                    {
                        genre = genre + ListBox1.Items[i] + ",";
                    }
                    genre = genre.Remove(genre.Length - 1);
                }
              
                //file upload
                string filepath = "";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                if (filename!=null)
                {
                    FileUpload1.SaveAs(Server.MapPath("books/" + filename));
                    filepath = "~/books/" + filename;
                }
                

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed) 
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO book_master_table (book_id, book_name,genre,author_name,publisher_name,publish_date," +
                    "language,edition,book_cost,no_of_pages,book_description,actual_stock,current_stock,book_img_link) " +
                    "values(@book_id, @book_name,@genre,@author_name,@publisher_name,@publish_date," +
                    "@language,@edition,@book_cost,@no_of_pages,@book_description,@actual_stock,@current_stock,@book_img_link)", con);
                    cmd.Parameters.AddWithValue("@book_id",TextBox6.Text.Trim());
                    cmd.Parameters.AddWithValue("@genre",genre);
                    cmd.Parameters.AddWithValue("@book_name",TextBox12.Text.Trim());
                    cmd.Parameters.AddWithValue("@author_name",DropDownList3.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@publisher_name",DropDownList2.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@publish_date",TextBox13.Text.Trim());
                    cmd.Parameters.AddWithValue("@language",DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@edition",TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@book_cost",TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@no_of_pages",TextBox8.Text.Trim());
                    cmd.Parameters.AddWithValue("@book_description",TextBox5.Text.Trim());
                    cmd.Parameters.AddWithValue("@actual_stock",TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@current_stock",TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@book_img_link", filepath);

                    cmd.ExecuteNonQuery();
                    con.Close();
                Response.Write("<script>alert('Book Added Successfully')</script>");
                GridView1.DataBind();
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
        //get author and publisher value

        void getauthorpublishervalue()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State==ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT author_name from author_master_table", con);
                //disconnected 
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                DropDownList3.DataSource = dt;
                DropDownList3.DataValueField = "author_name";
                DropDownList3.DataBind();
                cmd = new SqlCommand("SELECT publisher_name from publisher_master_table", con);
                //disconnected 
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                DropDownList2.DataSource = dt;
                DropDownList2.DataValueField = "publisher_name";
                DropDownList2.DataBind();





            }
            catch (Exception ex)
            {

            }

        }

        //check if book exists
        bool checkbookexist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM book_master_table WHERE book_id ='"+TextBox6.Text.Trim()+"' OR book_name='"+TextBox12.Text.Trim()+"'", con);
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
            catch(Exception ex)
            {
                return false;
            }

        }
    }
}