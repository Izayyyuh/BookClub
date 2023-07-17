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
	<div id="content">

		<div id="header">
			<h1 style="font-style: italic">${viewBook.title}</h1>
			<a href="/books">back to the shelves</a>
		</div>
		
		<div>
			<h2><span style="color: red">${viewBook.creator.name}</span> read <span style="color: purple">${viewBook.title}</span> by <span style="color: green">${viewBook.author}</span>.</h2>
			<h3>Here are ${viewBook.creator.name}'s thoughts:</h3>
			<hr style="border: 1px solid black">
			<p>${viewBook.thoughts}</p>
		</div>
	</div>
</body>
</html>