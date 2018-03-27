<jsp:include page="/templates/head.jsp"></jsp:include>
<jsp:include page="/templates/navbar.jsp"></jsp:include>
<div class="container">
	<h1>Resultado de la operacion:</h1>
	
	<%
	float resul=(Float)request.getAttribute("resultado");
	%>
	
	<%=resul %>

</div>

<jsp:include page="/templates/footer.jsp"></jsp:include>