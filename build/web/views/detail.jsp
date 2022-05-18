<%-- 
    Document   : detail
    Created on : Feb 19, 2020, 10:58:46 AM
    Author     : MyPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detail</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body>
        <div class="container">
            <jsp:include page="/common/header.jsp"/>
            <div class="content">
                <div class="main">
                    <c:if test="${error==null}">
                        <c:if test="${article!=null}">
                            <div class="tittle">
                                ${article.title}
                            </div>
                            <div class="image">
                                <img src="${imagePath}${article.image}"/>
                            </div>
                            <div class="text">
                                ${article.content}
                            </div>
                            <div class="signature">
                                <div class="icon1"></div>
                                <div class="icon2"></div>
                                By ${article.author} | ${article.date}
                            </div>
                        </c:if>
                        <c:if test="${article==null}">
                            <h2 class="error">Article not found!</h2>
                        </c:if>
                    </c:if>
                    <c:if test="${error!=null}">
                        <h2 class="error">${error}</h2>
                    </c:if>
                </div>
                <jsp:include page="/common/recent.jsp"/> 
            </div>
            <jsp:include page="/common/footer.jsp"/>
        </div>
    </body>
</html>
