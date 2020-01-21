<%@ Page Language="C#" AutoEventWireup="true" CodeFile="postartext.aspx.cs" Inherits="postartext" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="css/estilo.css"/>
    <script src="js/jquery.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <script src="css/bootstrap.min.js" ></script>
    <title>Organize - suas tarefas</title>
    <style>
        #ajuste{
            margin-top: 100px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-expand-sm bg-dark navbar-dark sticky-top">
  <a class="navbar-brand" href="ufa.aspx">Logo</a>
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="Login.aspx">Login</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="cadastro.aspx">Cadastro</a>
        </li>
  </ul>
</nav>
            <div id="ajuste" class="container">
               <div>
                   <h2><asp:Label ID="Label1" runat="server" Text="Publicar o Seu texto"></asp:Label></h2>

                   <asp:Label ID="Label2" runat="server" Text="Titulo do texto"></asp:Label>
                    <asp:TextBox ID="titulo" runat="server" class="form form-control" Width="100%"></asp:TextBox>
                   <br />
                    <asp:Label ID="Label3" runat="server" Text="conteudo do texto"></asp:Label>
                    <asp:TextBox ID="texto" runat="server" class="form form-control" Height="118px" Width="100%"></asp:TextBox>
                   <br />
                   <asp:Button ID="pbt" runat="server" class="btn btn-info" Text="Publicar texto" OnClick="pbt_Click" />
               </div>
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                            
            </div>
        </div>
        
    </form>
    
</body>
</html>
