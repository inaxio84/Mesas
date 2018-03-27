<%@page import="java.util.ArrayList"%>
<%@page import="com.ipartek.formacion.nidea.pojo.Material"%>
<%@page import="com.ipartek.formacion.nidea.pojo.Mesa"%>
<%@page import="com.ipartek.formacion.nidea.model.MaterialDAO"%>

<jsp:include page="/templates/head.jsp"></jsp:include>
<jsp:include page="/templates/navbar.jsp"></jsp:include>
<jsp:include page="/templates/alert.jsp"></jsp:include>


<%
	MaterialDAO dao= new MaterialDAO();
	ArrayList<Material> materiales = dao.getAll();	
%>


<div class="container">

<ul>
				<% 
					Material m = null;
					for ( int i=0; i < materiales.size(); i++ ) {
						m = materiales.get(i);
				%>
					<li >
						<%=m.getId()%>.<%=m.getNombre()%> - <%=m.getPrecio()%>&euro;
					</li>
				<% } %>
			</ul>


</div>


<jsp:include page="/templates/footer.jsp"></jsp:include>