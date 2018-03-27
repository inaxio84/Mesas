<jsp:include page="templates/head.jsp"></jsp:include>
<jsp:include page="templates/navbar.jsp"></jsp:include>

<div class="container">
<%
	//Scriplet < % ... % >
	//varias sentencias 
	String nombre="pepe";
	String hora="10:15";
%>
<h2>Hello <%=nombre%></h2>
<p><%=hora %></p>

<a href="generar-mesa"> ¿Quieres comprar una mesa?</a>
<br>
<a href="calculadora"> ¿Quieres calcular?</a>
<br>
<a href="login"> ¿Quieres loguearte?</a>
</div>
<jsp:include page="templates/footer.jsp"></jsp:include>

