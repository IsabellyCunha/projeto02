<%-- 
    Document   : remove
    Created on : 18/05/2020, 12:20:10
    Author     : Isabelly
--%>

<%@page import="Classes.Provider"%>
<%@page import="Classes.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String error = null;
    Provider providers = null;
    int index = -1;
    try {
        index = Integer.parseInt(request.getParameter("index"));
        providers = Db.getProviders().get(index);
                if (request.getParameter("remove")!= null) {
                    Db.getProviders().remove(index);
                    response.sendRedirect("list.jsp");
                }

    } catch (Exception e) {
        error = "Índice inválido";
    }

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remover Fornecedor - Fornecedor WebApp</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jsfp/header.jspf" %>
        <h2><a href="list.jsp">Fornecedor</a></h2>
        <h3>Remover Fornecedor?</h3>
        <%if (error != null) {%>
        <div style="color:red"><%=error%></div>
        <%}%>
        <form method="post">
            Nome:<br/>
            <b><%=providers.getNome()%></b><br/>
            Razão Social:<br/>
            <b><%=providers.getRazaoSocial()%></b><br/>
            Email:<br/>
            <b><%=providers.getEmail()%></b><br/>
            Endereço:<br/>
            <b><%=providers.getEndereco()%></b><br/>
            CNPJ:<br/>
            <b><%=providers.getCnpj()%></b><br/>            
            Telefone:<br/>
            <b><%=providers.getTelefone()%></b><br/>
            <br/>
            <input type="submit" name="remove" value="Excluir"/>

        </form>
    </body>
</html>

