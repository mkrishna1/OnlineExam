<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.util.ArrayList" %>
   <%@page import="com.onlineexam.bean.QuestionBean"%>
   <%@page import="com.onlineexam.service.ViewQuestion"%>
<!DOCTYPE html>
<html lang="en">

<!-- index.html  2016 00:22:55  -->

<!-- Mirrored from mcq.rexbd.net/user-login by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 11 Feb 2019 05:53:06 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
    <meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">

<title>Online Exam System - User Login</title>
<!-- Swiper Slider CSS -->
<link href="css/swiper.css" rel="stylesheet">
<!-- Custom Main StyleSheet CSS -->
<link href="style.css" rel="stylesheet">
<!-- Color CSS -->
<link href="css/color.css" rel="stylesheet">
<!-- Responsive CSS -->
<link href="css/responsive.css" rel="stylesheet">
<link rel="shortcut icon" href="images/favicon.png" />



</head>



<body>

<!--gt Wrapper Start-->
<div class="gt_wrapper">


    <!--Header Wrap Start-->
    <header>
    <div class="gt_top3_wrap default_width">
        <div class="container">
            <div class="gt_top3_scl_icon">
                <ul class="gt_hdr3_scl_icon">
                    <li><a href="http://www.facebook.com/thesoftking"><i class="fa fa-facebook"></i></a></li>
                    <li><a href="http://www.twitter/thesoftking"><i class="fa fa-twitter"></i></a></li>
                    <li><a href="http://plus.google.com/you"><i class="fa fa-google-plus"></i></a></li>
                    <li><a href="http://linkdin.com/thesoftking"><i class="fa fa-linkedin"></i></a></li>
                    <li><a href="http://youtube.com/thesoftking"><i class="fa fa-youtube"></i></a></li>
                </ul>
            </div>
            <div class="gt_hdr_3_ui_element">
                <ul>
                    <li><i class="fa fa-phone"></i>-044 48656573</li>
                    <li><i class="fa fa-envelope-o"></i>Preethysoftwaresolutions.com</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="gt_top3_menu default_width">
        <div class="container">
            <div class="gt-logo" style="padding:0px;height:84px;width:156px;">
                <a href="index.html"><img src="images/lo.jpg" alt=""></a>
            </div>
            <nav class="gt_hdr3_navigation">
                <!-- Responsive Buttun -->
                <a class="navbar-btn collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <!-- Responsive Buttun -->
                <ul class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <li class=""><a href="index.html">Home</a></li>
                    <li class=""><a href="about-us.html">About Us</a></li>
                    <li><a href="exam.html">Exam Category</a>
                        <ul>
                                                            <li><a href="exam/1.html">PHP Basic</a></li>
                                                            <li><a href="exam/2.html">Java </a></li>
                                                            <li><a href="exam/3.html">Dot.net </a></li>
                                                            <li><a href="exam/4.html">Android </a></li>
                                                            <li><a href="exam/5.html">SAP </a></li>
                                                            
                        </ul>
                    </li>
                    <li class=""><a href="contact-us.html">Contact Us</a></li>
                       <li><a href="register.html"> Registration</a></li>
                                         <li class="active"><a href="login.html">Log In</a></li>
                                                                           </ul>
            </nav>
        </div>
    </div>
</header>    <!--Header Wrap End-->

    <!--Main Content Wrap Start-->
    
    <!--Sub Banner Wrap Start -->
    <div class="gt_sub_banner_bg default_width">
        <div class="container" >
            <div class="gt_sub_banner_hdg  default_width" >
                <h3>Exam running</h3>
                 
                <ul>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="#">Exam running</a></li>
                </ul>
            </div>
            <div id="clockdiv"  style="background-color: #f30c0c38;COLOR:white;position: fixed;bottom:350px;right:10px;overflow: hidden; padding: 20px;font-size: 20px;	" ></div>
    
        </div>
    </div>
    <!--Sub Banner Wrap End -->

    <!--Main Content Wrap Start-->
    <form action="Abc" method="post" id="form1" name="form1">
 <div class="container">   

<center><h4 style="font-size: 15px;color:red;font-weight: bold;">YOU HAVE TO FINISH EXAM AND SUBMIT WITHIN THIS TIME. OTHERWISE YOUR EXAM WILL NOT BE EVALUATED</h4></center><br><br>
<%
ArrayList<QuestionBean> lt=(ArrayList<QuestionBean>) request.getAttribute("list");
int k=16;
for(int i=0;i<lt.size();i++) {
	QuestionBean bean=lt.get(i);%>

<h4 style="font-size: 25px;">
<%out.println((i+1)+" " +bean.getQuestions()+"<br>");%></h4><br><br>

<p style="margin-left: 10px;">
      <label>
        <input name="<%=i %>" type="radio"  value="<%=bean.getOptiona() %>"> <%=bean.getOptiona() %>
        <span style="padding-left: 10px;"> </span>
      </label>
    </p>
    <p style="margin-left: 10px;">
      <label>
        <input name="<%=i %>" type="radio"  value="<%=bean.getOptionb() %>"> <%=bean.getOptionb()%>
        <span style="padding-left: 10px;"> </span>
      </label>

    </p>
    <p style="margin-left: 10px;">
      <label>
        <input name="<%=i %>" type="radio"   value="<%=bean.getOptionc() %>"> <%=bean.getOptionc() %>
        <span style="padding-left: 10px;"> </span>
      </label>

    </p>
    <p style="margin-left: 10px;">
      <label>
        <input name="<%=i %>" type="radio"  value="<%=bean.getOptiond() %>"> <%=bean.getOptiond() %>
        <span style="padding-left: 10px;"> </span>
      </label>

    </p>
     <p style="margin-left: 10px;">
      <label>
        <input type ="hidden" name="<%=k%>"    value="<%=bean.getAnswer() %>">
        <span style="padding-left: 10px;"> </span>
      </label>

    </p>
   <% 
 k++;  

} %>
    






