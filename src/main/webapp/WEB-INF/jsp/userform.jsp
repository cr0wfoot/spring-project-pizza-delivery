<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><spring:message code="userform.title" /></title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    </head>
    <body>
        <%@include file="navi.jsp" %>
        <br>
        <div class="container">
            <div class="panel panel-info">
                <div class="panel-heading"><spring:message code="userform.message" /></div>
                <div class="panel-body">
                    <form:form action="accept" method="post" class="form-inline navbar-form navbar-left" commandName="customerDto">
                        <div class="form-group">
                            <spring:message code="entity.user.login" var="_login"/>
                            <label class="sr-only" for="inputLogin">${_login}</label>
                            <form:input type="text" name="login" path="login" class="form-control" placeholder="${_login}" id="inputLogin" />
                            <form:errors path="login"/>
                        </div>
                        <sec:authorize access="!isAuthenticated()">
                            <div class="form-group">
                                <spring:message code="entity.user.pass" var="_pass"/>
                                <label class="sr-only" for="inputPasswrd">${_pass}</label>
                                <form:input type="text" name="pass" path="pass" class="form-control" placeholder="${_pass}" id="inputPasswrd" />
                                <form:errors path="pass"/>
                            </div>
                        </sec:authorize>
                        <div class="input-group">
                            <spring:message code="entity.customer.name" var="_name"/>
                            <label class="sr-only" for="inputName">${_name}</label>
                            <form:input type="text" name="name" path="name" class="form-control" placeholder="${_name}" id="inputName" />
                            <form:errors path="name"/>
                        </div>
                        <div class="input-group">
                            <spring:message code="entity.address.street" var="_street"/>
                            <label class="sr-only" for="inputStreet">${_street}</label>
                            <form:input type="text" name="street" path="street" class="form-control" placeholder="${_street}" id="inputStreet" />
                            <form:errors path="street"/>
                        </div>
                        <div class="input-group">
                            <spring:message code="entity.address.city" var="_city"/>
                            <label class="sr-only" for="inputCity">${_city}</label>
                            <form:input type="text" name="city" path="city" class="form-control" placeholder="${_city}" id="inputCity" />
                            <form:errors path="city"/>
                        </div>
                        <div class="input-group">
                            <spring:message code="entity.address.appartment" var="_appartment"/>
                            <label class="sr-only" for="inputAppartment">${_appartment}</label>
                            <form:input type="text" name="appartment" path="appartment" class="form-control" placeholder="${_appartment}" id="inputAppartment" />
                            <form:errors path="appartment"/>
                        </div>
                        <sec:authorize access="!isAuthenticated()">
                            <input type="submit" name="reg" value="<spring:message code="button.register"  />" class="btn btn-default"/>
                        </sec:authorize>
                        <sec:authorize access="isAuthenticated()">
                            <input type="submit" name="save" value="<spring:message code="button.save" />" class="btn btn-default"/>
                        </sec:authorize>
                    </form:form>   
                </div>
            </div>
        </div>
    </body>
</html>