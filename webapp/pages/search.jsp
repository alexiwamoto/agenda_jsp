<jsp:useBean id ="contact" scope="page"
             class = "com.phonebook.model.bean.ContactBean" />
<jsp:useBean id ="data" scope="request"
             class = "com.phonebook.model.dao.ContactDao" />

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container">
    <div class="space"></div>
    <div class="row">
        <div class="col-md-12 col-xs-12 text-center">
            <h5>Buscar</h5>
        </div>
    </div>
    <div class="inner_space"></div>
    <div class="row">
        <div class="col-md-3 col-xs-1">
            <span class="lateral_space"></span>
        </div>
        <div class="col-md-6 col-xs-10">
            <form action="pages/process.php" id="searchthis" method="post">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for..." name="search_item">
							<span class="input-group-btn">
								<input id="pesquisafsm-botao" type="submit" value="" />
							</span>
                </div>
            </form>
        </div>
        <div class="col-md-3 col-xs-1">
            <span class="lateral_space"></span>
        </div>
    </div>
</div>
