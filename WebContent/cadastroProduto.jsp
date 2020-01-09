<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de Produto</title>
<script src="resources/javascript/jquery.min.js" type="text/javascript"></script>
<script src="resources/javascript/jquery.maskMoney.min.js"
	type="text/javascript"></script>
<link rel="stylesheet" href="resources/css/cadastro.css">
</head>
<body>
	<a href="acessoliberado.jsp"><img src="resources/img/inicio.jpg"
		alt="Inicio" title="Inicio" width="32px" height="32px" /></a>
	<a href="index.jsp"><img src="resources/img/sair.png" alt="Sair"
		title="Sair" width="32px" height="32px" /></a>
	<center>
		<h1>Cadastro de Produto</h1>

		<h3 style="color: blue;">${msg}</h3>
	</center>

	<form action="salvarProduto" method="post" id="formProduto"
		onsubmit="return validarCampos()? true : false;">
		<ul class="form-style-1">
			<li>
				<table>
					<tr>
						<td>Código:</td>
						<td><input style="width: 50px" type="text"
							readonly="readonly" id="id" name="id" value="${produto.id}"
							class="field-long"></td>
					</tr>
					<tr>
						<td>Nome do Produto:</td>
						<td><input type="text" id="nome" name="nome" maxlength="100"
							value="${produto.nome}"></td>
					</tr>

					<tr>
						<td>Quantidade Un:</td>
						<td><input style="width: 100px" type="number" id="quantidade"
							name="quantidade" value="${produto.quantidade}" maxlength="10"></td>
					</tr>
					<tr>
						<td>Valor R$:</td>
						<td><input style="width: 100px" type="text" id="valor"
							name="valor" data-thousands="." data-decimal=","
							value="${produto.valor}" maxlength="12"></td>
					</tr>
					<tr>

						<td>Categoria:</td>
						<td><select id="categorias" name="categoria_id">
								<c:forEach items="${categorias}" var="cat">

									<option value="${cat.id}" id="${cat.id}"
										<c:if test="${cat.id == produto.categoria_id}">
						
						
						<c:out value= "selected=selected"/>
						</c:if>>
										${cat.nome}</option>


								</c:forEach>
						</select>
					</tr>







					<tr>
						<td></td>
						<td><input type="submit" value="Salvar" style="width: 100px">
							<input type="submit" value="Cancelar" style="width: 100px"
							onclick="document.getElementById('formProduto').action = 'salvarProduto?acao=reset'"></td>
					</tr>
				</table> <script type="text/javascript">
					function validarCampos() {
						if (document.getElementById("nome").value == '') {
							alert("Informe o nome do Produto!!");
							return false;

						} else if (document.getElementById("quantidade").value == '') {
							alert("Informe a Quantidade!!");
							return false;

						} else if (document.getElementById("valor").value == '') {
							alert("Informe o Valor!!");
							return false;

						}
						return true;
					}
				</script>

			</li>
		</ul>
	</form>


	<table>
		<link rel="stylesheet" href="resources/css/tabela.css">
		<caption>Produtos cadastrados</caption>
		<tr>
			<th>Id</th>
			<th>Nome</th>
			<th>Quantidade</th>
			<th>Valor R$</th>
			<th>Delete</th>
			<th>Editar</th>
		</tr>
		<c:forEach items="${produtos}" var="produto">
			<tr>
				<td style="width: 150px"><c:out value="${produto.id}">
					</c:out></td>
				<td style="width: 150px"><c:out value="${produto.nome}">
					</c:out></td>
				<td><c:out value="${produto.quantidade}"></c:out></td>
				<td><c:out value="${produto.valor}"></c:out></td>

				<td><a href="salvarProduto?acao=delete&produto=${produto.id}"
					onclick="return confirm('Confirmar a Exclusão?')"><img
						src="resources/img/excluir.png" alt="excluir" title="Excluir"
						width="20px" height="20px"> </a></td>
				<td><a href="salvarProduto?acao=editar&produto=${produto.id}"><img
						alt="Editar" title="Editar" src="resources/img/editar.jpg"
						width="20px" height="20px"></a></td>
			</tr>
		</c:forEach>
	</table>


</body>
<script type="text/javascript">
	$(function() {
		$('#valor').maskMoney();
	})
</script>
</html>