<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link type="text/css" href="<c:url value="/resources/css/home.css" />"
	rel="stylesheet">
	
	
<link type="text/css"
	href="<c:url value="/resources/dijit/themes/tundra/tundra.css" />"
	rel="stylesheet" >

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript"
	src="<c:url value="/resources/dojo/dojo.js" />">
	
</script>

<script type="text/javascript"
	src="<c:url value="/resources/spring/Spring.js" />">
	
</script>

<script type="text/javascript"
	src="<c:url value="/resources/spring/Spring-Dojo.js" />">
	
</script>

</head>

<body>



 

	<form:form method="POST" modelAttribute="user"
		class="box login">


		<fieldset class="boxBody">



			<form:label path="name">
				Username
			</form:label>
			<form:input path="name" id = "name" />
		

			<script type="text/javascript">
				Spring.addDecoration(new Spring.ElementDecoration({
									elementId : "name",
									widgetType : "dijit.form.ValidationTextBox",
									
									widgetAttrs : {
										promptMessage : "Please input username"
									}
								}));
			</script>
		

			<form:label path="password">
				Password
			</form:label>
			
	
			
			<form:password path="password" id = "password"/>
			
			<script type="text/javascript">
				Spring.addDecoration(new Spring.ElementDecoration({
									elementId : "password",
									widgetType : "dijit.form.ValidationTextBox",
									
									widgetAttrs : {
										promptMessage : "Please input password"
									}
								}));
			</script>
			
			
			
			<c:if test="${not empty message}">
			<span style="float: right" class="error">${message}</span>
			</c:if>

			

		</fieldset>

		<footer>  
		
			
		<a href="${flowExecutionUrl}&_eventId=createUser">Create user</a>
		

		
		<input type="submit" class="btnLogin"
			value="Login" name="_eventId_submit"> 
			
			
			</footer>


	</form:form>


</body>
</html>