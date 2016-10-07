<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>A2zcinema | Home</title>
<script type="text/javascript" src="static/mainfiles/js/angular.js"></script>
<link rel="stylesheet" href="static/assets/css/bootstrap.css" id="bscss">
<link rel="stylesheet" href="static/assets/css/app.css" id="maincss">
<link rel="stylesheet" href="static/assets/css/fonts.css">
<link rel="stylesheet" href="static/mainfiles/js/bootstrap.min.css"></link>
<script type="text/javascript" src="static/mainfiles/js/jquery.min.js"></script>
<script type="text/javascript"
	src="static/mainfiles/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="static/mainfiles/js/site-demos.css"></link>
<script type="text/javascript" src="static/mainfiles/js/ngStorage.js"></script>
<script src="static/js/app.js"></script>
<script src="static/js/homecontroller/home_service.js"></script>
<script src="static/js/homecontroller/home_controller.js"></script>
<script
	src="<c:url value='/static/js/aboutcontroller/aboutuscontroller.js' />"></script>
<script src="static/js/loginjs/login.js"></script>
<link rel="stylesheet" href="static/mainfiles/css/simple-line-icons.css">
<link rel="stylesheet" href="static/mainfiles/css/font-awesome.min.css">
<link rel="stylesheet" href="static/mainfiles/css/style.css" />
<script type="text/javascript" src="static/mainfiles/js/plugins.js"></script>
<script type="text/javascript" src="static/mainfiles/js/custom.js"></script>
<link rel="stylesheet" type="text/css"
	href="static/mainfiles/css/useroneprofile.css" />
<link href="static/mainfiles/slider/thumbs.css" rel="stylesheet" />
<link href="static/mainfiles/slider/ninja-slider.css" rel="stylesheet" />
<script src="static/mainfiles/slider/ninja-slider.js"></script>
<link href="static/mainfiles/slider/thumbnail-slider.css"
	rel="stylesheet" type="text/css" />
<script src="static/mainfiles/slider/thumbnail-slider.js"
	type="text/javascript"></script>
<style type="text/css">
.myrow-container {
	margin: 5px;
}
</style>

</head>

