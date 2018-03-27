<jsp:include page="/templates/head.jsp"></jsp:include>
<jsp:include page="/templates/navbar.jsp"></jsp:include>
<jsp:include page="/templates/alert.jsp"></jsp:include>
<div class="container">

	<div class="row">
		<div class="col-sm-4"></div>

		<div class="col-sm-4">
			<form class="form-signin" action="login" method="post">
				<h2 class="form-signin-heading">Por favor, regístrate con tu
					usuario</h2>
				<label for="ususario" class="sr-only">Usuario</label> <input
					type="text" class="form-control" name="usuario"
					placeholder="Usuario" required autofocus value=""> <label
					for="inputPassword" class="sr-only">Password</label> <input
					type="password" name="password" class="form-control"
					placeholder="Contraseña" value="" required>
				<div class="checkbox">
					<label> <input type="checkbox" value="remember-me">
						Recordar
					</label>
				</div>
				<button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
			</form>
		</div>
		<div class="col-sm-4"></div>

	</div>
	<!-- /row -->
</div>
<!-- /container -->

<jsp:include page="/templates/footer.jsp"></jsp:include>