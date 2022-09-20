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
    <% if (request.getParameter("equip") != null){
        String type = request.getParameter("equip");
        session.setAttribute("equip_attribute",type);


    }
        String current = null;
        if (session.getAttribute("color_attribute") == null ){
            current = "<select id=\"list\">\n" +
                    "        <option value=\"1\" selected=\"selected\">matted</option>\n" +
                    "        <option value=\"2\" >gradient</option>\n" +
                    "        <option value=\"3\">white</option>\n" +
                    "    </select>";



        }
        else if (session.getAttribute("color_attribute").equals("1")) {
            current = "<select id=\"list\">\n" +
                    "        <option value=\"1\" selected=\"selected\">matted</option>\n" +
                    "        <option value=\"2\" >gradient</option>\n" +
                    "        <option value=\"3\">white</option>\n" +
                    "    </select>";

        }
        else if (session.getAttribute("color_attribute").equals("2"))
        {
            current = "<select id=\"list\">\n" +
                    "        <option value=\"1\" >matted</option>\n" +
                    "        <option value=\"2\" selected=\"selected\">gradient</option>\n" +
                    "        <option value=\"3\">white</option>\n" +
                    "    </select>";

        }
        else {
            current = "<select id=\"list\">\n" +
                    "        <option value=\"1\" >matted</option>\n" +
                    "        <option value=\"2\" >gradient</option>\n" +
                    "        <option value=\"3\" selected=\"selected\">white</option>\n" +
                    "    </select>";

        }



    %>

    <title>Color</title>
</head>
<body>
<jsp:include page="header.html"/>
<h2>Choose a color of your future car</h2>
<h1><%= current%></h1>
<button class="three" onclick="Click()">
    See the result
</button>
</button>
<button class="three" onclick="ClickBack()">
    Go back
</button>
<script>
    function Click(){

        let selected = document.getElementById('list').value

        window.location.href = 'http://localhost:8433/demo1_war_exploded/third?color=' + selected


    }
</script>
<script>
    function ClickBack(){
        let selected = document.getElementById('list').value




        window.location.href = 'http://localhost:8433/demo1_war_exploded/first?colorback=' + selected


    }
</script>

</body>
<jsp:include page="footer.jsp"/>
</html>