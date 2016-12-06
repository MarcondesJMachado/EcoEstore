<%-- 
    Document   : produto_guardar
    Created on : 06/12/2016, 00:05:23
    Author     : Home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
          <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
          
        
        <title>Eco Estore - Novo Produto</title>
        <link href="css/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
        <link href="css/estilos.css" rel="stylesheet"/>
        <script src="css/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
        <script src="js/jquery-1.4.1.min.js"></script>
    </head>
    <body>
       <div class="container">
<form role="form" class="form-horizontal" action="clienteControle?accao=editar" method="POST">
    <h2 class="titulo_formulario">Editar Dados do Produto</h2>

    <div class="form-group">
<label class="col-xs-3 control-label">Id:</label>
<div class="col-xs-4">
<input type="text" class="form-control" name="input_id_produto" placeholder="Id:"/>
</div>
</div>

<div class="form-group">
<label class="col-xs-3 control-label">Nome:</label>
<div class="col-xs-4">
<input type="text" class="form-control" name="input_nome" placeholder="Nome:"/>
</div>
</div>

<div class="form-group">
<label class="col-xs-3 control-label">Preco:</label>
<div class="col-xs-4">
<input type="text" class="form-control" name="input_preco" placeholder="Preco:"/>
</div>
</div>
    
<button type="submit" class="btn btn-primary botao">Atualizar</button>



</form>
           <a href="index.jsp">Home</a>

</div>
    </body>
</html>
