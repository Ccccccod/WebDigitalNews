
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error</title>
    </head>
    <body>
        <div class="container">
            <!--abcdefghijklmnopqrstuvwxyz-->
            <jsp:include page="/common/header.jsp"/>
            <div class="content">
                <div class="main">
                    <c:if test="${error !=null}">
                        ${error}
                    </c:if>
                </div>
            </div>
            <jsp:include page="/common/footer.jsp"/>
        </div>
    </body>
</html>
