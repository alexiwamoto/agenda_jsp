<%--
<form action="Controlador" method="get">
    <input name="grpMenu" type="radio"value="1" checked="checked" />
    <input name="grpMenu" type="radio" value="2" />
    <input name="grpMenu" type="radio" value="3" />
    <input name="grpMenu" type="radio" value="4" />

    adicionar <br/>
    remover <br/>
    listar <br/>

    pesquisar
    <br/>
    <br/>
    <input type="submit" value="enviar" />
</form>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span4"></div>

        <div class="span4">
            <div class="span12">
                <h2>Opções</h2>
            </div>
            <div>
                <form class="form-horizontal" action="/controller" method="get">
                    <fieldset>
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="acao">Deseja:</label>
                            <div class="col-md-5">
                                <select class="form-control input-md" name="acao">
                                    <option value="1">Cadastrar Novo Contato</option>
                                    <option value="2">Listar Contatos</option>
                                    <option value="3">Pesquisar</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-4"></div>
                            <div class="col-md-4 text-center">
                                <input type="submit" value="Executar" class="btn btn-primary" />
                            </div>
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>

        <div class="span4"></div>
    </div>
</div>
