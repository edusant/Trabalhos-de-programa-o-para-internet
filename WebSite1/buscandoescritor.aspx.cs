using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class buscandoescritor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        MySqlConnection conexao = new MySqlConnection("server=localhost;User Id=root;database=newblog;");
        MySqlCommand comando = new MySqlCommand("SELECT * FROM usuarios where email = @emailtest ", conexao);
        try
        {

            string emailoff = au.Text;

            conexao.Open();


            comando.Parameters.AddWithValue("@emailtest", emailoff);


            MySqlDataReader rd = comando.ExecuteReader();
            if (rd.Read())
            {
                retornoautores.Text = "";


                retornoautores.Text = retornoautores.Text +
                    "<br><br><br><span href='#' class='list-group-item  ' " +
                    "<h6 class='list-group-item-heading '><span class=''>" + rd["descricao"] + "</span> <small> </small></h6>" +
                    "<p class='list-group-item-text text-dark'> " + rd["nome"] + " </p>" +
                  "<a href='escr.aspx?iden="+rd["id"]+"' class='btn btn-info'>Seguir</a>"+
                  "</span>";
                //usuarios.Text = usuarios.Text + "<p>" + rds["nome"] + "</p>";

            }
            else
            {

            }

        }
        finally
        {
            conexao.Close();
        }
    }
}
