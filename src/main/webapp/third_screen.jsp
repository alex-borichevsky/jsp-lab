<%--
  Created by IntelliJ IDEA.
  User: Алексей
  Date: 25.05.2022
  Time: 18:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="WEB-INF/letcode-tags.tld" prefix="lct" %>
<html>
<head>
    <link rel="stylesheet" href="style.css">

</head>
<body>
<jsp:include page="header.html"/>
<h1>
    <h1><lct:paramsTag/>
        <lct:paramsTag
                a="Parametres that you choosed: ">
            <%=
            session.getAttribute("type_attribute")
            %>
            <%=
            session.getAttribute("equip_attribute")
            %>
            <%=
            request.getParameter("color")
            %>
        </lct:paramsTag>
    </h1>
</h1>
<button class="three" onclick="Click()">
    Go to start screen
</button>
<script>
    function Click(){
        <%session.setAttribute("type_attribute",null);
        session.setAttribute("money_attribute",null);
        session.setAttribute("color_attribute",null);
        %>



        window.location.href = 'http://localhost:8433/demo1_war_exploded'


    }
</script>
</body>
<jsp:include page="footer.jsp"/>
</html>