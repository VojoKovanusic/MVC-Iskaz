<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>

<title>FIRIST WEB APP</title>
<style>
.erorKojiJaHocu {
	color: red;
}
</style>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">


</head>
<body bgcolor=#0099ff>
	<div id="wraper">

		<div id="header">
			<b>DODAJ ODJEL:</b>
		</div>
	</div>

	<div id="container">

		<form action="/add/odjel" method="post">
			<table>
				<tbody>
					<tr>
						<td><label>Broj odjela :</label></td>

						<td><input type="text" name="brojOdjela"></td>
					</tr>

					<tr>
						<td><label>Broj odsjek :</label></td>
						<td><input type="text" name="brojOdsjeka"></td>

					</tr>

					<tr>
						<td><label>gk gk :</label></td>
						<td><input type="text" name="GK"></td>
					</tr>
					<tr>
						<td><label>Broj knigaPremjerdbe :</label></td>
						<td><input type="text" name="knigaPremjerdbe"></td>
					</tr>
					<tr>
						<td><label>Broj knjigaDoznake :</label></td>
						<td><input type="text" name="knjigaDoznake"></td>
					</tr>
					<tr>
						<td><label>Broj nazivVrste :</label></td>
						<td><input type="text" name="nazivVrste"></td>
					</tr>
					<tr>
						<td><label>% Doznake :</label></td>
						<td><input type="text" name="procenat"></td>
					</tr><tr>
						<td><label>Doznaka-ogrev :</label></td>
						<td><input type="text" name="ogrev"></td>
					</tr><tr>
						<td><label>Doznaka-tehnika:</label></td>
						<td><input type="text" name="tehnika"></td>
					</tr>
				 <!-- 
					<tr><tr>
						<td><label>  Redovna % :</label></td>
						<td><input type="text" name="redovna.procenat"></td>
					</tr><tr>
						<td><label>Redovna-ogrev :</label></td>
						<td><input type="text" name="redovna.ogrev"></td>
					</tr><tr>
						<td><label>Redovna-tehnika:</label></td>
						<td><input type="text" name="redovna.tehnika"></td>
					</tr>
				 
					<tr>
					
					<tr><tr>
						<td><label>  uzici % :</label></td>
						<td><input type="text" name="procenat"></td>
					</tr><tr>
						<td><label>uzici-ogrev :</label></td>
						<td><input type="text" name="ogrev"></td>
					</tr><tr>
						<td><label>uzici-tehnika:</label></td>
						<td><input type="text" name="tehnika"></td>
					</tr> -->
				 
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Snimi!" class="save" /></td>

					</tr>

				</tbody>


			</table>

		</form>

	</div>


</body>
</html>