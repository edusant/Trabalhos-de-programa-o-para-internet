<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pdlogin.aspx.cs" Inherits="pdlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="css/estilo.css"/>
    <script src="js/jquery.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <script src="css/bootstrap.min.js"></script>
    <title>Franquias - Inicio</title>
    <style>
        #Text1{
            margin-top: 100px;
            
        }
        #mudanca{
            margin-top: 100px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       
           <nav class="navbar navbar-expand-sm bg-dark navbar-dark sticky-top">
  <a class="navbar-brand" href="ufa.aspx">Logo</a>
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="postartext.aspx">Publicar texto</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="buscandoescritor.aspx">Buscar escritor</a>
        </li>
  </ul>
</nav>
        <div class="container">           
            <asp:Label ID="retornotextos" runat="server" Text="Label"></asp:Label>
        </div>
    
    
    
    
</form>    
    
</body>
</html>


