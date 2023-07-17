<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Share</title>
<link rel="stylesheet" type="text/css" href="/css/style.css">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div>
		<h1>Add a Book to Your Shelf!</h1>
		<a href="/books">back to the shelves</a>
	</div>
		<form:form action="/books/create" method="POST" modelAttribute="newBook">
			<form:errors style="color:red" path="title"/>
			<form:label path="title">Title:</form:label>
			<form:input type="text" path="title" required="true"/>
			<form:errors style="color:red" path="author"/>
			<form:label path="author">Author:</form:label>
			<form:input type="text" path="author" required="true"/>
			<form:errors style="color:red" path="thoughts"/>
			<form:label path="thoughts">My thoughts:</form:label>
			<form:textarea path="thoughts" required="true"/>
			<form:button>Submit</form:button>
		</form:form>
	<div>
		
	</div>
</body>
</html>