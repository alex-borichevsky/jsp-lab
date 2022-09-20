<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="style.css">
 </head>
<body>
<jsp:include page="header.html"/>
<h2>Choose model of car that you wanna buy</h2>

<% String current = null;
    if (request.getParameter("equipback") != null){
        session.setAttribute("equip_attribute",request.getParameter("equipback"));
    }



    if (session.getAttribute("type_attribute") == null ){
        current = "<select id=\"list\">\n" +
                "        <option value=\"1\" selected=\"selected\">Mercedes s class 22</option>\n" +
                "        <option value=\"2\" >Mercedes-Benz AMG GT 63</option>\n" +
                "        <option value=\"3\">BMW X6M</option>\n" +
                "    </select>";



    }
    else if (session.getAttribute("type_attribute").equals("1")) {
        current = "<select id=\"list\">\n" +
                "        <option value=\"1\" selected=\"selected\">Mercedes s class 22</option>\n" +
                "        <option value=\"2\" >Mercedes-Benz AMG GT 63</option>\n" +
                "        <option value=\"3\">BMW X6M</option>\n" +
                "    </select>";

    }
    else if (session.getAttribute("type_attribute").equals("2"))
    {
        current = "<select id=\"list\">\n" +
                "        <option value=\"1\" >Mercedes s class 22</option>\n" +
                "        <option value=\"2\" selected=\"selected\">Mercedes-Benz AMG GT 63</option>\n" +
                "        <option value=\"3\">BMW X6M</option>\n" +
                "    </select>";

    }
    else {
        current = "<select id=\"list\">\n" +
                "        <option value=\"1\" >Mercedes s class 22</option>\n" +
                "        <option value=\"2\" >Mercedes-Benz AMG GT 63</option>\n" +
                "        <option value=\"3\" selected=\"selected\">BMW X6M</option>\n" +
                "    </select>";

    }









%>

<h1><%= current%></h1>

<button class="three" onclick="Click()">
    Next: choose equipment
</button>




<script>
    function Click(){

        let selected = document.getElementById('list').value

        window.location.href = 'http://localhost:8433/demo1_war_exploded/first?type=' + selected


    }
</script>

</body>
<jsp:include page="footer.jsp"/>
</html>