using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class postartext : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void pbt_Click(object sender, EventArgs e)
    {
        MySqlConnection conexao = new MySqlConnection("server=localhost;User Id=root;database=newblog;");
        MySqlCommand comando = new MySqlCommand("INSERT INTO texto (id, titulo, texto, idusua) VALUES (NULL, @titulo, @texto, @idautor);", conexao);


        try
        {

            string titulobd = titulo.Text; 
            //string senhaoff = senha.Text;
            conexao.Open();


            comando.Parameters.AddWithValue("@titulo", titulobd);
            comando.Parameters.AddWithValue("@texto", texto.Text);
            comando.Parameters.AddWithValue("@idautor", Session["idUsuario"]);

            comando.ExecuteReader();
            Label4.Text = "Tá indo";
            
            
            //Label6.Text = "<h2 style='color: red'>O boatão foi clicado, agora vamos para para o ADO .Net</h2>";
        }
        finally
        {
            conexao.Close();
        }
    }
}