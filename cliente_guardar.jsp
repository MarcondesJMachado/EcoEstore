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
          
        
        <title>Eco Estore - Novo Cliente</title>
        <link href="css/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
        <link href="css/estilos.css" rel="stylesheet"/>
        <script src="css/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
        <script src="js/jquery-1.4.1.min.js"></script>
    </head>
    <body>
       <div class="container">
<form role="form" class="form-horizontal" action="clienteControle?accao=guardar" method="POST">
    <h2 class="titulo_formulario">Novo Cliente</h2>

    <div class="form-group">
<label class="col-xs-3 control-label">Codigo:</label>
<div class="col-xs-4">
<input type="text" class="form-control" name="input_codigo" placeholder="Codigo:"/>
</div>
</div>

<div class="form-group">
<label class="col-xs-3 control-label">Nome:</label>
<div class="col-xs-4">
<input type="text" class="form-control" name="input_nome" placeholder="Nome:"/>
</div>
</div>

<div class="form-group">
<label class="col-xs-3 control-label">Sobrenome:</label>
<div class="col-xs-4">
<input type="text" class="form-control" name="input_sobrenome" placeholder="Sobrenome:"/>
</div>
</div>
    
<button type="submit" class="btn btn-primary botao">Guardar</button>



</form>
           <a href="index.jsp">Home</a>

</div>
    </body>
</html>
