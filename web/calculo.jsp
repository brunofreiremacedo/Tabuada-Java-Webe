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
        <title>Calculadora IMC</title>
    </head>
    <body>
        <div align ="center" >
        <h1>Calculadora IMC</h1>
        <%
        float imc;    
        String altura = request.getParameter("altura");
            float a = Float.parseFloat(altura);
        
        String peso = request.getParameter("peso");
            float p = Float.parseFloat(peso);
            
        imc = p/(a*a);
        out.println("<table border=1>");
          if(imc < 18)  
              
        {  
             out.println("<tr><td>Seu peso </td><td>"+peso+"</td></tr>");
                   out.println("<tr><td>Sua altura </td><td>"+altura+"</td></tr>");
                   out.println("<tr><td>Seu IMC </td><td>"+imc+"</td></tr>");
                   out.println("<tr><td>Você está: </td><td>Abaixo do peso</td></tr>");  
        }  
        else  
            if(imc > 18 & imc < 25)  
            {  
                 out.println("<tr><td>Seu peso </td><td>"+peso+"</td></tr>");
                   out.println("<tr><td>Sua altura </td><td>"+altura+"</td></tr>");
                   out.println("<tr><td>Seu IMC </td><td>"+imc+"</td></tr>");
                   out.println("<tr><td>Você está: </td><td>Normal</td></tr>");
            }  
            else
                if(imc > 25 & imc < 30)  
                {   out.println("<tr><td>Seu peso </td><td>"+peso+"</td></tr>");
                   out.println("<tr><td>Sua altura </td><td>"+altura+"</td></tr>");
                   out.println("<tr><td>Seu IMC </td><td>"+imc+"</td></tr>");
                   out.println("<tr><td>Você está: </td><td>Acima do peso</td></tr>");
                }  
                else  
                    if(imc > 30)  
                    {  
                    out.println("<tr><td>Seu peso </td><td>"+peso+"</td></tr>");
                   out.println("<tr><td>Sua altura </td><td>"+altura+"</td></tr>");
                   out.println("<tr><td>Seu IMC </td><td>"+imc+"</td></tr>");
                   out.println("<tr><td>Você está: </td><td>Obeso</td></tr>"); 
                    }  
          out.println("</table>");
        %>
        </div>
    </body>
</html>
