<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Quiz Application</title>
<link href="assets/css/profile.css" rel="stylesheet" >
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  background-image: url('assets/images/profile.jpg');
  background-repeat: no-repeat;
  background-size: cover;
    
}
</style>
</head>
<body>



<form class="container" style="width:50%;margin-top:100px;">
  <fieldset>
    <legend>Edit Profile</legend>
    
    <div class="form-group">
      <label for="uname" class=" fa fa-user icon">Username</label>
      <input type="text" class="form-control" id="uname" placeholder="Enter Username">
    </div>
	<div class="form-group">
      <label for="exampleInputEmail1" class="fa fa-envelope icon">Email address</label>
      <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    </div>
    <div class="form-group">
      <label for="pass" class="fa fa-key icon">Password</label>
       <input type="password" class="form-control" id="pass" placeholder="Password">
    </div>
	<div class="form-group">
      <label for="cpass" class="fa fa-key icon">Confirm Password</label>
       <input type="password" class="form-control" id="cpass" placeholder="Password">
    </div>
    
	
    <button type="submit" class="btn btn-primary">Submit</button>
	<a href="home.jsp" class="btn btn-danger">Go To Home</a>

  </fieldset>
</form>

</body>
</html>