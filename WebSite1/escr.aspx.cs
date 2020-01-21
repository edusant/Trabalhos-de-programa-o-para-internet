using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class escr : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MySqlConnection conexao = new MySqlConnection("server=localhost;User Id=root;database=newblog;");
        MySqlCommand comando = new MySqlCommand("INSERT INTO `seguidores` (id, idSeguidor, Idseguido) VALUES (NULL, @iddequesegue, @Idseguido);", conexao);
        string iden =  Request.QueryString["iden"];
        try
        {
            conexao.Open();
            comando.Parameters.AddWithValue("@iddequesegue", Session["idUsuario"]);
            comando.Parameters.AddWithValue("@Idseguido", iden);
            comando.ExecuteNonQuery();
        }
        finally
        {
            conexao.Close();
        }
        //Label6.Text = "<h2 style='color: red'>O boatão foi clicado, agora vamos para para o ADO .Net</h2>";
    }
        
}
