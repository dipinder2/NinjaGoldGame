<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>Demo JSP</title>
    </head>
<body style="display:flex;">
	<div>
	Your Gold: <input type="number" value="${gold}" disabled="true"/>
		<form method="post" action="/findgold" class="card" style="width: 10rem;">
			<h5>Farm</h5>
			<h6>earns 10-20 gold</h6>
			<input type="hidden" value="10" name="min"/>
			<input type="hidden" value="20"name="max"/>
			<button class="btn btn-primary">find gold!</button>
		</form>
		<form method="post" action="/findgold" class="card" style="width: 10rem;">
			<h5>Cave</h5>
			<h6>earns 5-10 gold</h6>
			<input type="hidden" value="5" name="min"/>
			<input type="hidden" value="10"name="max"/>
			<button class="btn btn-primary">find gold!</button>
		</form>
		<form method="post" action="/findgold" class="card" style="width: 10rem;">
			<h5>House</h5>
			<h6>earns 2-5 gold</h6>
			<input type="hidden" value="2" name="min"/>
			<input type="hidden" value="5"name="max"/>
			<button class="btn btn-primary">find gold!</button>
		</form>
		<form method="post" action="/findgold" class="card" style="width: 10rem;">
			<h5>Casino</h5>
			<h6>earns/takes 0-50 gold</h6>
			<input type="hidden" value="-50" name="min"/>
			<input type="hidden" value="50"name="max"/>
			<button class="btn btn-primary">find gold!</button>
		</form>
	</div>
	<div style="width:500px;height:100px">
		<c:forEach var="action" items="${actions}">
			<p><c:out value="${action}"></c:out></p>		
		
		</c:forEach>

		
	</div>
</body>
</html>