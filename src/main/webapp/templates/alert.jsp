<%@page import="com.ipartek.formacion.nidea.pojo.Alert"%>
<%
Alert alert=(Alert)request.getAttribute("alert");
if (alert!=null){
	%>
	<div class="alert alert-<%=alert.getTipo() %> alert-dismissible" role="alert">
	  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	  <strong>Error: </strong><%=alert.getMensaje() %>
	</div>
	<%
	} 
	%>