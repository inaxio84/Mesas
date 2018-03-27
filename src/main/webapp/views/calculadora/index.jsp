<%@page import="com.ipartek.formacion.nidea.controller.CalculadoraController"%>
<jsp:include page="/templates/head.jsp"></jsp:include>
<jsp:include page="/templates/navbar.jsp"></jsp:include>
<jsp:include page="/templates/alert.jsp"></jsp:include>



<div class="container">

	<form action="calculadora" method="post">
	<div class=form-group>
		<label for="num1">1er numero</label>
		<input type="text" class="form-control" name="num1" placeholder="Introduce un número válido (admite decimales con punto o coma)">
		<label for="num2">2º numero</label>
		<input type="text" class="form-control" name="num2" placeholder="Introduce un número válido (admite decimales con punto o coma)">
		<br>
		<label for="operacion">Selecciona la operacion:</label>
		<select	name="operacion">
			<option value=<%=CalculadoraController.OP_SUMAR %>>Suma</option>
			<option value=<%=CalculadoraController.OP_SUMAR %>>Resta</option>
			<option value=<%=CalculadoraController.OP_SUMAR %>>Producto</option>
			<option value=<%=CalculadoraController.OP_SUMAR %>>División</option>
		</select>
	</div>
		<input type="submit" value="calcular">
	</form>

</div>

<jsp:include page="/templates/footer.jsp"></jsp:include>