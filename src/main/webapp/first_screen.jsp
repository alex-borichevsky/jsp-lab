<%--
  Created by IntelliJ IDEA.
  User: Алексей
  Date: 25.05.2022
  Time: 18:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="style.css">
    <% if (request.getParameter("type") != null){
        String type = request.getParameter("type");
        session.setAttribute("type_attribute",type);

    }

    if (request.getParameter("colorback") != null){
        session.setAttribute("color_attribute",request.getParameter("colorback"));

    }

        String current = null;
        if (session.getAttribute("equip_attribute") == null ){
            current = "<select id=\"list\">\n" +
                    "        <option value=\"1\" selected=\"selected\">stripped down version</option>\n" +
                    "        <option value=\"2\" >basic version</option>\n" +
                    "        <option value=\"3\">full set</option>\n" +
                    "    </select>";



        }
        else if (session.getAttribute("equip_attribute").equals("1")) {
            current = "<select id=\"list\">\n" +
                    "        <option value=\"1\" selected=\"selected\">stripped down version</option>\n" +
                    "        <option value=\"2\" >basic version</option>\n" +
                    "        <option value=\"3\">full set</option>\n" +
                    "    </select>";

        }
        else if (session.getAttribute("equip_attribute").equals("2"))
        {
            current = "<select id=\"list\">\n" +
                    "        <option value=\"1\" >stripped down version</option>\n" +
                    "        <option value=\"2\" selected=\"selected\">basic version</option>\n" +
                    "        <option value=\"3\">full set</option>\n" +
                    "    </select>";

        }
        else {
            current = "<select id=\"list\">\n" +
                    "        <option value=\"1\" >stripped down version</option>\n" +
                    "        <option value=\"2\" >basic version</option>\n" +
                    "        <option value=\"3\" selected=\"selected\">full set</option>\n" +
                    "    </select>";

        }

    %>




    <title>hi</title>
</head>
<body>
<jsp:include page="header.html"/>
<h2>Choose equipment of your future car</h2>
<h1><%= current%></h1>

<button  class="three" onclick="Click()">
    Go to chose a color
</button>
<button class="three" onclick="ClickBack()">
    Go to previous step
</button>
<script>
    function Click(){

        let selected = document.getElementById('list').value

        window.location.href = 'http://localhost:8433/demo1_war_exploded/second?equip=' + selected


    }
</script>
<script>
    function ClickBack(){
        let selected = document.getElementById('list').value




        window.location.href = 'http://localhost:8433/demo1_war_exploded/?equipback=' + selected


    }
</script>

</body>
<jsp:include page="footer.jsp"/>
</html>
