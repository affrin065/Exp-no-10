<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="ip.emp"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Jstl</title>
    </head>
    <body>
        <%
         
            emp st=new emp("john doe",50000,"2020-01-01");
            emp st1=new emp("jane smith",60000,"2021-02-15");
            emp st2=new emp("bob jhonson",70000,"2019-05-01");
           
            ArrayList<emp> obj=new ArrayList<emp>();
            obj.add(st);
            obj.add(st1);
            obj.add(st2);

pageContext.setAttribute("obj", obj);
        %>
        <table border="2px"><tr><th>Name</th><th>date</th><th>salary</th></tr>
        <c:forEach items="${pageScope.obj}" var="i">
           
                <tr> <td>${i.getName()}</td>
                    <td>${i.getdate()}</td>
                    <td>${i.getsalary()}</td>
                </tr>
        </c:forEach>  
        </table>
    </table><br>
    <h3>highlighting with green and displaying the employee whose salary is greater than 60000</h3>
        <c:forEach items="${pageScope.obj}" var="i">
       <c:choose>
           <c:when test="${i.getsalary()>60000}">
               <mark>${i.getName()}...${i.getdate()}...${i.getsalary()}</mark>
           </c:when>
       </c:choose>
                
                </c:forEach> 
    </body>
</html>
