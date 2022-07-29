using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ButtonSignUp_Click(object sender, EventArgs e)
    {
        if (isformvalid())
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["NewProductsDB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into tblUsers(UserName,Password,Name,Email) Values('" + textUserName.Text + "','" + textPass.Text + "','" + textName.Text + "','" + textEmail.Text + "')", con);
                cmd.ExecuteNonQuery();

                Response.Write("<script> alert('Registration Successfully done');  </script>");
                clr();
                con.Close();
                lblMsg.Text = "Registration Successfully done";
                lblMsg.ForeColor = System.Drawing.Color.Green;
            }
            Response.Redirect("~/SignIn.aspx");
        }
        else
        {
            Response.Write("<script> alert('Registration Failed');  </script>");
            lblMsg.Text = "All fields are Mandatory";
            lblMsg.ForeColor = System.Drawing.Color.Red;
        }
    }
   
    private bool isformvalid()
    {
        if (textUserName.Text == "")
        {
            Response.Write("<script> alert('Username not valid'); </script>");
            textUserName.Focus();
            return false;
        }
        else if (textPass.Text == "")
        {
            Response.Write("<script> alert('Password not valid'); </script>");
            textPass.Focus();
            return false;
        }
        else if (textConPass.Text != textPass.Text)
        {
            Response.Write("<script> alert('Confirm Password not valid'); </script>");
            textConPass.Focus();
            return false;
        }
        else if (textName.Text == "")
        {
            Response.Write("<script> alert('Email not valid'); </script>");
            textName.Focus();
            return false;
        }
        else if (textEmail.Text == "")
        {
            Response.Write("<script> alert('Name not valid'); </script>");
            textEmail.Focus();
            return false;
        }
        return true;
    }
  private void clr()
    {
        textUserName.Text = string.Empty;
        textPass.Text = string.Empty;
        textConPass.Text = string.Empty;
        textName.Text = string.Empty;
        textEmail.Text = string.Empty;

    }


}