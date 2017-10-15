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
<body bgcolor="#bfeec5">

	<div id="wrapper">
		<div id="header" align="center">
			 
          WELCOME TO ADMIN WEB APP 
		</div>
	</div>

	<div id="container">

		<div id="content">
			<!-- dodavanje dugmeta  -->
			<input type="button" value="Dodaj novi odjel"
				onclick="window.location.href='/add/odjel';return false;"
				class="add-button" />
			
				 <input type="button" value="Dodaj novi odsjek"
				onclick="window.location.href='/admin/sortBySalary';return false;"
				class="add-button" />
				
				 <input id ="sortButton" type="button" value="Dodaj novu vrstu"
				onclick="window.location.href='/admin/home';return false;"
				class="add-button" />
				
				<input type="button" value="Edituj"
				onclick="window.location.href='/admin/sortByRegistrationDate';return false;"
				class="add-button" />
				
				<input type="button" value="LOG OFF"
				onclick="window.location.href='/login'"
				class="add-button" />
				
			<table>

				<tr>

					<th>Odjel:</th>
					<th>Odsjek:</th>
					<th>ID:</th>
					 
                    
				</tr>

				<!-- loop over and print our customers -->
				<c:forEach var="tempOdjel" items="${odjeli}">
				
					<!-- construct an "UPDATE" link with customer id -->
					<c:url var="updateLink" value="/odjel/update">
						<c:param name="customerId" value="${tempOdjel.id_odjela}" />
					</c:url>	
					
					<!-- construct an "DELETE" link with customer id -->
					<c:url var="deleteLink" value="/odjel/delete">
						<c:param name="customerId" value="${tempOdjel.id_odjela}" />
					</c:url>					
					
					<tr>
						<td> ${tempOdjel.brojOdjela} </td>
						<td> ${tempOdjel.listaOdsjeka} </td>
						<td> ${tempOdjel.id_odjela} </td>
						<td>
							<!-- display the update link -->
							<a href="${updateLink}">Update</a>
						
							<a href="${deleteLink}"
							onclick="if(!(confirm('Da li ste sigurni da zelite izbrisati odjel?')))return false">Delete </a>
						</td>
					
					</tr>
				
				</c:forEach>
						
			</table>
				
		</div>
	
	</div>
	
</body>

</html>