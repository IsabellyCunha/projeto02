<%-- 
    Document   : add
    Created on : 16/05/2020, 00:24:46
    Author     : Felipe Borreli
--%>

<%@page import="Classes.Db"%>
<%@page import="Classes.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String error = null;
    request.setCharacterEncoding("UTF-8");
    if(request.getParameter("add") != null){
        String nome = request.getParameter("nome");
        String cpf = request.getParameter("cpf");
        String rg = request.getParameter("rg");
        String email = request.getParameter("email");
        String telefone = request.getParameter("telefone");
        String endereco = request.getParameter("endereco");
        
        System.out.println(nome);
        System.out.println(endereco);
        
        if(nome.isEmpty()) error = "Nome não pode ser nulo";
        else if(cpf.isEmpty()) error = "CPF não pode ser nulo";
        else if(rg.isEmpty()) error = "RG não pode ser nulo";
        else if(endereco.isEmpty()) error = "Endereço não pode ser nulo";
        else {
            Customer customer = new Customer();
            customer.setAttributes(nome, 
                                  email, 
                                  endereco, 
                                  cpf, 
                                  rg, 
                                  telefone);
            Db.getCustomers().add(customer);
            response.sendRedirect("list.jsp");
        }
    }else if(request.getParameter("goback") != null){
            response.sendRedirect("list.jsp");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Clientes - WebApp</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jsfp/header.jspf" %>
        <h1>Cadastrar Clientes</h1>
        <br/>
        <%if(error != null){%>
        <div style="color:red;"><%=error%></div>
        <%}%>
        <br/>
        <form method="POST">
            <label>Nome:</label><br/>
            <input type="text" name="nome"/><br/>
            <label>CPF:</label><br/>
            <input type="text" name="cpf"/><br/>
            <label>Registro Geral:</label><br/>
            <input type="text" name="rg"/><br/>
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
