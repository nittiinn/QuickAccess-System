using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
        conn.Open();

        string query = "SELECT COUNT(1) FROM tbl_Users WHERE Email=@Email AND Password=@Password";
        SqlCommand cmd = new SqlCommand(query, conn);
        cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
        cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());

        int count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 1)
        {
     
            Response.Redirect("index.aspx");
        }
        else
        {
            lblMessage.Text = "Invalid Email or Password.";
        }

        conn.Close();
    }
}
