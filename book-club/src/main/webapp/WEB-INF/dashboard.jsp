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
<title>Read Share</title>
<link rel="stylesheet" type="text/css" href="/css/style.css">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div>
		<h1>Welcome, ${currentUser.name}</h1>
		<a href="/logout">logout</a>
	</div>
	<div>
		<p>Books from everyone's shelves:</p>
		<a href="/books/new">+ Add a book to my shelf!</a>
	</div>
	<div>
		<table class="table table-bordered">
			<thead>
				<tr>
				<th style="text-align:center">ID</th>
				<th style="text-align:center">Title</th>
				<th style="text-align:center">Author Name</th>
				<th style="text-align:center">Posted By</th>
				</tr>
			</thead>
			<c:forEach var="book" items="${allBooks}">
				<tr>
					<td style="text-align:center">
					<p>${book.id}</p>
					</td>
					<td style="text-align:center">
					<a href="/books/${book.id}">${book.title}</a>
					</td>
					<td style="text-align:center">
					<p>${book.author}</p>
					</td>
					<td style="text-align:center">
					<p>${book.creator.name}</p>
					</td>
					</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>