<%-- 
    Document   : set
    Created on : 18/05/2020, 02:26:52
    Author     : Isabelly
--%>

<%@page import="Classes.Db"%>
<%@page import="Classes.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String error = null;
    Customer customer = null;
    int index = -1;
    try{
        index = Integer.parseInt(request.getParameter("index"));
        customer = Db.getCustomers().get(index);
        if(request.getParameter("set") != null){
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String endereco = request.getParameter("endereco");
        String cpf = request.getParameter("cpf");
        String rg = request.getParameter("rg");
        String telefone = request.getParameter("telefone");
        
        if(nome.isEmpty()) error = "Nome não pode ser nulo";
        else if(email.isEmpty()) error = "Email não pode ser nulo";
        else if(endereco.isEmpty()) error = "Endereço não pode ser nulo";
        else if(cpf.isEmpty()) error = "CPF não pode ser nulo";
        else if(rg.isEmpty()) error = "RG não pode ser nulo";
        else if(telefone.isEmpty()) error = "Telefone não pode ser nulo";
        else{      
            Customer setCustomers = new Customer();
            setCustomers.setAttributes(nome, email, endereco, cpf, rg, telefone);
            Db.getCustomers().set(index,setCustomers);
            response.sendRedirect("list.jsp");
            
        }
    }
        
    }catch(Exception e){
        error = "Índice inválido";
    }
    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Clientes - Clientes </title>
    </head>
    <body>
        <%@include file="../WEB-INF/jsfp/header.jspf" %>
        <h2><a href="list.jsp">Clientes</a></h2>
        <h3>Alterar Cliente</h3>
        <%if(error != null){ %>
        <div style="color:red"><%=error%></div>
        <%}%>
        <form method="post">
            Nome:<br/>
            <input type="text" name="nome" value="<%=customer.getNome()%>"/><br/>
            Email:<br/>
            <input type="email" name="email" value="<%=customer.getEmail()%>"/><br/>
            Endereço:<br/>
            <input type="text" name="endereco" value="<%=customer.getEndereco()%>"/><br/>  
            CPF:<br/>
            <input type="text" name="cpf" value="<%=customer.getCpf()%>"/><br/>
            RG:<br/>
            <input type="text" name="rg" value="<%=customer.getRg()%>"/><br/>
            Telefone:<br/>
            <input type="tel" name="telefone" value="<%=customer.getTelefone()%>"/><br/>
            <br/><input type="submit" name="set" value="Alterar"/>
            
        </form>
    </body>
</html>

