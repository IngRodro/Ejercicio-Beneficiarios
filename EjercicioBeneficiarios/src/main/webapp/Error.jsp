<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<link rel="stylesheet" href="CSS/estilosmensajes.css">
</head>
<body>
	<div class="logo">
		<center>
			<img class="logo" src="img/Logo_GOES2.png" alt="">
		</center>
	</div>
	<div class="container">
		<div class="row justify-content-center align-items-center vh-100">
			<div class="offset col-md-7 bg-light border border-success rounded">
				<div class="contendor m-5">
					<center>
						<h1 class="fa fa-exclamation-circle"></h1>
					</center>
					<h5 align="center">Este DUI no se encuentra en nuestros
						registros.</h5>
					<h5 align="center">Intenta ingresando el DUI de otra persona
						de tu vivienda</h5>
					<form action="ControllerAcceso" method="post">
						<center>
							<button class="btn btn-success" type="submit" name="btncerrar">Regresar</button>
						</center>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>