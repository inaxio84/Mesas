<%@page import="com.ipartek.formacion.nidea.pojo.Mesa"%>
<jsp:include page="templates/head.jsp"></jsp:include>
<jsp:include page="templates/navbar.jsp"></jsp:include>

<div class="container">

	<%
		// recoger atributo del controlador, si es que existe
		Mesa mesa = (Mesa) request.getAttribute("mesa");
		String[] materiales = (String[]) request.getAttribute("materiales");
		int[] materialesCodigo = (int[]) request.getAttribute("materialesCodigo");
	%>

	<p>
		Precio:
		<%=mesa.getPrecio()%>
		&euro;
	</p>


	<form action="generar-mesa" method="post">


		<label for="patas">Numero de patas:</label> <input type="number"
			name="patas" value="<%=mesa.getNumeroPatas()%>" required> <br>

		<label for="dimension">Dimension en m2:</label> <input type="number"
			name="dimension" value="<%=mesa.getDimension()%>" required> <br>

		<label for="material">Selecciona Material:</label> <select
			name="material">
			<%
				for (int i = 0; i < materiales.length; i++) {
			%>
			<option value="<%=materialesCodigo[i]%>"
				<%=(mesa.getMaterial() == materialesCodigo[i]) ? "selected" : ""%>>
				<%=materiales[i]%>
			</option>
			<%
				}
			%>
		</select>


		<p>Color: 
		   <input type="color" value="<%=mesa.getColor()%>" disabled>
		</p>
		
		<p>¿ Quieres Personalizar el Color ? 
			<input type="checkbox" name="custom" onclick="showColor()" id="custom" <%=(mesa.isCustom())?"checked":""%>>
			<input type="color" name="color" id="color" value="<%=mesa.getColor()%>"> 
		</p>

		<br> <input type="submit" value="Calcular Precio">

	</form>

</div>

<script>
	
	showColor();
	
	function showColor(){
		
		var custom = document.getElementById('custom');
		var color = document.getElementById('color');
		
		if ( custom.checked ){
			color.style.display = 'block';
		}else{
			color.style.display = 'none';
		}		
	}	
	
</script>

<jsp:include page="templates/footer.jsp"></jsp:include>