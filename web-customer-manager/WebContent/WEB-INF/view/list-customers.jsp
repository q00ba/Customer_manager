<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
				
			 <!--  add a search box -->
            <form:form action="search" method="GET">
                Search customer: <input type="text" name="theSearchName" />
                
                <input type="submit" value="Search" class="add-button" />
            </form:form>
			
				<table>
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email</th>
						<th>Action</th>
					</tr>
					
					<!-- loop and print through customers -->
					
					<c:forEach var="tempCustomer" items="${customers }">
					
					<c:url var="updatelink" value="/customer/showFormForUpdate">
						<c:param name="customerId" value="${tempCustomer.id }" />
					</c:url>
					
					<c:url var="deletelink" value="/customer/delete">
						<c:param name="customerId" value="${tempCustomer.id }" />
					</c:url>
					
						<tr>
							<td> ${tempCustomer.firstName} </td>
							<td> ${tempCustomer.lastName} </td>
							<td> ${tempCustomer.email} </td>
							
							<td>
								<a href="${updatelink }">Update</a>
								|
								<a href="${deletelink }"
									onclick="if(!(confirm('Are you sure you want to delete this customer?')))return false">Delete</a>
							</td>
						</tr>
					
					</c:forEach>
				
				</table>
			
			</div>
		
		</div>
		
		</div>
	
	</body>
</html>