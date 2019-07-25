<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page  contentType="text/html; charset=UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="utf-8">
    <title>Base</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css"/>

</head>
<body>
<div id="container">

    <jsp:include page="pack/header.jsp"/>

    <div id="content">
        <h2>Основной контент страницы</h2>
            <hr>
            <p> Страницы с содержимым из базы данных </p>

            <c:forEach items="${page}" var="page">
            <div id="pages">
                <form action="/pagination" method="GET" >

                    <input type="submit"  name="pageId" value="<c:out value="${page}"/>"/>
                </form>
            </div>
            </c:forEach>

        <hr>


        Страница №${numberpage}

        <hr>
        <c:forEach items="${list}" var="list">
            <div id="test">


                <div id="photo">
                    <img src= "data:image/jpg;base64,<c:out value="${list.image}"/>" alt="Зайка" />
                </div>

                <div id="about">
                    <c:out value="${list.title}"/>
                    <hr>
                    <c:out value="${list.about}"/>
                </div>

            </div>
        </c:forEach>

<div id="conv">
        <p> Страницы с содержимым из базы данных </p>
<hr>
        <c:forEach items="${page}" var="page">
            <div id="pages">
                <form action="/pagination" method="GET" >

                    <input type="submit"  name="pageId" value="<c:out value="${page}"/>"/>
                </form>
            </div>
        </c:forEach>
    Страница №${numberpage}
</div>

    </div>

    <jsp:include page="pack/footer.jsp"/>

</div>
</body>
</html>