<body ng-app="profileApp">

	<div class="sidebar-menu-container" id="sidebar-menu-container">

		<div class="sidebar-menu-overlay"></div>
		<div class="sidebar-menu-inner">
			<header class="site-header">
			<div id="main-header" class="main-header header-sticky">
				<div class="inner-header clearfix" id="wrapper">
					<div class="logo">
						<a rel="nofollow" href="#"><img
							src="static/mainfiles/images/logo2.png" /></a>
					</div>
					<div class="header-right-toggle pull-right hidden-md hidden-lg">
						<a href="javascript:void(0)" class="side-menu-button"><i
							class="fa fa-bars"></i></a>
					</div>
					<nav class="main-navigation pull-right hidden-xs hidden-sm">
					<ul>
						<li><a href="${pageContext.request.contextPath}/index">Home</a></li>
						<li><a href="${pageContext.request.contextPath}/aboutus">About
								US</a></li>
						<li><a href="#" class="has-submenu">Services</a>
							<ul class="sub-menu">
								<li><a
									href="${pageContext.request.contextPath}/moviemaking">Movie
										Making</a></li>
								<li><a
									href="${pageContext.request.contextPath}/scriptwriting">Script
										Writing</a></li>
								<li><a
									href="${pageContext.request.contextPath}/storyboarding">Story
										Boarding</a></li>
								<li><a
									href="${pageContext.request.contextPath}/bannerposting">Poster
										and Banner Designing</a></li>
								<li><a
									href="${pageContext.request.contextPath}/onlinedistribution">Online
										Distribution</a></li>
							</ul></li>
						<li><a href="${pageContext.request.contextPath}/crowdfunding">Crowd
								Funding</a></li>
						<li><a href="${pageContext.request.contextPath}/moviebooking">Movie
								Tickets Booking</a></li>
						<li><a
							href="${pageContext.request.contextPath}/onlineaudition">Online
								Audition</a></li>
						<li><a href="${pageContext.request.contextPath}/contact">Contact</a></li>
						<li>
							<div class="text-center"
								ng-controller="AboutusController as ctrl">
								<div ng-if="aboutus == 1">
									<span ng-if="loginAsId ==1">
										<button type="submit" class="btn btn-success mt-lg"
											title="Profile">
											<a href="${pageContext.request.contextPath}/actorProfile">Profile</a>
										</button>
									</span> 
									<span ng-if="loginAsId == 2">
										<button type="submit" class="btn btn-success mt-lg"
											title="Profile">
											<a href="${pageContext.request.contextPath}/backSupportProfile">Profile</a>
										</button>
									</span> 
									<span ng-if="loginAsId == 3">
										<button type="submit" class="btn btn-success mt-lg"
											title="Profile">
											<a href="${pageContext.request.contextPath}/agencyProfile">Profile</a>
										</button>
									</span> &nbsp;&nbsp;
									
									
									  <button type="submit" class="btn btn-success mt-lg"
											title="Profile">
											<a href="${pageContext.request.contextPath}/agencyProfile">Logout</a>
										</button>
										<button type="submit" class="btn btn-success mt-lg"
										ng-click="logout()" title="Logout">
									      <a href="javascript:()"> Logout</a> 
									    </button>

								</div>
								<div ng-if="aboutus != 1">
									<button type="submit" class="btn btn-success mt-lg"
										id="loginPop" title="Login">
										<a> Login</a>
									</button>
									&nbsp;&nbsp;
									<button type="submit" class="btn btn-success mt-lg"
										id="registerSocial" title="Register">
										<a>Register</a>
									</button>
								</div>
							</div>
						</li>
					</ul>
					</nav>
				</div>
			</div>
			</header>
		</div>
		<section>
		<div class="myrow-container">
			<div class="row">
				<div class="col-lg-12 panel panel-default">
					<div class="col-lg-10 ">
						<div class="col-lg-3  panel panel-default">
							<h4 class="text-muted text-thin text-center">Latest News</h4>
							<div class="col-lg-12" style="overflow-y: scroll; height: 310px">
								<table class="table table-hover">
									<tbody>
										<tr>
											<td>new audtion in india</td>
										</tr>
										<tr>
											<td>new audtion in bangalore</td>
										</tr>
										<tr>
											<td>new audtion in india</td>
										</tr>
										<tr>
											<td>new audtion in bangalore</td>
										</tr>
										<tr>
											<td>new audtion in india</td>
										</tr>
										<tr>
											<td>new audtion in bangalore</td>
										</tr>
										<tr>
											<td>new audtion in bangalore</td>
										</tr>
										<tr>
											<td>new audtion in india</td>
										</tr>
										<tr>
											<td>new audtion in bangalore</td>
										</tr>
										<tr>
											<td>new audtion in bangalore</td>
										</tr>
										<tr>
											<td>new audtion in bangalore</td>
										</tr>
										<tr>
											<td>new audtion in india</td>
										</tr>
										<tr>
											<td>new audtion in bangalore</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="col-lg-6 panel panel-default">
							<h4 class="text-muted text-thin text-center">Latest
								Movies/Trailer</h4>

							<div id="ninja-slider">
								<div class="slider-inner">
									<ul>
										<li><a class="ns-img" href="static/mainfiles/img/p1.jpg"></a></li>
										<li><a class="ns-img" href="static/mainfiles/img/p2.jpg"></a></li>
										<li><a class="ns-img" href="static/mainfiles/img/p3.jpg"></a></li>
										<li><a class="ns-img" href="static/mainfiles/img/p4.jpg"></a></li>
										<li><a class="ns-img" href="static/mainfiles/img/pdabaang3.jpg"></a></li>
										<li><a class="ns-img" href="static/mainfiles/img/pJessi.jpg"></a></li>
										<li><a class="ns-img" href="static/mainfiles/img/pJusticeLeague.jpg"></a></li>
										<li><a class="ns-img" href="static/mainfiles/img/pneerdose.jpg"></a></li>
										<li><a class="ns-img" href="static/mainfiles/img/premaGeema.jpg"></a></li>
										<li><a class="ns-img" href="static/mainfiles/img/ptelebachkolli.jpg"></a></li>
										<li><a class="ns-img" href="static/mainfiles/img/ptttmovie5thoct.jpg"></a></li>
										<li>
											<div class="video">
												<iframe src="https://www.youtube.com/embed/S0kLxoV20aI"
													height="100%" width="100%" frameborder="0"></iframe>
											</div>
										</li>
										<li>
											<div class="video">
												<iframe src="https://www.youtube.com/embed/29m2livchlI"
													height="100%" width="100%" frameborder="0"></iframe>
											</div>
										</li>
										<li>
											<div class="video">
												<iframe src="https://www.youtube.com/embed/gnk48qgeZ6c"
													height="100%" width="100%" frameborder="0"></iframe>
											</div>
										</li>
										<li>
											<div class="video">
												<iframe src="https://www.youtube.com/embed/sT6ywcPNTWk"
													height="100%" width="100%" frameborder="0"></iframe>
											</div>
										</li>
									</ul>
									<div class="fs-icon" title="Expand/Close"></div>
								</div>
							</div>

						</div>

						<div class="col-lg-3  panel panel-default">
							<h4 class="text-muted text-thin text-center">Latest Events</h4>
							<div class="col-lg-12" style="overflow-y: scroll; height: 310px">
								<table class="table table-hover">
									<tbody>
										<tr>
											<td>new audtion in india</td>
										</tr>
										<tr>
											<td>new audtion in bangalore</td>
										</tr>
										<tr>
											<td>new audtion in india</td>
										</tr>
										<tr>
											<td>new audtion in bangalore</td>
										</tr>
										<tr>
											<td>new audtion in india</td>
										</tr>
										<tr>
											<td>new audtion in bangalore</td>
										</tr>
										<tr>
											<td>new audtion in bangalore</td>
										</tr>
										<tr>
											<td>new audtion in india</td>
										</tr>
										<tr>
											<td>new audtion in bangalore</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="col-lg-12">

							<div id="thumbnail-slider">
								<h4 class="text-muted text-thin text-left">Latest
									Movies/Posters</h4>
								<div class="inner">
									<ul>
										<li><a class="thumb" href="static/mainfiles/img/p1.jpg" title="Bahubali 2 commingsoon.."></a></li>
										<li><a class="thumb" href="static/mainfiles/img/p2.jpg" title="Singham 3 Tamil movie commingsoon.."></a></li>
										<li><a class="thumb" href="static/mainfiles/img/p3.jpg" title="Viraat Telgu movie commingsoon.."></a></li>
										<li><a class="thumb" href="static/mainfiles/img/p4.jpg" title="Sairat movie commingsoon.."></a></li>
										<li><a class="thumb" href="static/mainfiles/img/pdabaang3.jpg"  title="Dabangg 3 movie commingsoon.."></a></li>
										<li><a class="thumb" href="static/mainfiles/img/pJessi.jpg" title="Tamil movie commingsoon.."> </a></li>
										<li><a class="thumb" href="static/mainfiles/img/pJusticeLeague.jpg" title="JusticeLeague  commingsoon..">></a></li>
										<li><a class="thumb" href="static/mainfiles/img/pneerdose.jpg" title="Tamil movie commingsoon..">></a></li>
										<li><a class="thumb" href="static/mainfiles/img/premaGeema.jpg" title="Tamil movie commingsoon..">></a></li>
										<li><a class="thumb" href="static/mainfiles/img/ptelebachkolli.jpg" title="Tamil movie commingsoon..">></a></li>
										<li><a class="thumb" href="static/mainfiles/img/ptttmovie5thoct.jpg" title="Tamil movie commingsoon..">></a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-lg-12">
							<div id="ninja-slider" class="panel panel-default">
								<h4 class="text-muted text-thin  " margine="0px 20px 0px 0px">&nbsp;&nbsp;&nbsp;&nbsp; Latest
									Movies/Trailer</h4>
								<div class="slider-inner">
									<div id="thumbs">

										<span onclick="nslider.displaySlide(10)"><img
											src="static/mainfiles/images/play1.JPG" />
											<h5>Doddmane Hudga-Official Trailer</h5></span> <span
											onclick="nslider.displaySlide(11)"><img
											src="static/mainfiles/images/play2.JPG" />
											<h5>Banjo Official Trailer</h5></span> <span
											onclick="nslider.displaySlide(12)"><img
											src="static/mainfiles/images/play3.JPG" />
											<h5>Nani Majnu Movie Theatrical Trailer</h5></span> <span
											onclick="nslider.displaySlide(13)"><img
											src="static/mainfiles/images/play4.JPG" />
											<h5>Freaky Ali Official Trailer</h5></span>

									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-2 panel panel-default">
						<h4 class="text-muted text-thin text-center">Audition Member</h4>
						<div class="form-group panel panel-default">
							<img src="static/mainfiles/img/mSanviSundar.jpg"
								style="height: 100px; width: 120px; margin: 4px 20px 0px 30px"
								alt="" />
							<h6 class="text-center">Sanvi Sundar(Child Actress)</h6>
						</div>

						<div class="form-group panel panel-default">
							<img src="static/mainfiles/img/mDharasingh.jpg"
								style="height: 100px; width: 120px; margin: 4px 20px 0px 30px"
								alt="" />
							<h6 class="text-center">Dara Singh(Director)</h6>
						</div>

						<div class="form-group panel panel-default">
							<img src="static/mainfiles/img/mHarsha.jpg"
								style="height: 100px; width: 120px; margin: 4px 20px 0px 30px"
								alt="" />
							<h6 class="text-center">Harsha Putta(Actor)</h6>
						</div>

						<div class="form-group panel panel-default">
							<img src="static/mainfiles/img/mValli.jpg"
								style="height: 100px; width: 120px; margin: 4px 20px 0px 30px"
								alt="" />
							<h6 class="text-center">Valli(Actress)</h6>
						</div>
						<div class="form-group panel panel-default">
							<img src="static/mainfiles/img/mSuhailKhan.jpg"
								style="height: 100px; width: 120px; margin: 4px 20px 0px 30px"
								alt="" />
							<h6 class="text-center">Suhail Khan(Actor)</h6>
						</div>

					</div>
					<div class="col-lg-12 ">
						<div class="col-lg-4 panel panel-default">
							<img src="static/mainfiles/img/gif5.gif" alt="Natural" />
							<p>
								<a
									href="http://www.way2tutorial.com/html/html_marquee_image.php">DON
									(Comming Soon)</a>
							</p>
						</div>
						<div class="col-lg-4 panel panel-default">
							<!-- <marquee behavior="alternate" direction="rigth" scrollamount="15"><img src="files/img/Sipaayi.gif" width="140" height="80" alt="Natural" /></marquee> -->
							<img src="static/mainfiles/img/gif2.gif" />
							<p>
								<a href="http://www.youtube.com/embed/TJ2X4dFhAC0?enablejsapi">Comming
									Soon Movies..</a>
							</p>
						</div>
						<div class="col-lg-4 panel panel-default">
							<marquee behavior="alternate" direction="left" scrollamount="1">
								<img src="static/mainfiles/img/gif4.gif" alt="Natural" />
							</marquee>
							<p>
								<a href="https://www.youtube.com/watch?v=S0kLxoV20aI">BahuaBali(Comming
									Soon...)</a>
							</p>
						</div>

					</div>
				</div>
			</div>
		</div>
		</section>

		<nav class="sidebar-menu slide-from-left">
		<div class="nano">
			<div class="content">
				<nav class="responsive-menu">
				<ul>
					<li><a href="${pageContext.request.contextPath}/index">Home</a></li>
					<li><a href="${pageContext.request.contextPath}/aboutus">About
							US</a></li>
					<li class="menu-item-has-children"><a href="#">Services</a>
						<ul class="sub-menu">
							<li><a href="${pageContext.request.contextPath}/moviemaking">Movie
									Making</a></li>
							<li><a
								href="${pageContext.request.contextPath}/scriptwriting">Script
									Writing</a></li>
							<li><a
								href="${pageContext.request.contextPath}/storyboarding">Story
									Boarding</a></li>
							<li><a
								href="${pageContext.request.contextPath}/bannerposting">Poster
									and Banner Designing</a></li>
							<li><a
								href="${pageContext.request.contextPath}/onlinedistribution">Online
									Distribution</a></li>
						</ul></li>
					<li><a href="${pageContext.request.contextPath}/crowdfunding">Crowd
							Funding</a></li>
					<li><a href="${pageContext.request.contextPath}/moviebooking">Movie
							Tickets Booking</a></li>
					<li><a
						href="${pageContext.request.contextPath}/onlineaudition">Online
							Audition</a></li>
					<li><a href="${pageContext.request.contextPath}/contact">Contact</a></li>
					<li><div class="text-center">
							<button type="submit" class="btn btn-success mt-lg" id="loginPop"
								title="Login">Login</button>
							&nbsp;&nbsp;&nbsp;&nbsp;
							<button type="submit" class="btn btn-success mt-lg"
								id="registerSocial" title="Register">Register</button>
						</div></li>
				</ul>
				</nav>
			</div>
		</div>
		</nav>
		<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="spacing"></div>
					<div class="col-md-10">
						<!-- <div class="three spacing"></div> -->
						<p>
							Copyright &copy; 2016 A2ZCinemaWorld | Powered By : <a
								rel="nofollow" href="http://www.ishnira.com/">Ishnira
								Technologies Pvt. Ltd.</a> <a href="http://www.ishnira.com/"></a>
						</p>
					</div>
					<div class="col-md-2">
						<ul class="socials">
							<li><a href="http://facebook.com"> <i
									class="fa fa-facebook"></i>
							</a></li>
							<li><a href="http://twitter.com"> <i
									class="fa fa-twitter"></i>
							</a></li>
							<li><a href="http://dribbble.com"> <i
									class="fa fa-dribbble"></i>
							</a></li>
							<li><a href="http://tumblr.com"> <i class="fa fa-tumblr"></i>
							</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		</footer>
	</div>

	<div class="modal fade width20" id="LoginModal">
		<div class="col-lg-5">&nbsp;</div>
		<div class="col-lg-6">
			<div class="block-center mt-xl wd-xl1">
				<!-- START panel-->
				<div class="panel panel-dark panel-flat">
					<button type="button" class="close popupForgotPasswordClose"
						style="margin: 5px 7px 0px 0px;" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<div class="panel-heading-active">
						<p class="text-center pv">Login</p>
						<!-- <img src="assets/img/logo.png" alt="Image" class="block-center img-rounded" width="200"> -->
					</div>
					<div class="panel-body">
						<form class="mb-lg" name="loginform"
							ng-controller="LoginController as ctrlLogin"
							ng-submit="ctrlLogin.submit()">
							<div class="form-group has-feedback">
								<span style="color: red">{{errorMessege}}</span>
							</div>
							<div class="form-group has-feedback"
								ng-class="{ 'has-error' : loginform.userName.$invalid && !loginform.userName.$pristine }">
								<input ng-model="ctrlLogin.ulogin.userName" name="userName"
									type="text" placeholder="Username or Email" required
									class="form-control" ng-minlength="3" ng-maxlength="20">
								<p
									ng-show="loginform.userName.$touched && loginform.userName.$invalid "
									class="help-block">Username is required.</p>
								<p ng-show="loginform.userName.$error.minlength"
									class="help-block">Username is too short minlength 3.</p>
								<p ng-show="loginform.userName.$error.maxlength"
									class="help-block">Username is too long maxlength 30.</p>
							</div>
							<div class="form-group has-feedback"
								ng-class="{ 'has-error' : loginform.userName.$invalid && !loginform.userName.$pristine }">
								<input ng-model="ctrlLogin.ulogin.password" name="password"
									type="password" placeholder="Password" required
									class="form-control" ng-minlength="6" ng-maxlength="10">
								<p
									ng-show="loginform.password.$touched && loginform.password.$invalid"
									class="help-block">Password is required.</p>
								<p ng-show="loginform.password.$error.minlength"
									class="help-block">Password is too short minlength 6.</p>
								<p ng-show="loginform.password.$error.maxlength"
									class="help-block">Password is too long maxlength 10.</p>
							</div>

							<div class="clearfix">
								<div class="checkbox c-checkbox pull-left mt0">
									<label> <input id="remember_me" type="checkbox"
										name="remember" value="1"> <span class="fa fa-check"></span>Remember
										Me
									</label>
								</div>

								<div class="pull-right">
									<a href="javascript:void(0)" id="lnkButtonForgotPassword"
										class="text-muted">Forgot your password?</a>
								</div>
							</div>

							<div class="text-center">
								<button type="submit" class="btnf btn-success mt-lg">Login</button>
							</div>
						</form>
						<p class="pt-lg text-center">Need to Signup?</p>
						<div class="text-center">
							<!-- <a href="signup.html" class="btn btn-info">Register Now</a> -->
							<a href="javascript:void(0)" id="registrewithEmail"
								class="btnf btn-info">Register Now</a>
						</div>
					</div>
				</div>
				<!-- END panel-->
				<div class="p-lg text-center text-white"></div>
			</div>
		</div>
	</div>

	<!--Register Modal Popup Dialog with Social   -->
	<div class="modal fade width20" id="registerSocialModal">
		<div class="col-lg-7">&nbsp;</div>
		<div class="col-lg-5">
			<div class="block-center mt-xl wd-xl1">
				<!-- START panel-->
				<div class="panel panel-dark panel-flat">
					<button type="button" class="close popupForgotPasswordClose"
						style="margin: 5px 7px 0px 0px;" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<div class="panel-heading-active">
						<p class="text-center pv">Register</p>
					</div>
					<label class="text-muted text-thin ">Register Me As</label>
					<div class="panel-body">

						<form name="proForm" id="proForm">
							<div class="form-group has-feedback">
								<select name="profession" id="profession" class="form-control"
									required title="Please select profession."
									oninvalid="this.setCustomValidity('Please select your profession.')"
									oninput="setCustomValidity('')">
									<option value="">Select Your profession</option>
									<option value="actors">Actor/Actress/Model</option>
									<option value="backSupports">Back Support Team</option>
									<option value="regAgencys">Registration Of Agency</option>
								</select>
							</div>

							<div class="form-group has-feedback actor box" required>
								<select name="actorType" id="actorType" class="form-control"
									required>
									<option value="LeadActor">Lead Actor</option>
									<option value="LeadActress">Lead Actress</option>
									<option value="SupportingActor">Supporting Actor</option>
									<option value="SupportingActress">Supporting Actress</option>
									<option value="Modelling">Modelling</option>
								</select>
							</div>

							<div class="form-group has-feedback backSupport box" required>
								<select name="backSupportTeam" id="backSupportTeam"
									class="form-control" required>
									<option value="Director">Director</option>
									<option value="Producer">Producer</option>
									<option value="Distributor">Distributor</option>
									<option value="StoryWriter">Story Writer</option>
									<option value="MusicDirector">Music Director</option>
									<option value="Lyrist">Lyrist</option>
									<option value="PlaybackSinger">Playback Singer</option>
									<option value="LightDept">Light Dept</option>
									<option value="HairMakeup">Hair and Make Up</option>
									<option value="CostumerDesigner">Costumer Designer</option>
									<option value="Editor">Editor</option>
									<option value="StuntGuru">Stunt Guru</option>
									<option value="ScreenPlay">Screen Play Writer</option>
									<option value="CinemaAutograpgher">Cinema Autograpgher</option>
									<option value="ArtDirector">Art Director</option>
									<option value="Choreographer">Choreographer</option>
									<option value="ScriptWriter">Script Writer</option>
									<option value="ProductionManager">Production Manager</option>
									<option value="Public">Public</option>
								</select>
							</div>
							<div class="form-group has-feedback agency box" required>
								<select name="regAgency" id="regAgency" class="form-control"
									required>
									<option value="Studios">Studios</option>
									<option value="VFXGraphics">VFX - Graphics Companies</option>
									<option value="JrArtists">Jr. Artists Agency</option>
									<option value="DanceTroop">Dance Troop Agency</option>
									<option value="CarryVan">Carry Van</option>
									<option value="PosterBannerDesign">Poster,Banner
										Design & Printing</option>
									<option value="Equipments">Equipments</option>
									<option value="WaterSupplleir">Water Supplleir for
										Articial Rain</option>
									<option value="Vehicles">Vehicles</option>
									<option value="Catering">Catering</option>
									<option value="Threatres">Threatres</option>
									<option value="Other">Other Agencies</option>
								</select>
							</div>
							<div class="text-center">
								<button type="submit" id="regGoogle" class="btnf btn-info mt-lg">FACEBOOK</button>
							</div>

							<div class="text-center">
								<button type="submit" id="regGoogle"
									class="btnf btn-danger mt-lg">GOOGLE +</button>
							</div>
							<div class="text-center">
								<button type="submit" class="btnf btn-info mt-lg">EMAIL</button>
							</div>
						</form>
					</div>

				</div>
				<!-- END panel-->
				<div class="p-lg text-center text-white"></div>
			</div>
		</div>
	</div>
	<!-- Register Modal Popup Dialog  -->
	<!-- <div class="modal fade width20" id="registreModal">  
    <div class="block-center mt-xl wd-xl">
         START panel
         
         END panel
          <div class="p-lg text-center">
          </div>
      </div>
  </div> -->

	<!-- ========================================================== -->
	<div class="modal fade width20" id="registreModal">
		<div class="col-lg-3">&nbsp;</div>
		<div class="col-lg-5">
			<div class="block-center mt-xl wd-xl">
				<div class="panel panel-dark panel-flat">
					<button type="button" class="close popupForgotPasswordClose"
						style="margin: 5px 7px 0px 0px;" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<div class="panel-heading-active">
						<p class="text-center pv">Register</p>
					</div>
					<div class="panel-body">
						<form name="userForm"
							ng-controller="UserRegisterController as ctrlUser"
							ng-submit="ctrlUser.submit()" class="mb-lg">
							<div class="col-md-6">
								<input type="hidden" ng-model="ctrlUser.userdetails.signupId"
									name="signupId" />

								<div class="form-group has-feedback">
									<label for="firstName" class="text-muted">First Name<span
										style="color: red">*</span></label> <input
										ng-model="ctrlUser.userdetails.firstName" name="firstName"
										type="text" required placeholder="First Name" minlength="2"
										maxlength="50" class="form-control">
								</div>

								<div class="form-group has-feedback">
									<label for="lastName" class="text-muted">Last Name<span
										style="color: red">*</span></label> <input
										ng-model="ctrlUser.userdetails.lastName" name="lastName"
										type="text" placeholder="Last Name" minlength="2"
										maxlength="50" class="form-control">
								</div>

								<div class="form-group has-feedback">
									<label for="mobile" class="text-muted">Mobile<span
										style="color: red">*</span></label> <input
										ng-model="ctrlUser.userdetails.mobile" name="mobile"
										type="text" placeholder="Mobile" maxlength="10"
										class="form-control">
								</div>

								<div class="form-group has-feedback">
									<label for="professionCat" class="text-muted">Profession
										Category<span style="color: red">*</span>
									</label> <input ng-model="ctrlUser.userdetails.professionCat"
										name="profession" class="form-control">
								</div>

								<div class="form-group has-feedback">
									<label for="profession" class="text-muted">Profession<span
										style="color: red">*</span></label> <input
										ng-model="ctrlUser.userdetails.actorType" name="actorType"
										class="form-control"> <input
										ng-model="ctrlUser.userdetails.backSupportTeam"
										name="backSupportTeam" class="form-control"> <input
										ng-model="ctrlUser.userdetails.regAgency" name="regAgency"
										class="form-control">
								</div>
							</div>

							<div class="col-md-6" style="border-left: 1px solid #c8c8c8">

								<div class="form-group has-feedback">
									<label for="userName" class="text-muted">Username<span
										style="color: red">*</span></label> <input
										ng-model="ctrlUser.userdetails.userName" name="userName"
										type="text" minlength="2" maxlength="50"
										placeholder="Username"
										onChange="this.value=this.value.toLowerCase();"
										class="form-control">
								</div>

								<div class="form-group has-feedback">
									<label for="email" class="text-muted">Email<span
										style="color: red">*</span></label> <input
										ng-model="ctrlUser.userdetails.email" type="email"
										name="email" autocomplete="off" placeholder="Email"
										maxlength="100" class="form-control">
								</div>

								<div class="form-group has-feedback">
									<label for="password" class="text-muted">Password<span
										style="color: red">*</span></label> <input
										ng-model="ctrlUser.userdetails.password" name="password"
										type="password" placeholder="Password" minlength="6"
										maxlength="16" class="form-control">
								</div>

								<div class="form-group has-feedback">
									<label for="rePassword" class="text-muted">Re-type
										password<span style="color: red">*</span>
									</label> <input ng-model="ctrlUser.userdetails.rePassword"
										name="rePassword" type="password"
										placeholder="Re-type password" minlength="6" maxlength="16"
										class="form-control">
								</div>

							</div>
							<div class="clearfix"></div>

							<div class="text-center">
								<button type="submit" id="btnRegister" class="btnf btn-info">Register</button>
							</div>

						</form>

						<div class="text-center">
							<a href="javascript:void(0)" id="backtoLogin">Back To Login</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade width30" id="ForgotPasswordModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close popupForgotPasswordClose"
						data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">Forgot Password</h4>
				</div>
				<form class="mb-lg" method="post" role="form"
					id="ForgotPasswordForm" name="ForgotPasswordForm">
					<div class="modal-body">
						<div class="form-group has-feedback">
							<input id="txtForgotPasswordEmail" name="txtForgotPasswordEmail"
								type="text" placeholder="Enter e-mail to recover your password!"
								onChange="this.value=this.value.toLowerCase();"
								autocomplete="off" required class="form-control"> <span
								class="icon-envelope form-control-feedback text-muted"></span>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button"
							class="btn btn-sm btn-danger popupForgotPasswordClose"
							data-dismiss="modal">Cancel</button>
						<button type="button" id="btnForgotPasswordSend"
							class="btn btn-sm btn-primary">Send</button>
					</div>
				</form>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /End.modal -->

</body>

</html>