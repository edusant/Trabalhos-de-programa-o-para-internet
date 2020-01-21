<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ufa.aspx.cs" Inherits="ufa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
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
        <div class="container">
            
    <h2 class="text-center" id="mudanca">Busque a franquia ideal para você</h2>
        <input id="Text1" type="text" / class="form form-control"/>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Buscar franquias" Class="btn btn-info" />
        </div>


    
        </div>
        
    </form>
    
    
    
    
    
    
</body>
</html>

