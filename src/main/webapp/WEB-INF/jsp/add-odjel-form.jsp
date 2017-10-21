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
				 
				 <tr>
						<td><label> Redovna % :</label></td>
						<td><input type="text" name="procenatRedovna"></td>
					</tr><tr>
						<td><label>Redovna-ogrev :</label></td>
						<td><input type="text" name="ogrevRedovna"></td>
					</tr><tr>
						<td><label>Redovna-tehnika:</label></td>
						<td><input type="text" name="tehnikaRedovna"></td>
					</tr>
				 
				 
					<tr>
						<td><label>% Njega" :</label></td>
						<td><input type="text" name="procenatNjega""></td>
					</tr>
					<tr>
						<td><label>Njega"-ogrev :</label></td>
						<td><input type="text" name="ogrevNjega""></td>
					</tr>
					<tr>
						<td><label>Njega"-tehnika:</label></td>
						<td><input type="text" name="tehnikaNjega"></td>
					</tr>
					 
					
				  
					  
					<tr><tr>
						<td><label> Uzici % :</label></td>
						<td><input type="text" name="procenatUzici"></td>
					</tr><tr>
						<td><label>uzici-ogrev :</label></td>
						<td><input type="text" name="ogrevUzici"></td>
					</tr><tr>
						<td><label>uzici-tehnika:</label></td>
						<td><input type="text" name="tehnikaUzici"></td>
					</tr>  
				 <tr><tr>
						<td><label> Proreda % :</label></td>
						<td><input type="text" name="procenatProreda"></td>
					</tr><tr>
						<td><label> Proreda-ogrev :</label></td>
						<td><input type="text" name="ogrevProreda"></td>
					</tr><tr>
						<td><label> Proreda-tehnika:</label></td>
						<td><input type="text" name="tehnikaProreda"></td>
					</tr>  
					
					<tr><tr>
						<td><label> Stete % :</label></td>
						<td><input type="text" name="procenatStete"></td>
					</tr><tr>
						<td><label> Stete-ogrev :</label></td>
						<td><input type="text" name="ogrevStete"></td>
					</tr><tr>
						<td><label> Stete-tehnika:</label></td>
						<td><input type="text" name="tehnikaStete"></td>
					</tr>
					   
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Snimi!" class="save" /></td>

					</tr>

				</tbody>
	</div>


</body>
</html>