<%! public int question = 1; %>
<!DOCTYPE html>
<html>
<head>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js'></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
    background-color: white;
}

	label.btn {
	    padding: 18px 60px;
	    white-space: normal;
	    -webkit-transform: scale(1.0);
	    -moz-transform: scale(1.0);
	    -o-transform: scale(1.0);
	    -webkit-transition-duration: .3s;
	    -moz-transition-duration: .3s;
	    -o-transition-duration: .3s
	}


label.btn:hover {
    text-shadow: 0 3px 2px rgba(0, 0, 0, 0.4);
    -webkit-transform: scale(1.1);
    -moz-transform: scale(1.1);
    -o-transform: scale(1.1);
    background-color:#FFC300;
}



label.btn-block {
    text-align: left;
    position: relative
}

label .btn-label {
    position: absolute;
    left: 0;
    top: 0;
    display: inline-block;
    padding: 0 10px;
    background: #000000;
    height: 100%
}

label .glyphicon {
    top: 34%
}

.element-animation1 {
    animation: animationFrames ease .8s;
    animation-iteration-count: 1;
    transform-origin: 50% 50%;
    -webkit-animation: animationFrames ease .8s;
    -webkit-animation-iteration-count: 1;
    -webkit-transform-origin: 50% 50%;
    -ms-animation: animationFrames ease .8s;
    -ms-animation-iteration-count: 1;
    -ms-transform-origin: 50% 50%
}

.element-animation2 {
    animation: animationFrames ease 1s;
    animation-iteration-count: 1;
    transform-origin: 50% 50%;
    -webkit-animation: animationFrames ease 1s;
    -webkit-animation-iteration-count: 1;
    -webkit-transform-origin: 50% 50%;
    -ms-animation: animationFrames ease 1s;
    -ms-animation-iteration-count: 1;
    -ms-transform-origin: 50% 50%
}

.element-animation3 {
    animation: animationFrames ease 1.2s;
    animation-iteration-count: 1;
    transform-origin: 50% 50%;
    -webkit-animation: animationFrames ease 1.2s;
    -webkit-animation-iteration-count: 1;
    -webkit-transform-origin: 50% 50%;
    -ms-animation: animationFrames ease 1.2s;
    -ms-animation-iteration-count: 1;
    -ms-transform-origin: 50% 50%
}

.element-animation4 {
    animation: animationFrames ease 1.4s;
    animation-iteration-count: 1;
    transform-origin: 50% 50%;
    -webkit-animation: animationFrames ease 1.4s;
    -webkit-animation-iteration-count: 1;
    -webkit-transform-origin: 50% 50%;
    -ms-animation: animationFrames ease 1.4s;
    -ms-animation-iteration-count: 1;
    -ms-transform-origin: 50% 50%
}

@keyframes animationFrames {
    0% {
        opacity: 0;
        transform: translate(-1500px, 0px)
    }

    60% {
        opacity: 1;
        transform: translate(30px, 0px)
    }

    80% {
        transform: translate(-10px, 0px)
    }

    100% {
        opacity: 1;
        transform: translate(0px, 0px)
    }
}

@-webkit-keyframes animationFrames {
    0% {
        opacity: 0;
        -webkit-transform: translate(-1500px, 0px)
    }

    60% {
        opacity: 1;
        -webkit-transform: translate(30px, 0px)
    }

    80% {
        -webkit-transform: translate(-10px, 0px)
    }

    100% {
        opacity: 1;
        -webkit-transform: translate(0px, 0px)
    }
}

.modal-header {
    background-color: transparent;
    color: inherit
}

.modal-body {
    min-height: 300px
}
.navbar-custom {
    background-color: black;
    
    color:white;
}
.online:hover{
  background-color:red;	
  color:white;
}
.online{
	color:white;
}


.btn-green-moon {
    background-color:green;
    color: white;
    font-weight:bold;
    font-size:20px;
    font-style: oblique; 
    border: 3px solid #eee;
}

