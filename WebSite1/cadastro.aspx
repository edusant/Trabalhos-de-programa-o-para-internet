<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cadastro.aspx.cs" Inherits="cadastro" %>

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
            <br />
            <h3>Fazer cadastro</h3>
            <br />
            
            <asp:Label ID="Label5" runat="server" Text="Label">email</asp:Label>
                       <asp:TextBox ID="email" runat="server" Class="form form-control"></asp:TextBox>
               <asp:Label ID="Label2" runat="server" Text="Label">Senha:</asp:Label>
        <asp:TextBox ID="senha" runat="server" Class="form form-control" Type="password"></asp:TextBox>
               <asp:Label ID="Label3" runat="server" Text="Label">Nome</asp:Label>
        <asp:TextBox ID="nomao" runat="server" Class="form form-control"></asp:TextBox>
               <asp:Label ID="Label4" runat="server" Text="Label">Sobrenome</asp:Label>
        <asp:TextBox ID="sobren" runat="server" Class="form form-control"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Fazer cadastro" Class="btn btn-info" OnClick="Button1_Click" />
        <br />
   
        <br />
        <asp:Label ID="Label6" runat="server" Text=" "></asp:Label>
            	
            <asp:GridView ID="gdvDados" runat="server" AutoGenerateColumns="true" Width="100%"/>

        </div>
            </div>


    
      
        
        
    </form>
    
    
    
    
    
    
</body>
</html>
