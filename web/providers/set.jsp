<%-- 
    Document   : set
    Created on : 18/05/2020, 03:24:13
    Author     : Isabelly
--%>

<%@page import="Classes.Db"%>
<%@page import="Classes.Provider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    String error = null;
    Provider providers = null;
    int index = -1;
    try{
        index = Integer.parseInt(request.getParameter("index"));
        providers = Db.getProviders().get(index);
        if(request.getParameter("set") != null){
        String nome = request.getParameter("nome");
        String razaoSocial = request.getParameter("razaoSocial");
        String email = request.getParameter("email");
        String endereco = request.getParameter("endereco");
        String cnpj = request.getParameter("cnpj");
        String telefone = request.getParameter("telefone");
        
        if(nome.isEmpty()) error = "Nome não pode ser nulo";
        else if(razaoSocial.isEmpty()) error = "Razão Social não pode ser nulo";
        else if(email.isEmpty()) error = "Email não pode ser nulo";
        else if(endereco.isEmpty()) error = "Endereço não pode ser nulo";
        else if(cnpj.isEmpty()) error = "Cnpj não pode ser nulo";
        else if(telefone.isEmpty()) error = "Telefone não pode ser nulo";
        else{      
            Provider setProviders = new Provider();
            setProviders.setAttributes(nome, razaoSocial, email, endereco, cnpj, telefone);
            Db.getProviders().set(index,setProviders);
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
        <title>Alterar Fornecedor - Fornecedores </title>
    </head>
    <body>
        <%@include file="../WEB-INF/jsfp/header.jspf" %>
        <h2><a href="list.jsp">Fornecedores</a></h2>
        <h3>Alterar Fornecedor</h3>
        <%if(error != null){ %>
        <div style="color:red"><%=error%></div>
        <%}%>
        <form method="post">
            Nome:<br/>
            <input type="text" name="nome" value="<%=providers.getNome()%>"/><br/>
            Razão Social:<br/>
            <input type="text" name="razaoSocial" value="<%=providers.getRazaoSocial()%>"/><br/>
            Email:<br/>
            <input type="email" name="email" value="<%=providers.getEmail()%>"/><br/>
            Endereço:<br/>
            <input type="text" name="endereco" value="<%=providers.getEndereco()%>"/><br/>  
            CNPJ:<br/>
            <input type="text" name="cnpj" value="<%=providers.getCnpj()%>"/><br/>
            Telefone:<br/>
            <input type="tel" name="telefone" value="<%=providers.getTelefone()%>"/><br/>
            <br/><input type="submit" name="set" value="Alterar"/>
            
        </form>
    </body>
</html>