.btn-fab {
    margin-top:0px;
    height: 50px;
    width: 150px;
    border-radius: 10%;
}
.tab {
  display: none;
}
.step {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbbbbb;
  border: none;  
  border-radius: 50%;
  display: inline-block;
  opacity: 0.5;
}

.step.active {
  opacity: 1;
}

/* Mark the steps that are finished and valid: */
.step.finish {
  background-color: #4CAF50;
}

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
</head>

<body>

<embed src="assets/music/kbc.mp3" loop="true" autostart="true" width="2" height="0">


<div class="banner">
    <video autoplay="autoplay" id="bgvid" loop="loop" poster="" title="Title">
       <source src="assets/video/bg_video.mp4" type=video/mp4>
    </video>
</div>

<nav class="navbar navbar-expand-lg navbar-custom" style="height:60px;">
  
  <div class="collapse navbar-collapse "  id="navbarColor01">
    <ul class="navbar-nav mr-auto" >
       <h2 style="margin-left:470px;color:black;background-color:yellow;" id="elem"></h2>
    </ul>
    
  </div>
</nav>



<form action="/calculation" method="post" id="java_quiz" name="quiz">


<div class="container">
<div class="row">
  <div class="col-lg-6">
  
  <div class="tab">
  <div class="container-fluid" >
    <div class="modal-dialog" style="margin-top:130px;width:690px;">
    
        <div class="modal-content">
            <div class="modal-header">
                <h3>${allques[0]}</h3>
            </div>
            <div class="modal-body">
                <div class="col-xs-3 5"> </div>
                <div class="quiz" id="quiz" data-toggle="buttons"> 
                <label class="element-animation1 btn btn-lg btn-danger btn-block">
                <span class="btn-label"><i class="glyphicon glyphicon-chevron-right"></i></span> 
                <input onclick="this.className = ''"  type="radio" name="q1" value="1" id="btn1" >${option1[0]}</label>
                
                <label class="element-animation2 btn btn-lg btn-danger btn-block">
                <span class="btn-label"><i class="glyphicon glyphicon-chevron-right"></i></span>
                <input onclick="this.className = ''"  type="radio" name="q1" value="2">${option2[0]}</label> 
                <label class="element-animation3 btn btn-lg btn-danger btn-block">
 
                <span class="btn-label">
                <i class="glyphicon glyphicon-chevron-right"></i></span> 
                <input onclick="this.className = ''" type="radio" name="q1" value="3">${option3[0]}</label> 
                <label class="element-animation4 btn btn-lg btn-danger btn-block">
                
                
                <span class="btn-label">
                <i class="glyphicon glyphicon-chevron-right"></i></span>
                <input onclick="this.className = ''" type="radio" name="q1" value="4">${option4[0]}</label> </div>
            </div>
        </div>                      
      </div>
</div>
</div>
  
  
<div class="tab">
<div class="container-fluid" >
    <div class="modal-dialog" style="margin-top:130px;width:690px;">
    
        <div class="modal-content">
            <div class="modal-header">
                <h3>${allques[1]}</h3>
            </div>
            <div class="modal-body">
                <div class="col-xs-3 5"> </div>
                <div class="quiz" id="quiz" data-toggle="buttons"> 
                <label class="element-animation1 btn btn-lg btn-danger btn-block">
                <span class="btn-label"><i class="glyphicon glyphicon-chevron-right"></i></span> 
                <input onclick="this.className = ''"  type="radio" name="q2" value="1" id="btn1">${option1[1]}</label>
                
                <label class="element-animation2 btn btn-lg btn-danger btn-block">
                <span class="btn-label"><i class="glyphicon glyphicon-chevron-right"></i></span>
                <input onclick="this.className = ''"  type="radio" name="q2" value="2">${option2[1]}</label> 
                <label class="element-animation3 btn btn-lg btn-danger btn-block">
 
                <span class="btn-label">
                <i class="glyphicon glyphicon-chevron-right"></i></span> 
                <input onclick="this.className = ''" type="radio" name="q2" value="3">${option3[1]}</label> 
                <label class="element-animation4 btn btn-lg btn-danger btn-block">
                
                
                <span class="btn-label">
                <i class="glyphicon glyphicon-chevron-right"></i></span>
                <input onclick="this.className = ''" type="radio" name="q2" value="4">${option4[1]}</label> </div>
            </div>
        </div>                     
      </div>