</div>
<div class="col-md-8 col-md-offset-3">
 <center>
 <input type="submit" value="Finish Exam" class="btn btn-success btn-block" style="margin-top: 30px; width:40%;"></center>
</div>
</form>

    <!--Footer Wrap Start-->
    <footer>
        <!--Footer Wrap Start-->
<div class="gt_footer_bg default_width">
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <div class="gt_office_wrap default_width" style="margin-top: 30px; overflow: hidden">
                    <div class="gt_foo_about widget">
                        <h5 class="text-center">About Online Exam System</h5>
                        <p><p><strong style="margin: 0px; padding: 0px; font-family: 'Open Sans', Arial, sans-serif; text-align: justify;">Online Examination Management</strong><span style="font-family: 'Open Sans', Arial, sans-serif; text-align: justify;">&nbsp;System has been developed to cater to the examination administrative and conduct needs. The system allows an easily managed interface to be used by the institution management to ensure a smooth transfer of existing hardcopies and files on to the electronic database.</span></p></p>
                        <ul>
                            <li><a href="http://www.facebook.com/thesoftking"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="http://www.twitter/thesoftking"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            <li><a href="http://linkdin.com/thesoftking"><i class="fa fa-linkedin"></i></a></li>
                            <li><a href="http://youtube.com/thesoftking"><i class="fa fa-youtube"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="foo_col_outer_wrap default_width">
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="widget">
                                <h5>Our Address</h5>
                                <ul class="gt_team1_contact_info">
                                    <li><i class="fa fa-map-marker"></i>New No.7,Old No.4,4th Avenue,Dr Ambedkar rd,Ashok Nagar,Kodambakkam,Chennai,</li>
                                    <li><i class="fa fa-phone"></i>-044 48656571</li>
                                    <li><i class="fa fa-envelope"></i>Preethysoftwaresolutions.com</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<!--Footer Wrap End-->

<!--Copyright Wrap Start-->
<div class="copyright_bg default_width">
    <div class="container">
        <div class="copyright_wrap default_width">
            <p><p>&copy;All Copyright Reserved</p></p>
                        <span><p>2019</p></span>
                    </div>
    </div>
</div>
<!--Copyright Wrap End-->    </footer>
    <!--Footer Wrap End-->
    <!--Back to Top Wrap Start-->
    <div class="back-to-top">
        <a href="#home"><i class="fa fa-angle-up"></i></a>
    </div>
    <!--Back to Top Wrap Start-->

</div>
<!--gt Wrapper End-->

    <!--Jquery Library-->
<script src="js/jquery.js"></script>
<!--Bootstrap core JavaScript-->
<script src="js/bootstrap.min.js"></script>
<!--Swiper JavaScript-->
<script src="js/swiper.jquery.min.js"></script>
<!--Accordian JavaScript-->
<script src="js/jquery.accordion.js"></script>
<!--Count Down JavaScript-->
<script src="js/jquery.downCount.js"></script>
<!--Pretty Photo JavaScript-->
<script src="js/jquery.prettyPhoto.js"></script>
<!--Owl Carousel JavaScript-->
<script src="js/owl.carousel.js"></script>
<!--Number Count (Waypoint) JavaScript-->
<script src="js/waypoints-min.js"></script>
<!--Filter able JavaScript-->
<script src="js/jquery-filterable.js"></script>
<!--WOW JavaScript-->
<script src="js/wow.min.js"></script>
<!--Custom JavaScript-->
<script src="js/custom.js"></script>

  </body>

<!-- index.html  2016 00:24:52  -->

<!-- Mirrored from mcq.rexbd.net/user-login by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 11 Feb 2019 05:53:07 GMT -->






    <script type="text/javascript">
   /*  var time_in_minutes = 15;
    var current_time = Date.parse(new Date());
    var deadline = new Date(current_time + time_in_minutes*60*1000);


    function time_remaining(endtime){
    	var t = Date.parse(endtime) - Date.parse(new Date());
    	var seconds = Math.floor( (t/1000) % 60 );
    	var minutes = Math.floor( (t/1000/60) % 60 );
    	var hours = Math.floor( (t/(1000*60*60)) % 24 );
    	var days = Math.floor( t/(1000*60*60*24) );
    	return {'total':t, 'days':days, 'hours':hours, 'minutes':minutes, 'seconds':seconds};
    }
    function run_clock(id,endtime){
    	var clock = document.getElementById(id);
    	function update_clock(){
    		var t = time_remaining(endtime);
    		clock.innerHTML = 'Time Left <br>Minutes: '+t.minutes+'<br>seconds: '+t.seconds;
    		if(t.total<=0){ clearInterval(timeinterval); }
    	}
    	update_clock(); // run function once at first to avoid delay
    	var timeinterval = setInterval(update_clock,1000);
    }
    run_clock('clockdiv',deadline); */
    
    var seconds =100;
    function secondPassed() {
        var minutes = Math.round((seconds - 30)/60),
            remainingSeconds = seconds % 60;

        if (remainingSeconds < 10) {
            remainingSeconds = "0" + remainingSeconds;
        }

        document.getElementById('clockdiv').innerHTML ='Time Left<br>minutes:'+ minutes + '<br>second:' + remainingSeconds;
        if (seconds == 0) {
            clearInterval(countdownTimer);
           //form1 is your form name
          document.form1.submit();
        } else {
            seconds--;
        }
    }
    var countdownTimer = setInterval('secondPassed()', 1000);

    
    </script>
    
  
   



</html>
