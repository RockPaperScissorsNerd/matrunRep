using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MathiasOgRune
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSignUp_Click(object sender, EventArgs e)
        {
            int auth = 0;
            if (TextBoxSignUpUsername.Text.Length < 1)
            {
                signupnousernameentered.Visible = false;
                auth = 1;
            }
            if (TextBoxSignUpPassword.Text.Length < 1)
            {
                signupnopasswordentered.Visible = true;
                auth = 1;
            }
            if (TextBoxSignUpPasswordRepeat.Text.Length < 1)
            {
                signupnorepeatentered.Visible = true;
                auth = 1;
            }
            if (TextBoxSignUpPasswordRepeat.Text != TextBoxSignUpPassword.Text)
            {
                
                auth = 1;
            }

            if (auth == 0)
            {
                Register();
            }
        }
        private void Register()
        {
            var connectionString = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                //code
                string ins = "Insert into [Player](username, password) values(@name,@pass)";
                //Her blir Navn og Passord lagt til i databasen.

                string check = "select count(*) from [Player] where username = @user";
                using (SqlCommand comm = new SqlCommand(check, conn))
                {
                    using (SqlCommand com = new SqlCommand(ins, conn))
                    {
                        using (SHA256 sha256Hash = SHA256.Create())
                        {
                            //param.Value = GetHash(sha256Hash, TextBoxPassword.Text);
                            com.Parameters.AddWithValue("@pass", GetHash(sha256Hash, TextBoxSignUpPassword.Text));
                        }
                        com.Parameters.AddWithValue("@name", TextBoxSignUpUsername.Text);
                        comm.Parameters.AddWithValue("@user", TextBoxSignUpUsername.Text);
                        conn.Open();
                        int temp = Convert.ToInt32(comm.ExecuteScalar().ToString());
                        //Her gjør den om dataen som sjekker navnet om til int.

                        if (temp == 0) //Her sjekker den om verdien er 0 for å vite om den skal legge til navn og passord til databasen.
                        {
                            com.ExecuteNonQuery();
                            conn.Close();
                            Response.Redirect(Page.ResolveClientUrl("Default.aspx"));
                        }
                        else
                        {
                            
                            conn.Close();
                        }
                    }
                }
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