<%-- 
    Document   : cliente_listagem
    Created on : 06/12/2016, 00:42:06
    Author     : Home
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="lojaonline.modelo.Produto"%>
<%@page import="lojaonline.dao.ProdutoDAO"%>

<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
          
        
        <title>Eco Estore - Listagem dos Produtos</title>
        <link href="css/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
        <link href="css/estilos.css" rel="stylesheet"/>
        <script src="css/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
        <script src="js/jquery-1.4.1.min.js"></script>
    </head>
    <body>
         <div class="container">
     
            <h2>Lista dos Produtos</h2>
<%ProdutoDAO produtoDAO = new ProdutoDAO();
List<Produto> produto = produtoDAO.listaTodos();%>
<table class="table table-hover">
<thead>
<tr>
    <th>Id</th>
<th>Código</th>
<th>Nome</th>
<th>preco</th>

</tr>
</thead>

<tbody>
    <%for(Produto produto:produtos){%>
<tr>

<td><%=produto.getIdProduto()%></td>

<td><%=produto.getCodigoProduto()%></td>

<td><%=produto.getNomeProduto()%></td>
<td><%=produto.getPrecoProduto()%></td>

<td>Editar</td>
<td>Eliminar</td>



</tr>
<%}%>
</tbody>
</table>


</table>
</div>
        
    </body>
</html>
