<html>
<head>
<title>Hello World!</title>
</head>
<body>
	<h1>123</h1>
	<p>
		current time
		<%= new java.util.Date() %></p>
	<p>
		you are from IP
		<%= request.getRemoteAddr()  %></p>
</body>
