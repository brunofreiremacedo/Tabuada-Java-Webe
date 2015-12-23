<%-- 
    Document   : tabuada
    Created on : 21/12/2015, 03:29:48
    Author     : Bruno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabuada</title>
    </head>
    <body>
        <div align ="center" >
        <h1>Tabuada</h1>
        <%
        String numero = request.getParameter("numero");
       int n = Integer.parseInt(numero);
        for (int i = 1; i <= 10; i++) {
          
            out.println("<table border=1><tr><td>"+n+"x"+i+"</td>");
            out.println("<td>"+n*i+"</td>");        
                    
                    
            out.println("</tr></table>");
            }
            
        %>
        </div>
    </body>
</html>
