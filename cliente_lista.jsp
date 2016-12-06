<%-- 
    Document   : cliente_listagem
    Created on : 06/12/2016, 00:42:06
    Author     : Home
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="lojaonline.modelo.Cliente"%>
<%@page import="lojaonline.dao.ClienteDAO"%>

<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
          
        
        <title>Eco Estore - Listagem dos Clientes</title>
        <link href="css/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
        <link href="css/estilos.css" rel="stylesheet"/>
        <script src="css/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
        <script src="js/jquery-1.4.1.min.js"></script>
    </head>
    <body>
        <div class="container">
            <h2>Lista dos Clientes</h2>
<%ClienteDAO clienteDAO = new ClienteDAO();
List<Cliente> clientes = clienteDAO.listaTodos();%>
<table class="table table-hover">
<thead>
<tr>
<th>Código</th>
<th>Nome</th>
<th>Sobrenome</th>

</tr>
</thead>

<tbody>
    <%for(Cliente cliente:clientes){%>
<tr>

<td><%=cliente.getIdCliente()%></td>

<td><%=cliente.getNomeCliente()%></td>

<td><%=cliente.getSobrenomeCliente()%></td>

<td><a href="clienteControle?accao=buscar_por_id&input_id_cliente=<%=cliente.getIdCliente()%>">Editar</a>
<td><a href="clienteControle?accao=eliminar&input_id_cliente=<%=cliente.getIdCliente()%>">Eliminar</a>
</td>



</tr>
<%}%>
</tbody>
</table>


</table>

<a href="index.jsp">Home</a>
</div>

        
    </body>
</html>
