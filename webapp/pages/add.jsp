<jsp:useBean id ="contact" scope="page"
             class = "com.phonebook.model.bean.ContactBean" />
<jsp:useBean id ="data" scope="request"
             class = "com.phonebook.model.dao.ContactDao" />

<%
    contact.setName(request.getParameter("txtName"));
    contact.setPhone(request.getParameter("txtPhone"));
    contact.setEmail(request.getParameter("txtEmail"));

    if(contact.getName() == null){
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span4"></div>

        <div class="span4">
            <div class="span12">
                <h2>Novo Contato</h2>
            </div>
            <div>
                <form class="form-horizontal" action="add.jsp" method="post">
                    <fieldset>
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="txtName">Nome:</label>
                            <div class="col-md-5">
                                <input class="form-control input-md" name="txtName"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-4 control-label" for="txtPhone">Telefone:</label>
                            <div class="col-md-5">
                                <input class="form-control input-md" name="txtPhone"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-4 control-label" for="txtEmail">E-mail:</label>
                            <div class="col-md-5">
                                <input class="form-control input-md" name="txtEmail"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-4"></div>
                            <div class="col-md-4 text-center">
                                <input type="submit" value="enviar" class="btn btn-primary" />
                            </div>
                        </div>
                    </fieldset>
                </form>
                <%
                    }
                    else{
                        data.addContact(contact);
                %>

                <h2>Informações adicionadas com sucesso!</h2>
                <%
                    }
                %>
            </div>
        </div>
        <div class="span4"></div>
    </div>
</div>



