using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;

namespace MathiasOgRune
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            nousernameentered.Visible = false;
            nopasswordentered.Visible = false;
            invalidLogin.Visible = false;
        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            int auth = 0;
            if(TextBoxUsername.Text.Length < 1)
            {
                nousernameentered.Visible = true;
                auth = 1;
            }
            if(TextBoxPassword.Text.Length < 1)
            {
                nopasswordentered.Visible = true;
                auth = 1;
            }

            if(auth == 0)
            {
                if (IsLoginTrue())
                {
                    Response.Redirect(Page.ResolveClientUrl("Homepage.aspx"));
                }
                else
                {
                    invalidLogin.Visible = true;
                }
            }
        }

        private bool IsLoginTrue()
        {
            var connectionString = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
            SqlParameter param;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select * from Player where username=@username and password=@password", conn);
                cmd.CommandType = CommandType.Text;

                param = new SqlParameter("@password", SqlDbType.NVarChar);
                using (SHA256 sha256Hash = SHA256.Create())
                {
                    param.Value = GetHash(sha256Hash, TextBoxPassword.Text);
                }
                cmd.Parameters.Add(param);
                object geh = param.Value;
                param = new SqlParameter("@userName", SqlDbType.NVarChar);
                param.Value = TextBoxUsername.Text;

                cmd.Parameters.Add(param);

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    return true;
                }

                conn.Close();

                return false;
            }
        }
        private static string GetHash(HashAlgorithm hashAlgorithm, string input)
        {
            byte[] data = hashAlgorithm.ComputeHash(Encoding.UTF8.GetBytes(input));

            var sBuilder = new StringBuilder();

            for (int i = 0; i < data.Length; i++)
            {
                sBuilder.Append(data[i].ToString("x2"));
            }
            return sBuilder.ToString();
        }
    }
}