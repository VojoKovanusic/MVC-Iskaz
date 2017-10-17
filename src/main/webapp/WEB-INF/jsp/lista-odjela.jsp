<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
<title>LIST CUSTOMER</title>
<!-- references our style sheet -->
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
<style>table, th, td {
    border: 1px solid black;
    
}
th, td {
    padding: 5px;
    text-align: left;  
      
}erorKojiJaHocu
</style>
</head>
<body bgcolor="#80d4ff">


	<h3>${porukaZaNaslov}</h3>

	<table>
	 
		
		<tr>
			<td>Broj Odjela:</td>
			<td>${odjel.brojOdjela}</td>
		</tr>
		<tr>
			<td>Broj Odsjeka:</td>
			<td>${odsjek.brojOdsjeka}</td>
		</tr>
		<tr>
			<td>Gazdinska Klasa:</td>
			<td>${odsjek.GK}</td>
		</tr>
		<tr>
			<td>knigaPremjerdbe:</td>
			<td>${odsjek.knigaPremjerdbe}</td>
		</tr>
		<tr>
			<td>knjigaDoznake:</td>
			<td>${odsjek.knjigaDoznake}</td>
		</tr>
		<tr>
			<td>nazivVrste:</td>
			<td>${vrsta.nazivVrste}</td>
		</tr>	<tr>
			<td>Doz %:</td>
			<td>${doznaka.procenat}</td>
		</tr>
		<tr>
			<td> Doznak ogrev:</td>
			<td>${doznaka.ogrev}</td>
		</tr>
		<tr>
			<td>Doz tehnika:</td>
			<td>${doznaka.tehnika}</td>
		</tr>
<%-- 		<tr>
			<td>redovna procenat:</td>
			<td>${redovna.procenat}</td>
		</tr>
		<tr>
			<td>redovna ogrev:</td>
			<td>${redovna.ogrev}</td>
		</tr>
		<tr>
			<td>redovna tehnika:</td>
			<td>${redovna.tehnika}</td>
		</tr>	<tr>
			<td>uzici procenat:</td>
			<td>${uzici.procenat}</td>
		</tr>
		<tr>
			<td>uzici ogrev:</td>
			<td>${uzici.ogrev}</td>
		</tr>
		<tr>
			<td>uzici tehnika:</td>
			<td>${uzici.tehnika}</td>
		</tr>
	  --%>

	</table>
</body>
</html>