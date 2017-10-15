<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>

<title>FIRIST WEB APP</title>
<style>.erorKojiJaHocu{
	color: red;
}</style>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">

  
</head>
<body bgcolor=#0099ff>
	<div id="wraper">

		<div id="header" >
			<b >DODAJ ODJEL:</b>
		</div>
	</div>

	<div id="container">
		 
		<form:form action="/add/odjel" modelAttribute="odjel"   >
			<!-- potrebno je da asociate ovaj podatak sa customer id -->
			<form:hidden path="id_odjela" />
			<table>
				<tbody>
					<tr>
						<td><label>Broj odjela :</label></td>
						<td><form:input path="brojOdjela" /> <form:errors
								path="brojOdjela" cssClass="erorKojiJaHocu" /></td>
					</tr> <tr>
					 
					<td> Broj odsjeka : </td>
					
					<tr><tr>
					 
					<td> Gazdinska klasa: </td>
					
					<tr><tr>
					 
					<td> Neto ogreva : </td>
					
					<tr><tr>
					 
					<td> Neto tehnike : </td>
					
					<tr><tr>
					 
					<td> Procenat iskoristenja : </td>
					
					<tr>
					 
					 
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Snimi!" class="save"/></td>
							
					</tr>

				</tbody>
				

			</table>
			 
		</form:form>
		
		
	 
		
		<!-- bec to customer list -->
		<div style=""></div>
		<p>
			<input type="submit" value="MAIN MENU"
				onclick="window.location.href='/home';return false;"
				class="add-button" />  
		</p>
	</div>


</body>
</html>