<%@page import="com.ipartek.formacion.nidea.pojo.Mesa"%>
<jsp:include page="templates/head.jsp"></jsp:include>
<jsp:include page="templates/navbar.jsp"></jsp:include>

<div class="container">

<%
	//recoger atributo del controlador si es que existe
	Mesa mesa = (Mesa)request.getAttribute("mesa");

%>

<p>Precio: <%=mesa.getPrecio() %> &euro;</p>

<form action="generar-mesa" method="post">

	<label for="patas">Numero de Patas:</label>
	<input type="number" name="patas" value="4" required>
	<br>
	<label for="dimension">Dimension:</label>
	<input type="number" name="dimension" value="1" required>
	<br>
	<label for="color">Color:</label>
	<input type="checkbox" id="cbox1" value="color_checkbox">
	<input type="color" name="color" value="#ffffff" required>
	<br>
	<label for="material">Material:</label>
	<select name="material">
	  <option value="1">Madera</option>
	  <option value="2">Acero</option>
	  <option value="3">Aluminio</option>
	  <option value="4">Plastico</option>
	</select>
	<br>
	<input type="submit" value="Calcular Precio">

</form>




</div>

<jsp:include page="templates/footer.jsp"></jsp:include>