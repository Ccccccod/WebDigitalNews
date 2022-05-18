
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body>
        <div class="container">
            <!--abcdefghijklmnopqrstuvwxyz-->
            <jsp:include page="/common/header.jsp"/>
            <div class="content">
                <div class="main">
                    <div class="tittle">
                        ${newest.title}
                    </div>
                    <div class="image">
                        <img src="${imagePath}${newest.image}"/>
                    </div>
                    <div class="text">
                        ${newest.content}
                    </div>
                    <div class="signature">
                        <div class="icon1"></div>
                        <div class="icon2"></div>
                         By ${newest.author} | ${newest.date}
                    </div>
                </div>
                <jsp:include page="/common/recent.jsp"/>
            </div>
            <jsp:include page="/common/footer.jsp"/>
        </div>
    </body>
</html>
