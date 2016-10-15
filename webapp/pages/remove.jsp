<jsp:useBean id ="contact" scope="page"
             class = "com.phonebook.model.bean.ContactBean" />
<jsp:useBean id ="data" scope="request"
             class = "com.phonebook.model.dao.ContactDao" />

<%
    contact = data.getContactById(Long.valueOf(request.getParameter("id")));
    if(contact == null){
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span4"></div>
        <div class="span4">
            <div class="span12">
                <h2>Contato não existe!</h2>
            </div>
            <%
            }
            else{
                data.removeContact(contact);
            %>
            <div class="span12">
                <h2>Removido com sucesso!</h2>
            </div>

            <%
                }
            %>
        </div>
        <div class="span4"></div>
    </div>
    <div class="row-fluid">
        <div class="span4"></div>
        <div class="span4">
            <div class="span12">
                <h5><a href="/pages/list.jsp" class="btn-link">Voltar</a></h5>
            </div>
        </div>
        <div class="span4"></div>
    </div>
</div>
