
package lojaonline.controle;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lojaonline.dao.ClienteDAO;
import lojaonline.modelo.Cliente;
 import lojaonline.controle.ClienteControle;

/**
 *
 * @author Home
 */
@WebServlet(name = "ClienteControle", urlPatterns = {"/clienteControle"})
public class ClienteControle extends HttpServlet {
ClienteDAO clienteDAO = new clienteDAO();
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        try{
         String accao = request.getParameter("accao");
         if(accao.equalsIgnoreCase("guardar")){
            Cliente cliente = new Cliente();
            cliente.setNomeCliente(request.getParameter("input-nome"));
            cliente.setSobrenomeCliente(request.getParameter("input-sobrenome"));
            clienteDAO.guardar(cliente);

RequestDispatcher rd = request.getRequestDispatcher("cliente_guardar.jsp");
rd.forward(request, response);

  } else if (accao.equalsIgnoreCase("eliinar")){
Cliente cliente = new Cliente();
cliente.setIdCliente(Integer.parseInt(request.getParameter("input_id_cliente")));
clienteDAO.editar(cliente);

RequestDispatcher rd = request.getRequestDispatcher("cliente_lista.jsp");
rd.forward(request, response);

}else if (accao.equalsIgnoreCase("editar")) {
Cliente cliente = new Cliente();
cliente.setIdCliente(Integer.parseInt(request.getParameter("input_id_cliente")));
cliente.setNomeCliente(request.getParameter("input-nome"));
cliente.setSobrenomeCliente(request.getParameter("input_sobrenome"));
clienteDAO.eliminar(cliente);

RequestDispatcher rd = request.getRequestDispatcher("cliente_lista.jsp");
rd.forward(request, response);

} else if (accao.equalsIgnoreCase("buscar_por_id")){
Cliente cliente = new Cliente();
cliente.setIdCliente(Integer.parseInt(request.getParameter("input_id_cliente")));
cliente = clienteDAO.buscarPorId(cliente);

request.setAttribute("cliente", cliente);

RequestDispatcher rd = request.getRequestDispatcher("cliente_editar.jsp");
rd.forward(request, response);

} else if(accao.equalsIgnoreCase("listar")){
response.sendRedirect("cliente_lista.jsp");
}


}catch ( ServletException | IOException | NumberFormatException ex ) {
System.err.println("Erro na interacao"+ex.getMessage());
}
}
   

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
