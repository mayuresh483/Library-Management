using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {
                    LinkButton4.Visible = true;     //userlogin
                    LinkButton6.Visible = true;    //adminlogin
                    LinkButton2.Visible = true;   //signup

                    LinkButton5.Visible = false;   //message
                    LinkButton3.Visible = false;   //logout
                    navbarDropdown.Visible = false; //navdropdown
                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton4.Visible = false;     //userlogin
                    LinkButton6.Visible = false;    //adminlogin
                    LinkButton2.Visible = false;   //signup

                    LinkButton5.Visible = true;   //message
                    LinkButton3.Visible = true;   //logout
                    LinkButton5.Text = "Hello " + Session["username"].ToString();
                    navbarDropdown.Visible = false; //navdropdown
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton4.Visible = false;     //userlogin
                    LinkButton6.Visible = false;    //adminlogin
                    LinkButton2.Visible = false;   //signup

                    LinkButton5.Visible = true;   //message
                    LinkButton3.Visible = true;   //logout
                    LinkButton5.Text = "Hello Admin";

                    navbarDropdown.Visible = true; //navdropdown
                }
            }
            catch(Exception ex)
            {

            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminauthormanagement.aspx");

        }
        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookinventory.aspx");

        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookissue.aspx");

        }
        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminmembermangement.aspx");
        }
        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminpublishermanagement.aspx");

        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["userid"] = "";
            Session["username"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton4.Visible = true;     //userlogin
            LinkButton6.Visible = true;    //adminlogin
            LinkButton2.Visible = true;   //signup

            LinkButton5.Visible = false;   //message
            LinkButton3.Visible = false;   //logout
            navbarDropdown.Visible = false; //navdropdown
            Response.Redirect("home.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewbooks.aspx");
        }
    }
}