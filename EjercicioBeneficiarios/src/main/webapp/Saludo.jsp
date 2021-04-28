<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>

<html>
<meta charset="utf-8">
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
	<%
	HttpSession sesion = (HttpSession) request.getSession();
	String usuSession = String.valueOf(sesion.getAttribute("Persona"));

	if (usuSession.equals(null) || usuSession.equals("null")) {

		response.sendRedirect("index.jsp");
	}
	%>
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
						<h1 class="far fa-laugh"></h1>
					</center>
					<h5 align="center">
						<%
						out.print(sesion.getAttribute("Persona"));
						%>, si eres beneficiario del apoyo del apoyo económico de $300 para
						la alimentación de tu hogar
					</h5>
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