</div>
</div>


<div class="tab">
<div class="container-fluid" >
    <div class="modal-dialog" style="margin-top:130px;width:690px;">
    
        <div class="modal-content">
            <div class="modal-header">
                <h3>${allques[2]}</h3>
            </div>
            <div class="modal-body">
                <div class="col-xs-3 5"> </div>
                <div class="quiz" id="quiz" data-toggle="buttons"> 
                <label class="element-animation1 btn btn-lg btn-danger btn-block">
                <span class="btn-label"><i class="glyphicon glyphicon-chevron-right"></i></span> 
                <input onclick="this.className = ''"  type="radio" name="q3" value="1" id="btn1">${option1[2]}</label>
                
                <label class="element-animation2 btn btn-lg btn-danger btn-block">
                <span class="btn-label"><i class="glyphicon glyphicon-chevron-right"></i></span>
                <input onclick="this.className = ''"  type="radio" name="q3" value="2">${option2[2]}</label> 
                <label class="element-animation3 btn btn-lg btn-danger btn-block">
 
                <span class="btn-label">
                <i class="glyphicon glyphicon-chevron-right"></i></span> 
                <input onclick="this.className = ''" type="radio" name="q3" value="3">${option3[2]}</label> 
                <label class="element-animation4 btn btn-lg btn-danger btn-block">
                
                
                <span class="btn-label">
                <i class="glyphicon glyphicon-chevron-right"></i></span>
                <input onclick="this.className = ''" type="radio" name="q3" value="4">${option4[2]}</label> </div>
            </div>
        </div>                     
      </div>
</div>
</div>

<div class="tab">
<div class="container-fluid" >
    <div class="modal-dialog" style="margin-top:130px;width:690px;">
    
        <div class="modal-content">
            <div class="modal-header">
                <h3>${allques[3]}</h3>
            </div>
            <div class="modal-body">
                <div class="col-xs-3 5"> </div>
                <div class="quiz" id="quiz" data-toggle="buttons"> 
                <label class="element-animation1 btn btn-lg btn-danger btn-block">
                <span class="btn-label"><i class="glyphicon glyphicon-chevron-right"></i></span> 
                <input onclick="this.className = ''"  type="radio" name="q4" value="1" id="btn1">${option1[3]}</label>
                
                <label class="element-animation2 btn btn-lg btn-danger btn-block">
                <span class="btn-label"><i class="glyphicon glyphicon-chevron-right"></i></span>
                <input onclick="this.className = ''"  type="radio" name="q4" value="2">${option2[3]}</label> 
                <label class="element-animation3 btn btn-lg btn-danger btn-block">
 
                <span class="btn-label">
                <i class="glyphicon glyphicon-chevron-right"></i></span> 
                <input onclick="this.className = ''" type="radio" name="q4" value="3">${option3[3]}</label> 
                <label class="element-animation4 btn btn-lg btn-danger btn-block">
                
                
                <span class="btn-label">
                <i class="glyphicon glyphicon-chevron-right"></i></span>
                <input onclick="this.className = ''" type="radio" name="q4" value="4">${option4[3]}</label> </div>
            </div>
        </div>                     
      </div>
</div>
</div>



