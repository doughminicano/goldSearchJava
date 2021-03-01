<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css">
<head>
<meta charset="ISO-8859-1">
<title>Ninja Gold</title>

</head>

<body>
<h1>Ninja Gold Game</h1>

<h3>Your Gold:<c:out value="${count}"/></h3>

<div class="contain">

<form method="POST" action="/gold" name="farm">
<div class="card">
  <div class="card-body">
    <h4 class="card-title">Farm</h4>
    <input type="hidden" name="actionChosen" value="farm">
    <p class="card-text">
      (earns 10-20 gold)
    </p>
    <button class="btn btn-outline-warning">Find Gold!</button>
  </div>
</div>
</form>


<form method="POST" action="/gold" name="cave">
<div class="card">
  <div class="card-body">
    <h4 class="card-title">Cave</h4>
    <input type="hidden" name="actionChosen" value="cave">
    <p class="card-text">
      (earns 5-10 gold)
    </p>
    <button class="btn btn-outline-warning">Find Gold!</button>
  </div>
</div>
</form>

<form method="POST" action="/gold" name="house">
<div class="card">
  <div class="card-body">
    <h4 class="card-title">House</h4>
    <input type="hidden" name="actionChosen" value="house">
    <p class="card-text">
      (earns 2-5 gold)
    </p>
    <button class="btn btn-outline-warning">Find Gold!</button>
  </div>
</div>
</form>

<form method="POST" action="/gold" name="gamble">
<div class="card">
  <div class="card-body">
    <h4 class="card-title">Casino!</h4>
    <input type="hidden" name="actionChosen" value="casino">
    <p class="card-text">
      (earns/takes 0-50 gold)
    </p>
    <button class="btn btn-outline-warning">Find Gold!</button>
  </div>
</div>
</form>
</div>

<h3>Activities:</h3>
<div class="activities">
			<div>
				<ul>
				<c:forEach items="${activities}" var="val">
					<c:if test="${val.contains('earned')}">
						<li class="green"><c:out value="${val}"/></li>
					</c:if>
					<c:if test="${val.contains('lost')}">
						<li class="red"><c:out value="${val}"/></li>
					</c:if>					
				</c:forEach>
				</ul>
					
			</div>
		</div>			

</body>
</html>