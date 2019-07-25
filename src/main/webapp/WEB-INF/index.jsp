<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page  contentType="text/html; charset=UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="utf-8">
    <title>Welcome</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css"/>

</head>
<body>
<div id="container">

    <div id="header">
        <h2>header (шапка сайта)</h2>
    </div>

    <div id="navigation">
        <h2>Блок навигации</h2>
        <hr>
        <form action="/sbor"  method="GET" >
            <button type="submit" name="pageId" value="1" > Данные </button>
        </form>

    </div>

    <div id="sidebar">
        <h2>Левая панель</h2>
        <hr>

    </div>

    <div id="content">
        <h2>Основной контент страницы</h2>
    </div>

    <div id="clear">

    </div>

    <div id="footer">
        <h2>footer (низ сайта)</h2>
    </div>
</div>





</body>
</html>


