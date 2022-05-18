
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body>
        <div class="container">
            <jsp:include page="/common/header.jsp"/>
            <div class="content">
                <div class="main">
                    <c:if test="${error==null}">
                        <c:forEach items="${result}" var="art">
                            <div class="result">
                                <div class="tittle">
                                    <a href="DetailController?id=${art.id}">      
                                        ${art.title}
                                    </a>
                                </div>
                                <div class="result_content">
                                    <div class="image_search">
                                        <img src="${imagePath}${art.image}" alt=""/>
                                    </div>
                                    <div class="text_search">
                                        ${art.shortContent}
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        <div class="paging">
                            <c:if test="${totalPage < 1}">
                                <h3>error: page is out of range!</h3>
                            </c:if>
                            <c:if test="${totalPage > 1}">
                                <c:forEach begin="1" end="${totalPage}" var="i">
                                    <a class="${i==page?"active":""}" href="SearchController?page=${i}&searchStr=${searchStr}" >${i}</a>
                                </c:forEach>
                            </c:if>
                        </div>
                    </c:if>
                    <c:if test="${error!=null}">
                        <h1>${error}</h1> 
                    </c:if>
                </div>
                <jsp:include page="/common/recent.jsp"/> 
            </div>
            <jsp:include page="/common/footer.jsp"/>
        </div>
    </body>
</html>
