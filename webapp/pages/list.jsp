<%@ page import="java.util.List" %>
<%@ page import="com.phonebook.model.bean.ContactBean" %>
<%@ page import="java.util.Iterator" %>
<jsp:useBean id ="contact" scope="page"
             class = "com.phonebook.model.bean.ContactBean" />
<jsp:useBean id ="data" scope="request"
             class = "com.phonebook.model.dao.ContactDao" />

<%
    List contacts = data.getContacts();
    Iterator iterator = contacts.iterator();
    ContactBean contactBean;

    if(contacts.size() > 0) {
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span4"></div>
        <div class="span4">
            <div class="span12">
                <h2>Contatos</h2>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">Contatos</div>
                <table class="table table-bordered">
                    <tr>
                        <th>Nome:</th>
                        <th>E-mail:</th>
                        <th>Telefone:</th>
                        <th>Ação:</th>
                    </tr>
                    <%
                        while(iterator.hasNext()){
                            contactBean = (ContactBean)iterator.next();
                    %>
                    <tr>
                        <td><%= contactBean.getName() %></td>
                        <td><%= contactBean.getEmail() %></td>
                        <td><%= contactBean.getPhone() %></td>
                        <td>
                            <form action="/controller" method="get">
                            <input type="submit" name="remover" value="Remover" class="btn btn-warning" />
                            <input type="hidden" name="id" value="<%=contactBean.getId()%>" />
                        </form>
                        </td>
                    </tr>
                    <%
                        }
                    %>
                </table>
                <%
                } else {
                %>
                <div class="span12">
                    <h2>
                        Nenhum Contato cadastrado.
                    </h2>
                </div>
                <%
                    }
                %>
            </div>
        </div>
        <div class="span4"></div>
    </div>
</div>
