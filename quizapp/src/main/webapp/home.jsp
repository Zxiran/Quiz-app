<jsp:include page="header.jsp" />

<%   if(session.getAttribute("Username") == null)
    {
	String redirectURL = "http://localhost:9090/login.jsp";
    response.sendRedirect(redirectURL);
	
    }%>



<div class="container-border">
<div class="row">
    <div class="col-sm-6" >
    
     <a href="instruction.jsp">
     <div class="zoom" style="margin-left:200px;margin-top:10px;"><img src="assets/images/java.jpg"  width="250" height="250">
     </div>  
     </a> 
    </div>
    <div class="col-sm-6" >
       <a href="instruction_c.jsp"><div class="zoom" style="margin-left:150px;margin-top:10px;"><img src="assets/images/C.jpg"  width="250" height="250"></div></a>
    </div>
</div>
<div class="row">    
    
    <div class="col-sm-6" >
      <a href="instruction_php.jsp"><div class="zoom" style="margin-left:200px;margin-top:40px;"> <img src="assets/images/php.jpg"  width="250" height="250"></div></a>
    </div>
    <div class="col-sm-6">
      <a href="instruction_python.jsp"><div class="zoom" style="margin-left:150px;margin-top:40px;margin-bottom:10px"><img src="assets/images/Python.png"  width="250" height="250"></div></a>
    </div>
</div>
</div>

