<%-- 
    Document   : index
    Created on : 05/12/2016, 23:08:20
    Author     : Home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
          
        
        <title>Eco Estore - Estamos de Volta</title>
        <link href="css/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
        <link href="css/estilos.css" rel="stylesheet"/>
        <script src="css/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
        <script src="js/jquery-1.4.1.min.js"></script>
    </head>
    <body>
       <div class="container">
           <div class="jumbotron">
               <h2> Eco Estore - Produtos Exotéricos</h2>
               <p>Brasil Nossa Terra nossa Mãe</p>
               </div>
           <div class="row row-centered">
               <div class="col-sm-4 col-centered">
                   <h3> Gestão de Produtos</h3>
                   <p><a href="produto_guardar.jsp">Novo Produto</a></p>
                   <p><a href="produto_lista.jsp">Lista de Produtos</a></p>
               </div>
                <div class="col-sm-4 col-centered">
                   <h3> Gestão de Clientes</h3>
                   <p><a href="cliente_guardar.jsp">Novo Cliente</a></p>
                    <p><a href="cliente_lista.jsp">Lista de Clientes</a></p>
           </div>
               <div class="col-sm-4 col-centered">
                   <h3> Gestão de Vendas</h3>
                   <p><a href="#">Nova Venda</a></p>
                    <p><a href="#">Lista das Vendas</a></p>
      
    </body>
</html>
