<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
	crossorigin="anonymous" defer></script>
<style type="text/css">
body {
	width: 100vw;
	height: 100vh;
	display: flex;
	align-items: center;
	justify-content: center;
}
</style>
</head>
<body>
	<div class="card">
		<div class="card-body">
			<h1 class="card-title">Welcome : ${u.getName()}</h1>
			<h2>Id:${u.getId() }</h2>
			<h2>Phone:${u.getPhone() }</h2>
			<h2>Age:${u.getAge() }</h2>
			<h2>Email:${u.getEmail() }</h2>
		</div>
	</div>
	<div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
		<button type="submit" value="edit" class="btn btn-primary btn-lg">
			<a href="confirm.jsp">Edit</a>
		</button>
	</div>
</body>
</html>