<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>MeusDados</title>
		
		<style type="text/css"  ></style>
		
		<!-- CSS -->
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
		
		<!-- jQuery and JS bundle w/ Popper.js -->
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
		
		<link rel="stylesheet" href="/css/bank.css">
		<script type="text/javascript" src="/js/jquery.mask.min.js"></script>
	</head>

	<body>
		<header>
			<nav class="navbar navbar-light bg-light">
			  <span class="navbar-brand mb-0 h1">MJV Bank</span>
			</nav>
		</header>
		
		<main>
			<div class="container" style="width :70%; padding-bottom: 30px;">
			
				<nav aria-label="breadcrumb">
				  <ol class="breadcrumb" style="background-color: white; padding-left: 0px;">
				     <li class="breadcrumb-item" aria-current="page"><a href='/cliente/<c:out value="${cliente.id}" />'>Home</a></li>
				    <li class="breadcrumb-item active" aria-current="page">Meus Dados</li>
				  </ol>
				</nav>
			
				<article>
					<h1 class="card-title" style="margin-bottom: 20px"><span><c:out value="${cliente.nome}" /></span></h1>
					
					<p class="card-subtitle mb-2 text-muted">
						CPF: <span class="cpf"><c:out value="${cliente.cpf}" /></span>
						<br />
						Agência: <span><c:out value="${cliente.agencia}"></c:out></span>
						<br />
						Conta: <span class="cc"><c:out value="${cliente.conta}" /> </span>
					</p>
				</article>
				
			</div>
		</main>
	</body>
	
		<script type="text/javascript">
			$(document).ready(function(){
				$('#cpf').mask("000.000.000-00");
				$('.cc').mask("#####-#");
			});
		</script>
</html>