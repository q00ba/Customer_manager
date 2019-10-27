<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>
	<head>
		<title>List Customers</title>
		
		<!-- reference style sheet -->
		
		<link type="text/css" rel="stylesheet" 
			href="${pageContext.request.contextPath}/resources/css/style.css" />
				
	</head>
	
	<body>
	
		<div id="wraper">
			<div id ="header">
				<h2> CM - Customer Manager</h2>
			</div>
		<div id="container">
			<div id="content">
			
			<!-- button : Add Customer -->
			
			<input type="button" value="Add Customer" 
				onclick="window.location.href='showFormForAdd'; return false" 
				class="add-button"/>
			
				<table>
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email</th>
					</tr>
					
					<!-- loop and print through customers -->
					
					<c:forEach var="tempCustomer" items="${customers }">
					
						<tr>
							<td> ${tempCustomer.firstName} </td>
							<td> ${tempCustomer.lastName} </td>
							<td> ${tempCustomer.email} </td>
						</tr>
					
					</c:forEach>
				
				</table>
			
			</div>
		
		</div>
		
		</div>
	
	</body>
</html>