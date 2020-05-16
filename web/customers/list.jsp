<%@page import="Classes.Customer"%>
<%@page import="Classes.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <body>
        <%@include file="../WEB-INF/jsfp/header.jspf" %>
        <h1>Clientes</h1>
        <br>

        <table>
            <tr>
                <th>Nome</th>
                <th>E-Mail</th>
                <th>Endereço</th>
                <th>CPF</th>
                <th>RG</th>
                <th>Telefone</th>
            </tr>

            <%for (Customer customer : Db.getCustomers()) {%>
            <tr>

                <td><%= customer.getNome()%></td>
                <td><%= customer.getEmail()%></td>
                <td><%= customer.getEndereco()%></td>
                <td><%= customer.getCpf()%></td>
                <td><%= customer.getRg()%></td>
                <td><%= customer.getTelefone()%></td>

                <td>
                    <%int index = Db.getProviders().indexOf(customer);%>
                    <a href="set.jsp?index=<%=index%>">Alterar</a>
                    <a href="remove.jsp?index=<%=index%>">Excluir</a>
                </td>

            </tr>
            <%}%>
        </table>
    </body>
</html>
