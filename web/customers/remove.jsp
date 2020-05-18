<%-- 
    Document   : remove
    Created on : 18/05/2020, 11:55:10
    Author     : Isabelly
--%>

<%@page import="Classes.Db"%>
<%@page import="Classes.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String error = null;
    Customer customers = null;
    int index = -1;
    try {
        index = Integer.parseInt(request.getParameter("index"));
        customers = Db.getCustomers().get(index);
                if (request.getParameter("remove")!= null) {
                    Db.getCustomers().remove(index);
                    response.sendRedirect("list.jsp");
                }

    } catch (Exception e) {
        error = "Índice inválido";
    }

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remover Cliente - Cliente WebApp</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jsfp/header.jspf" %>
        <h2><a href="list.jsp">Clientes</a></h2>
        <h3>Remover Cliente?</h3>
        <%if (error != null) {%>
        <div style="color:red"><%=error%></div>
        <%}%>
        <form method="post">
            Nome:<br/>
            <b><%=customers.getNome()%></b><br/>
            Email:<br/>
            <b><%=customers.getEmail()%></b><br/>
            Endereço:<br/>
            <b><%=customers.getEndereco()%></b><br/>
            CPF:<br/>
            <b><%=customers.getCpf()%></b><br/>
            RG:<br/>
            <b><%=customers.getRg()%></b><br/>
            Telefone:<br/>
            <b><%=customers.getTelefone()%></b><br/>
            <br/>
            <input type="submit" name="remove" value="Excluir"/>

        </form>
    </body>
</html>
