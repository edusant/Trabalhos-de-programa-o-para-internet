using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class cadastro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        MySqlConnection conexao = new MySqlConnection("server=localhost;User Id=root;database=newblog;");
        MySqlCommand comando = new MySqlCommand("SELECT * FROM produto", conexao);
        DataTable tabela = new DataTable();

        try
        {
            
            string emailoff = email.Text;
            string senhaoff = senha.Text;
            string nome = nomao.Text;
            string sobrenome = sobren.Text;
            
            conexao.Open();

            comando.CommandText = "SELECT * FROM usuarios where email = @emailtest";
            comando.Parameters.AddWithValue("@emailtest", emailoff);
            MySqlDataReader rd = comando.ExecuteReader();
            if (rd.Read()) 
            {
                Label6.Text = "Email já cadastrado";
            }
            else
            {
                conexao.Close();
                conexao.Open();
                comando.CommandText = "INSERT INTO usuarios ( nome, email, sobrenome, senha) VALUES ( @nome, @email, @sobrenome, @senha)";
                comando.Parameters.AddWithValue("@nome", nome);
                comando.Parameters.AddWithValue("@email", emailoff);
                comando.Parameters.AddWithValue("@sobrenome", sobrenome);
                comando.Parameters.AddWithValue("@senha", senhaoff);

                comando.ExecuteNonQuery();
                //Label6.Text = nome;
                conexao.Close();
            }
            //Label6.Text = "<h2 style='color: red'>O boatão foi clicado, agora vamos para para o ADO .Net</h2>";
        }
        finally
        {
            conexao.Close();
        }
        
    }
}