<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
<title>LIST CUSTOMER</title>
<!-- references our style sheet -->
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
<style>
table, th, td {
	border: 1px solid black;
}

th, td {
	padding: 5px;
	text-align: left;
}
erorKojiJaHocu
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
		</tr>
		<tr>
			<td>Doz %:</td>
			<td>${doznaka.procenat}</td>
		</tr>
		<tr>
			<td>Doz %:</td>
			<td>${doznaka.bruto}</td>
		</tr>
		<tr>
			<td>Doznak ogrev:</td>
			<td>${doznaka.ogrev}</td>
		</tr>
		<tr>
			<td>Doz tehnika:</td>
			<td>${doznaka.tehnika}</td>
		</tr>
		
		<tr>
			<td>redovna procenat:</td>
			<td>${redovna.procenatRedovna}</td>
		</tr>
		<tr>
			<td>redovna ogrev:</td>
			<td>${redovna.ogrevRedovna}</td>
		</tr>
		<tr>
			<td>redovna tehnika:</td>
			<td>${redovna.tehnikaRedovna}</td>
		</tr>	
		
		
		<tr>
			<td>Njega %:</td>
			<td>${njega.procenatNjega}</td>
		</tr>
		<tr>
			<td>Njega ogrev:</td>
			<td>${njega.ogrevNjega}</td>
		</tr>
		<tr>
			<td>Njega tehnika:</td>
			<td>${njega.tehnikaNjega}</td>
		</tr>
		 
		 		<tr>
			<td>uzici procenat:</td>
			<td>${uzici.procenatUzici}</td>
		</tr>
		<tr>
			<td>uzici ogrev:</td>
			<td>${uzici.ogrevUzici}</td>
		</tr>
		<tr>
			<td>uzici tehnika:</td>
			<td>${uzici.tehnikaUzici}</td>
		</tr>
	   
 		<tr>
			<td>Proreda procenat:</td>
			<td>${proreda.procenatProreda}</td>
		</tr>
		<tr>
			<td>Proreda ogrev:</td>
			<td>${proreda.ogrevProreda}</td>
		</tr>
		<tr>
			<td>Proreda tehnika:</td>
			<td>${proreda.tehnikaProreda}</td>
		</tr>
	    		<tr>
			<td>Stete procenat:</td>
			<td>${stete.procenatStete}</td>
		</tr>
		<tr>
			<td>Stete ogrev:</td>
			<td>${stete.ogrevStete}</td>
		</tr>
		<tr>
			<td>Stete tehnika:</td>
			<td>${stete.tehnikaStete}</td>
		</tr>
	    
	</table>
</body>
</html>