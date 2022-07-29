using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class SignIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            if (Request.Cookies["UNAME"] !=null && Request.Cookies["UPWD"] != null)
            {
                textUserName.Text = Request.Cookies["UNAME"].Value;
                textPass.Text = Request.Cookies["UPWD"].Value;
                CheckBox1.Checked = true;
            }
        }
    }


    protected void btnLogin_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["NewProductsDB"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from tblUsers where UserName=@username and Password=@pwd", con);
            cmd.Parameters.AddWithValue("@username", textUserName.Text);
            cmd.Parameters.AddWithValue("@pwd", textPass.Text);

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if(dt.Rows.Count !=0)
            {
                if(CheckBox1.Checked)
                {
                    Response.Cookies["UNAME"].Value = textUserName.Text;
                    Response.Cookies["UPWD"].Value = textPass.Text;

                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(5);
                    Response.Cookies["UPWD"].Expires = DateTime.Now.AddDays(5);
                }
                else
                {
                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["UPWD"].Expires = DateTime.Now.AddDays(-1);
                }
                Session["UserName"] = textUserName.Text; 
                Response.Redirect("~/UserHome.aspx");
            }
            else
            {
                lblError.Text = "Invalid UserName and Password";
            }

            //Response.Write("<script> alert('Login Successfully done');  </script>");
            clr();
            con.Close();
           //lblMsg.Text = "Registration Successfully done";
           // lblMsg.ForeColor = System.Drawing.Color.Green;
        }
    }

    private void clr()
    {
        textPass.Text = string.Empty;
        textUserName.Text = string.Empty;
        textUserName.Focus();
    }
}