<div class="tab">
<div class="container-fluid" >
    <div class="modal-dialog" style="margin-top:130px;width:690px;">
    
        <div class="modal-content">
            <div class="modal-header">
                <h3>${allques[4]}</h3>
            </div>
            <div class="modal-body">
                <div class="col-xs-3 5"> </div>
                <div class="quiz" id="quiz" data-toggle="buttons"> 
                <label class="element-animation1 btn btn-lg btn-danger btn-block">
                <span class="btn-label"><i class="glyphicon glyphicon-chevron-right"></i></span> 
                <input onclick="this.className = ''"  type="radio" name="q5" value="1" id="btn1">${option1[4]}</label>
                
                <label class="element-animation2 btn btn-lg btn-danger btn-block">
                <span class="btn-label"><i class="glyphicon glyphicon-chevron-right"></i></span>
                <input onclick="this.className = ''"  type="radio" name="q5" value="2">${option2[4]}</label> 
                <label class="element-animation3 btn btn-lg btn-danger btn-block">
 
                <span class="btn-label">
                <i class="glyphicon glyphicon-chevron-right"></i></span> 
                <input onclick="this.className = ''" type="radio" name="q5" value="3">${option3[4]}</label> 
                <label class="element-animation4 btn btn-lg btn-danger btn-block">
                
                
                <span class="btn-label">
                <i class="glyphicon glyphicon-chevron-right"></i></span>
                <input onclick="this.className = ''" type="radio" name="q5" value="4">${option4[4]}</label> </div>
            </div>
        </div>                     
      </div>
</div>
</div>



<div class="tab">
<div class="container-fluid" >
    <div class="modal-dialog" style="margin-top:130px;width:690px;">
    
        <div class="modal-content">
            <div class="modal-header">
                <h3>${allques[5]}</h3>
            </div>
            <div class="modal-body">
                <div class="col-xs-3 5"> </div>
                <div class="quiz" id="quiz" data-toggle="buttons"> 
                <label class="element-animation1 btn btn-lg btn-danger btn-block">
                <span class="btn-label"><i class="glyphicon glyphicon-chevron-right"></i></span> 
                <input onclick="this.className = ''"  type="radio" name="q6" value="1" id="btn1">${option1[5]}</label>
                
                <label class="element-animation2 btn btn-lg btn-danger btn-block">
                <span class="btn-label"><i class="glyphicon glyphicon-chevron-right"></i></span>
                <input onclick="this.className = ''"  type="radio" name="q6" value="2">${option2[5]}</label> 
                <label class="element-animation3 btn btn-lg btn-danger btn-block">
 
                <span class="btn-label">
                <i class="glyphicon glyphicon-chevron-right"></i></span> 
                <input onclick="this.className = ''" type="radio" name="q6" value="3">${option3[5]}</label> 
                <label class="element-animation4 btn btn-lg btn-danger btn-block">
                
                
                <span class="btn-label">
                <i class="glyphicon glyphicon-chevron-right"></i></span>
                <input onclick="this.className = ''" type="radio" name="q6" value="4">${option4[5]}</label> </div>
            </div>
        </div>                     
      </div>
</div>
</div>


<div class="tab">
<div class="container-fluid" >
    <div class="modal-dialog" style="margin-top:130px;width:690px;">
    
        <div class="modal-content">
            <div class="modal-header">
                <h3>${allques[6]}</h3>
            </div>
            <div class="modal-body">
                <div class="col-xs-3 5"> </div>
                <div class="quiz" id="quiz" data-toggle="buttons"> 
                <label class="element-animation1 btn btn-lg btn-danger btn-block">
                <span class="btn-label"><i class="glyphicon glyphicon-chevron-right"></i></span> 
                <input onclick="this.className = ''"  type="radio" name="q7" value="1" id="btn1">${option1[6]}</label>
                
                <label class="element-animation2 btn btn-lg btn-danger btn-block">
                <span class="btn-label"><i class="glyphicon glyphicon-chevron-right"></i></span>
                <input onclick="this.className = ''"  type="radio" name="q7" value="2">${option2[6]}</label> 
                <label class="element-animation3 btn btn-lg btn-danger btn-block">
 
                <span class="btn-label">
                <i class="glyphicon glyphicon-chevron-right"></i></span> 
                <input onclick="this.className = ''" type="radio" name="q7" value="3">${option3[6]}</label> 
                <label class="element-animation4 btn btn-lg btn-danger btn-block">
                
                
                <span class="btn-label">
                <i class="glyphicon glyphicon-chevron-right"></i></span>
                <input onclick="this.className = ''" type="radio" name="q7" value="4">${option4[6]}</label> </div>
            </div>
        </div>                     
      </div>
