<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="css/estilo.css"/>
    <script src="js/jquery.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>
    <script src="css/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
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
                <h3>Login</h3>
                <p>
                    
                    <asp:Label ID="Label1" runat="server" Text="Label">Digite o seu E-mail</asp:Label>
                    <asp:TextBox ID="email" runat="server" Class="form form-control"></asp:TextBox>
                    
                    <asp:Label ID="Label2" runat="server" Text="Label">Digite a sua senha</asp:Label>
                    <asp:TextBox ID="senha" runat="server" Type="password" Class="form form-control"></asp:TextBox>

                    <br />
                    <asp:Button ID="Logon" runat="server" Text="Login" class="btn btn-primary" OnClick="Logon_Click"/> 
                    
                </p>            
            </div>
        </div>
        
    </form>
    
</body>
</html>
