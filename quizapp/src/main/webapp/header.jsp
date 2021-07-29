<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="assets/css/login.css" rel="stylesheet" >
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
#bgvid {
    position: absolute; right: 0; bottom: 0;
    min-width: 100%; min-height: 100%;
    width: auto; height: auto; z-index: 0;
    background: transparent url(poster_image.jpg) no-repeat;
    background-position: center center;
    -webkit-background-size: cover !important;
    -moz-background-size: cover !important;
    -o-background-size: cover !important;
    background-size: cover !important;
}
</style>
<meta charset="ISO-8859-1">
<title>Quiz Application</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-custom" style="height:60px;">
  <a class="navbar-brand online1" href="" >Online Quiz</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor01">
    <ul class="navbar-nav mr-auto" >
    
    <%   if(session.getAttribute("Username") != null)
    { %>
      <li class="nav-item active">
        <a class="nav-link online" href="home.jsp" style="margin-right:100px;margin-left:80px;color:'white';">Home
          <span class="sr-only">(current)</span>
        </a>
      </li>
      
      <% } %>
      
      <%   if(session.getAttribute("Username") == null)
    {
    	%>
      <li class="nav-item">
        <a class="nav-link online" href="login.jsp" style="margin-right:100px;margin-left:80px;">Login/Register</a>
      </li>
       <%   }
    %>
      
    <%   if(session.getAttribute("Username") != null)
    {
    	%>
      <li class="nav-item">
        <a class="nav-link online" href="profile.jsp" style="margin-right:100px;margin-left:80px;">Profile</a>
      </li>
      <%   }
    %>
     
      <li class="nav-item">
        <a class="nav-link online" href="contact.jsp" style="margin-right:100px;margin-left:50px;">Contact Us</a>
      </li>
      

      
  <%--    <%  if(session.getAttribute("Username") != null)
    {
    	%>
      <li class="nav-item">
        <a class="navbar-brand online1" href="" ><%out.print(session.getAttribute("Username"));%></a>
      </li>
  
      <%   }
   %> --%>
   
   <%
    if(session.getAttribute("Username") != null)
    {
    	%>
    	<form action="/logout" method="post">
    	
    	<li class="nav-item">
        <button class="btn btn-danger" type="submit"   style="margin-right:100px;margin-left:320px;">Log Out</button>
         </li>
        </form>
         
    	
  <%   }
    %>
      
    </ul>
    
  </div>
</nav>
</body>
</html>

