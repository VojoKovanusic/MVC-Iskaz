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
			<td>redovna procenat:</td>
			<td>${procenat}</td>
		</tr>
		<tr>
			<td>redovna ogrev:</td>
			<td>${ogrev}</td>
		</tr>
		<tr>
			<td>redovna tehnika:</td>
			<td>${tehnika}</td>
		</tr>	 
		 
	  

	</table>
</body>
</html>