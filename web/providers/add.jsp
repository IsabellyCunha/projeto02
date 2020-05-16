<%-- 
    Document   : add
    Created on : 16/05/2020, 00:23:55
    Author     : Felipe Borreli
--%>

<%@page import="Classes.Db"%>
<%@page import="Classes.Provider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String error = null;
    request.setCharacterEncoding("UTF-8");
    if(request.getParameter("add") != null){
        String nome = request.getParameter("nome");
        String razao_social = request.getParameter("razao_social");
        String cnpj = request.getParameter("cnpj");
        String email = request.getParameter("email");
        String telefone = request.getParameter("telefone");
        String endereco = request.getParameter("endereco");
        
        if(nome.isEmpty()) error = "Nome não pode ser nulo";
        else if(razao_social.isEmpty()) error = "Razão social não pode ser nulo";
        else if(cnpj.isEmpty()) error = "CNPJ não pode ser nulo";
        else if(endereco.isEmpty()) error = "Endereço não pode ser nulo";
        else {
            Provider provider = new Provider();
            provider.setAttributes(nome,
                                   razao_social,
                                   email, 
                                   endereco, 
                                   cnpj,
                                   telefone);
            Db.getProviders().add(provider);
            response.sendRedirect("list.jsp");
        }
    }else if(request.getParameter("goback") != null){
            response.sendRedirect("list.jsp");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Fornecedores - WebApp</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jsfp/header.jspf" %>
        <h1>Cadastrar Fornecedores</h1>
        <br/>
        <%if(error != null){%>
        <div style="color:red;"><%=error%></div>
        <%}%>
        <br/>
        <form method="POST">
            <label>Nome:</label><br/>
            <input type="text" name="nome"/><br/>
            <label>Razão Social:</label><br/>
            <input type="text" name="razao_social"/><br/>
            <label>CNPJ:</label><br/>
            <input type="text" name="cnpj"/><br/>
            <label>E-mail:</label><br/>
            <input type="email" name="email"/><br/>
            <label>Telefone:</label><br/>
            <input type="text" name="telefone"/><br/>
            <label>Endereço:</label><br/>
            <input type="text" name="endereco"/><br/>
            <br/>
            <input type="submit" name="add" value="Cadastrar"/>
            <input type="submit" name="goback" value="Voltar" />
        </form>
    </body>
</html>
