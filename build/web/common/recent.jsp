
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/recent.css">
    </head>
    <body>
        <div class="right">
            <div class="newest">
                <div class="titleNews">
                    <span>Digital News</span>
                </div>
                <div class="contentNews">
                    ${newest.shortContent}
                </div>
            </div>
            <div class="newst">
                <div class="titleNews">
                    Search
                </div>
                <form action="SearchController" method="post">
                    <input class="searchBox" type="text" name="searchStr" size="20" required>
                    <input class="searchButton" type="submit" name="btnGo" value="Go">
                </form>
            </div>
            <div class="newst">
                <div class="titleNews">
                    <span>Last Articles</span><br>
                </div>
                <c:forEach items="${last5}" var="i">
                    <div class="lastArticles">
                        <a href="DetailController?id=${i.id}">${i.title}</a>
                    </div>
                </c:forEach>
            </div>
        </div>
    </body>
</html>