</div>
</div>


<div class="tab">
<div class="container-fluid" >
    <div class="modal-dialog" style="margin-top:130px;width:690px;">
    
        <div class="modal-content">
            <div class="modal-header">
                <h3>${allques[7]}</h3>
            </div>
            <div class="modal-body">
                <div class="col-xs-3 5"> </div>
                <div class="quiz" id="quiz" data-toggle="buttons"> 
                <label class="element-animation1 btn btn-lg btn-danger btn-block">
                <span class="btn-label"><i class="glyphicon glyphicon-chevron-right"></i></span> 
                <input onclick="this.className = ''"  type="radio" name="q8" value="1" id="btn1">${option1[7]}</label>
                
                <label class="element-animation2 btn btn-lg btn-danger btn-block">
                <span class="btn-label"><i class="glyphicon glyphicon-chevron-right"></i></span>
                <input onclick="this.className = ''"  type="radio" name="q8" value="2">${option2[7]}</label> 
                <label class="element-animation3 btn btn-lg btn-danger btn-block">
 
                <span class="btn-label">
                <i class="glyphicon glyphicon-chevron-right"></i></span> 
                <input onclick="this.className = ''" type="radio" name="q8" value="3">${option3[7]}</label> 
                <label class="element-animation4 btn btn-lg btn-danger btn-block">
                
                
                <span class="btn-label">
                <i class="glyphicon glyphicon-chevron-right"></i></span>
                <input onclick="this.className = ''" type="radio" name="q8" value="4">${option4[7]}</label> </div>
            </div>
        </div>                     
      </div>
</div>
</div>


<div class="tab">
<div class="container-fluid" >
    <div class="modal-dialog" style="margin-top:130px;width:690px;">
    
        <div class="modal-content">
            <div class="modal-header">
                <h3>${allques[8]}</h3>
            </div>
            <div class="modal-body">
                <div class="col-xs-3 5"> </div>
                <div class="quiz" id="quiz" data-toggle="buttons"> 
                <label class="element-animation1 btn btn-lg btn-danger btn-block">
                <span class="btn-label"><i class="glyphicon glyphicon-chevron-right"></i></span> 
                <input onclick="this.className = ''"  type="radio" name="q9" value="1" id="btn1">${option1[8]}</label>
                
                <label class="element-animation2 btn btn-lg btn-danger btn-block">
                <span class="btn-label"><i class="glyphicon glyphicon-chevron-right"></i></span>
                <input onclick="this.className = ''"  type="radio" name="q9" value="2">${option2[8]}</label> 
                <label class="element-animation3 btn btn-lg btn-danger btn-block">
 
                <span class="btn-label">
                <i class="glyphicon glyphicon-chevron-right"></i></span> 
                <input onclick="this.className = ''" type="radio" name="q9" value="3">${option3[8]}</label> 
                <label class="element-animation4 btn btn-lg btn-danger btn-block">
                
                
                <span class="btn-label">
                <i class="glyphicon glyphicon-chevron-right"></i></span>
                <input onclick="this.className = ''" type="radio" name="q9" value="4">${option4[8]}</label> </div>
            </div>
        </div>                     
      </div>
</div>
</div>


