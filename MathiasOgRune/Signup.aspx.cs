using System;
using System.Collections.Generic;
using System.Configuration;
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

            if (auth == 0)
            {
                //Register();
            }
        }
        private void Register()
        {
            var connectionString = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                //code
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