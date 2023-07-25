<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
</head>
<body>
	<div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
		<form action="confirm" method="get">


			<!-- phone input -->
			<div class="form-outline mb-4">
				<input name="phone" type="tel" id="form3Example3"
					class="form-control form-control-lg"
					placeholder="Enter your phone number" /> <label class="form-label"
					for="form3Example3">Phone Number</label>
			</div>

			<!-- Password input -->
			<div class="form-outline mb-3">
				<input name="password" type="password" id="form3Example4"
					class="form-control form-control-lg" placeholder="Enter password" />
				<label class="form-label" for="form3Example4">Password</label>
			</div>

			<div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
				<button type="submit" value="confirm"
					class="btn btn-primary btn-lg">Register</button>
			</div>

		</form>
	</div>

</body>
</html>