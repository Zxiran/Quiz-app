<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js'></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body{
background-color:black;
}
.navbar-custom {
    background-color: black;
    color:white;
}
#bgvid {
    margin-top:0px;
    position: absolute; right: 0; bottom: 0;
    min-width: 100%; min-height: 100%;
    width: auto; height: auto; z-index: 0;
 
}

</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="banner">
    <video autoplay="autoplay" id="bgvid" loop="loop" poster="" title="Title">
       <source src="assets/video/quiz_bg.mp4" type=video/mp4>
    </video>
</div>



<nav class="navbar navbar-expand-lg navbar-custom" style="height:60px;">
  
  <div class="collapse navbar-collapse "  id="navbarColor01">
    <ul class="navbar-nav mr-auto" >
       <h1 style="margin-left:450px;color:white;float:right;">Instructions For Quiz</h1>
       <h2 style="margin-left:470px;color:black;background-color:yellow;" id="elem"></h2>
    </ul>
    
  </div>
</nav>


<div class="tab">
<div class="container-fluid"  >
    <div class="modal-dialog" style="margin-top:0px;width:1200px;" >
    
        <div class="modal-content" style="">
        <div class="row">
        <div class="col-lg-6">
        <h2 style="text-align:center;">Instructions </h2>
        </div>
        <div class="col-lg-6">
        <a href="/c_questions"><button type="button" id="prevBtn" onclick="nextPrev(1)" class="btn btn-green-moon  btn-fab" style="background-color:green;color:white;margin-left:350px;margin-top:20px;text-size:30px;">Start The Quiz</button></a>
        </div>
        </div>
       <pre style="font-size:20px;color:red;">
                         This quiz consists of 10 multiple-choice questions.
                         
                         
                         </pre>
<pre style="font-size:20px;font-weight:bold;color:black;">
Multiple Attempts - You will have three attempts for this quiz with your highest score being recorded 
in the grade book.

Timing - You will need to complete each of your attempts in one sitting, as you are allotted 30 minutes 
to complete each attempt.

Answers - You may review your answer-choices and compare them to the correct answers after your final 
attempt.
</pre>        

            
        </div>
         
           		    
          </div>
          
</div>


</div>


</body>
</html>