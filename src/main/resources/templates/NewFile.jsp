<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.util.ArrayList" %>
   <%@page import="com.onlineexam.bean.QuestionBean"%>
   <%@page import="com.onlineexam.service.ViewQuestion"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="Abc" method="post">
<h1>QUESTIONS</h1>


<%

ArrayList<QuestionBean> lt=(ArrayList<QuestionBean>) request.getAttribute("list");

for(int i=0;i<lt.size();i++) {
	QuestionBean bean=lt.get(i);%>
	<% 
	
	out.println((i+1)+" " +bean.getQuestions()+"<br>");%>
	<input type="radio" name="<%=i %>" value="<%=bean.getOptiona() %>"> <%=bean.getOptiona() %><br>
	  <input type="radio" name="<%=i %>" value="<%=bean.getOptionb() %>"><%=bean.getOptionb() %><br>
	  <input type="radio" name="<%=i %>" value="<%=bean.getOptionc() %>"><%=bean.getOptionc() %><br>  		  
<%} %>

<input type="submit" value="Submit">

</form>


<%--  <table>
             <c:forEach items="${orderno}" var="name">
   <tr>
       <td>${bean. }</td>
       <td>${name.menuid}</td>
       <td>${name.Quantity}</td>
       <td>${name.remarks}</td>
       <td>${name.consumerid}</td>
       <td>${name.status}</td>
    </tr>
</c:forEach>
            </table> --%>

</body>
</html>