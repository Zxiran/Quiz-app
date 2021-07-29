<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Quiz Application</title>
<link href="assets/css/result.css" rel="stylesheet" >
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  
    
}
</style>
</head>
<body>


<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <a class="" href="#"style="margin-left:600px;font-size:25px;color:white;">RESULT</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
</nav>






<div class="card text-white bg-success mb-3" style="max-width: 20rem;margin-top:50px;margin-left:500px;">
  <div class="card-body">
    <h4 class="card-title">Your Score :  ${score}</h4>
  </div>
</div>


<table class="table table-hover container">
  <thead>
    <tr>
      <th scope="col"><b></b></th>
      <th scope="col"><b>Correct Answer</b></th>
      <th scope="col"><b>Your Answer</b></th>
    </tr>
  </thead>
    <tbody>
    
    
   <tr class="${color[0]}">
      <th scope="row">QUESTION : 1</th>
      <td>${corr_Ans[0]}</td>
      <td>${your_ans[0]}</td>
    </tr>
    <tr class="${color[1]}">
      <th scope="row">QUESTION : 2</th>
      <td>${corr_Ans[1]}</td>
      <td>${your_ans[1]}</td>
    </tr>
	<tr class="${color[2]}">
      <th scope="row">QUESTION :  3</th>
      <td>${corr_Ans[2]}</td>
      <td>${your_ans[2]}</td>
    </tr>
	<tr class="${color[3]}">
      <th scope="row">QUESTION :  4</th>
      <td>${corr_Ans[3]}</td>
      <td>${your_ans[3]}</td>
    </tr>
	<tr class="${color[4]}">
      <th scope="row">QUESTION :  5</th>
      <td>${corr_Ans[4]}</td>
      <td>${your_ans[4]}</td>
    </tr>
	<tr class="${color[5]}">
      <th scope="row">QUESTION :  6</th>
      <td>${corr_Ans[5]}</td>
      <td>${your_ans[5]}</td>
    </tr>
	<tr class="${color[6]}">
      <th scope="row">QUESTION :  7</th>
      <td>${corr_Ans[6]}</td>
      <td>${your_ans[6]}</td>
    </tr>
	<tr class="${color[7]}">
      <th scope="row">QUESTION :  8</th>
      <td>${corr_Ans[7]}</td>
      <td>${your_ans[7]}</td>
    </tr>
	<tr class="${color[8]}">
      <th scope="row">QUESTION :  9</th>
      <td>${corr_Ans[8]}</td>
      <td>${your_ans[8]}</td>
    </tr>
	<tr class="${color[9]}">
      <th scope="row">QUESTION :  10</th>
      <td>${corr_Ans[9]}</td>
      <td>${your_ans[9]}</td>
    </tr>
	
	
</tbody>
</table>
	<a href="home.jsp" class="btn btn-success"style="margin-top:10px;margin-left:600px;">Go To Home</a>


</body>
</html>