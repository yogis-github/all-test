<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.time.LocalDateTime";%>
<%@ page import="java.time.format.DateTimeFormatter"; %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Date Calculate</title>
</head>
<body>

	<%
		DateTimeFormatter format = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss'Z'");

		LocalDateTime now = LocalDateTime.now();
		LocalDateTime then = now.minusDays(6);
		
		now.compareTo(then);
		
		System.out.println(String.format("Now:  %s\nThen: %s", now.format(format), then.format(format)));
	%>
	

</body>
</html>