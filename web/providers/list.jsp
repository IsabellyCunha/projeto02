<%@page import="Classes.Provider"%>
<%@page import="Classes.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fornecedores</title>
    </head>

    <body>
        <%@include file="../WEB-INF/jsfp/header.jspf" %>
        <h1>Fornecedores</h1>
        <h3><a href="add.jsp">Cadastrar</a></h3>
        <br>

        <table border="1">
            <tr>
                <th>Nome</th>
                <th>Razão social</th>
                <th>E-Mail</th>
                <th>Endereço</th>
                <th>CNPJ</th>
                <th>Telefone</th>
                <th>Comandos</th>
            </tr>

            <%for (Provider provider : Db.getProviders()) {%>
            <tr>

                <td><%= provider.getNome()%></td>
                <td><%= provider.getRazaoSocial()%></td>
                <td><%= provider.getEmail()%></td>
                <td><%= provider.getEndereco()%></td>
                <td><%= provider.getCnpj()%></td>
                <td><%= provider.getTelefone()%></td>

                <td>
                    <%int index = Db.getProviders().indexOf(provider);%>
                    <a href="set.jsp?index=<%=index%>">Alterar</a>
                    <a href="remove.jsp?index=<%=index%>">Excluir</a>
                </td>

            </tr>
            <%}%>
        </table>

    </body>
</html>