<div class="tab">
<div class="container-fluid" >
    <div class="modal-dialog" style="margin-top:130px;width:690px;">
    
        <div class="modal-content">
            <div class="modal-header">
                <h3>${allques[9]}</h3>
            </div>
            <div class="modal-body">
                <div class="col-xs-3 5"> </div>
                <div class="quiz" id="quiz" data-toggle="buttons"> 
                <label class="element-animation1 btn btn-lg btn-danger btn-block">
                <span class="btn-label"><i class="glyphicon glyphicon-chevron-right"></i></span> 
                <input onclick="this.className = ''"  type="radio" name="q10" value="1" id="btn1">${option1[9]}</label>
                
                <label class="element-animation2 btn btn-lg btn-danger btn-block">
                <span class="btn-label"><i class="glyphicon glyphicon-chevron-right"></i></span>
                <input onclick="this.className = ''"  type="radio" name="q10" value="2">${option2[9]}</label> 
                <label class="element-animation3 btn btn-lg btn-danger btn-block">
 
                <span class="btn-label">
                <i class="glyphicon glyphicon-chevron-right"></i></span> 
                <input onclick="this.className = ''" type="radio" name="q10" value="3">${option3[9]}</label> 
                <label class="element-animation4 btn btn-lg btn-danger btn-block">
                
                
                <span class="btn-label">
                <i class="glyphicon glyphicon-chevron-right"></i></span>
                <input onclick="this.className = ''" type="radio" name="q10" value="4">${option4[9]}</label> </div>
            </div>
        </div>                     
      </div>
</div>
</div>



</div>

  <div class="col-lg-6">
  <button type="button" id="prevBtn" onclick="nextPrev(-1)" class="btn btn-green-moon  btn-fab" style="background-color:red;margin-left:200px;margin-top:200px;">Previous</button>
          
   <button type="button" id="nextBtn" onclick="nextPrev(1)" class="btn btn-green-moon  btn-fab" style="margin-left:200px;margin-top:100px;">Next</button>
  </div>
  
</div>
</div>
    

 </form>
</body>


<script>

var currentTab = 0; // Current tab is set to be the first tab (0)
showTab(currentTab); // Display the current tab

function showTab(n) {
  // This function will display the specified tab of the form...
  var x = document.getElementsByClassName("tab");
  x[n].style.display = "block";
  //... and fix the Previous/Next buttons:
  if (n == 0) {
    document.getElementById("prevBtn").style.display = "none";
  } else {
    document.getElementById("prevBtn").style.display = "inline";
  }
  if (n == (x.length - 1)) {
    document.getElementById("nextBtn").innerHTML = "Submit";
  } else {
    document.getElementById("nextBtn").innerHTML = "Next";
  }
  //... and run a function that will display the correct step indicator:
  fixStepIndicator(n)
}


function nextPrev(n) {
  var x = document.getElementsByClassName("tab");
  
  x[currentTab].style.display = "none";
  
  currentTab = currentTab + n;

  if (currentTab >= x.length) {
  
    document.getElementById("java_quiz").submit();
    return false;
  }
  
  showTab(currentTab);
}


function fixStepIndicator(n) {
  // This function removes the "active" class of all steps...
  var i, x = document.getElementsByClassName("step");
  for (i = 0; i < x.length; i++) {
    x[i].className = x[i].className.replace(" active", "");
  }
  //... and adds the "active" class on the current step:
  x[n].className += " active";
}

</script>




<script type="text/javascript">

var countdown = 30 * 60 * 1000;
var element = document.getElementById('elem');
var timerId = setInterval(function(){
  countdown -= 1000;
  var min = Math.floor(countdown / (60 * 1000));
  //var sec = Math.floor(countdown - (min * 60 * 1000));  // wrong
  var sec = Math.floor((countdown - (min * 60 * 1000)) / 1000);  //correct

  if (countdown <= 0) {
     alert("Quiz Time Up !!");
     clearInterval(timerId);
     document.getElementById('java_quiz').submit();

     //doSomething();
  } else {
	  
	  if(min<10){
		  if(sec<10){
			  element.innerHTML = "<h2><b>Time Left    0"+min+" :0"+sec+"</b></h2>";
		  } 
		  
		  else{
	      element.innerHTML = "<h2><b>Time Left   0"+min+" : "+sec+"</b></h2>";
		  }

	  }else{
	  
	  if(sec<10){
		  element.innerHTML = "<h2><b>Time Left   "+min+" :0"+sec+"</b></h2>";
	  } 
	  
	  else{
      element.innerHTML = "<h2><b>Time Left   "+min+" : "+sec+"</b></h2>";
	  }
	}
  }

}, 1000); //1000ms. = 1sec.

</script>





