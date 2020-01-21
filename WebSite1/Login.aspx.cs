using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Logon_Click(object sender, EventArgs e)
    {
        MySqlConnection conexao = new MySqlConnection("server=localhost;User Id=root;database=newblog;");
        MySqlCommand comando = new MySqlCommand("SELECT * FROM usuarios where email = @emailtest and senha = @senha", conexao);


        try
        {

            string emailoff = email.Text;
            string senhaoff = senha.Text;
            conexao.Open();


            comando.Parameters.AddWithValue("@emailtest", emailoff);
            comando.Parameters.AddWithValue("@senha", senhaoff);

            MySqlDataReader rd = comando.ExecuteReader();
            if (rd.Read())
            {
                Session["idUsuario"] = rd["id"].ToString();
                Response.Redirect("pdlogin.aspx");
            }
            else
            {

            }
            //Label6.Text = "<h2 style='color: red'>O boatão foi clicado, agora vamos para para o ADO .Net</h2>";
        }
        finally
        {
            conexao.Close();
        }
    }
}