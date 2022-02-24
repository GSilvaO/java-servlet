<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List,br.com.gerenciador.alura.modelo.Empresa" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>

<c:url value="/entrada" var="entrada" />

</head>
<body>
	<c:import url="logout-parcial.jsp" />
	
	Usuario Logado: ${usuarioLogado.login }
	
	<br>
	<br>
	<br>

	<c:if test="${not empty empresa}">
		Empresa ${ empresa } cadastrada com sucesso!
	</c:if>
	<br>	 
	<strong>Lista empresas</strong>
	<ul>
		<c:forEach items="${empresas}" var="empresa">
			<li>
				${empresa.nome} - <fmt:formatDate value="${empresa.dataAbertura }" pattern="dd/MM/yyyy"/> 
				<a href="${entrada}?acao=MostraEmpresa&id=${empresa.id}">Editar</a>
				<a href="${entrada}?acao=RemoveEmpresa&id=${empresa.id}">Remover</a>
			</li>
		</c:forEach>
	</ul>
</body>
</html>