<jsp:include page="header.jsp" />

<%   if(session.getAttribute("Username") != null)
    {
	
    	String redirectURL = "http://localhost:9090/home.jsp";
        response.sendRedirect(redirectURL);
    	
    	 } %>
    	 
    	 
    	 
<h2 style="color:red;margin-left:500px;font-weight:bolder;margin-top:20px;">${message}</h2>  

<h2 style="color:red;margin-left:500px;font-weight:bolder;margin-top:20px;">${register}</h2> 

<h2 style="color:red;margin-left:500px;font-weight:bolder;margin-top:20px;">${notregister}</h2> 

<h2 style="color:red;margin-left:500px;font-weight:bolder;margin-top:20px;">${Error}</h2> 

<h2 style="color:red;margin-left:500px;font-weight:bolder;margin-top:20px;">${pass_incorr}</h2> 



 

 

<!------ Include the above in your HEAD tag ---------->

<div class="login-reg-panel">
		<div class="login-info-box">
			<h2>Have an account?</h2>
			<p>Click Here</p>
			<label id="label-register" for="log-reg-show">Login</label>
			<input type="radio" name="active-log-panel" id="log-reg-show"  checked="checked">
		</div>
							
		<div class="register-info-box">
			<h2>Don't have an account?</h2>
			<p>Click Here</p>
			<label id="label-login" for="log-login-show">Register</label>
			<input type="radio" name="active-log-panel" id="log-login-show">
		</div>
							
		<div class="white-panel">
			<div class="login-show">
		      <form action="/login" method="post" id="login_form">
			
				<h2>LOGIN</h2>
				<input type="text" name="uname" placeholder="Username" required>
				<input type="password" name="pass" placeholder="Password" required>
				<input  value="Login" type="submit">
				<a href="">Forgot password?</a>
				</form>
			</div>
			<div class="register-show">
			  <form action="/register" method="post" id="register_form" onsubmit ="return verifyPassword()">
			 
				<h2>REGISTER</h2>
				<input type="text" id="email" name="email" placeholder="Email">
				<input type="text" name="uname" placeholder="Username">
				<input type="password" id="pswd" name="pass" placeholder="Password">
				<span id = "message" style="color:red"> </span>   
				
				<input type="password" id="cpswd"  name="cpass" placeholder="Confirm Password">
				<span id = "cmessage" style="color:red"> </span>  
				
				<input type="submit" value="Register">
				</form>
			</div>
		</div>
	</div>
	
	
	<script>

    $(document).ready(function(){
    $('.login-info-box').fadeOut();
    $('.login-show').addClass('show-log-panel');
});


$('.login-reg-panel input[type="radio"]').on('change', function() {
    if($('#log-login-show').is(':checked')) {
        $('.register-info-box').fadeOut(); 
        $('.login-info-box').fadeIn();
        
        $('.white-panel').addClass('right-log');
        $('.register-show').addClass('show-log-panel');
        $('.login-show').removeClass('show-log-panel');
        
    }
    else if($('#log-reg-show').is(':checked')) {
        $('.register-info-box').fadeIn();
        $('.login-info-box').fadeOut();
        
        $('.white-panel').removeClass('right-log');
        
        $('.login-show').addClass('show-log-panel');
        $('.register-show').removeClass('show-log-panel');
    }
});


function verifyPassword() {  
	  var pw = document.getElementById("pswd").value;  
	  var cpw = document.getElementById("cpswd").value;  
	  var validRegex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
      var email= document.getElementById("email").value;

	  if(pw == "") {  
		     document.getElementById("message").innerHTML = "**Fill the password please!";  
		     return false;  
		  }  
	  
	  if(pw.length < 8) {  
		     document.getElementById("message").innerHTML = "**Password length must be atleast 8 characters";  
		     return false;  
		  }  
		  
		  if(pw.length > 15) {  
		     document.getElementById("message").innerHTML = "**Password length must not exceed 15 characters";  
		     return false;  
		  } 
		 
	  
	  if(pw!=cpw){
		  document.getElementById("message").innerHTML = "**password and confirm password does not match!";  
		     return false;
	  }
	  
	  if (email.match(validRegex))
	  {
	 document.getElementById("register_form").submit();

	    return (true)
	  }
	  else{
	    alert("You have entered an invalid email address!")
	    return (false)
	  }

	
}



	</script>