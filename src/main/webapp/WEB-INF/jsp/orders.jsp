<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><spring:message code="orders.title" /></title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    </head>
    <body>
        <br>
        <div class="container">
            <div class="panel panel-primary">
                <div class="panel-heading"><a href="${pageContext.request.contextPath}/pizza/basket" class="btn btn-success"><span class="badge">${basket.quantity}</span><i class="glyphicon glyphicon-shopping-cart"></i></a></div>
                <table class="panel-body table table-striped table-bordered table-hover">
                    <thead class="thead-inverse">
                        <tr>
                            <th>#</th>
                            <th><spring:message code="entity.order.state" /></th>
                            <th><spring:message code="entity.order.price" /></th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="o" items="${orders}" >
                        <tr>
                            <th>${o.id}</th>
                            <td>${o.state}</td>
                            <td>${o.price}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>      
        </div>
    </body>
</html>