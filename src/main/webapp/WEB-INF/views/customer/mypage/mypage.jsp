<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sos</title>
		
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
<% String pjName = "/sosBoard"; %>
<!-- <link rel ="stylesheet" href='resources/css/test.css'> -->


		<!-- bxSlider -->
		
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">


</head>

<body class="homepage is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<header id="header">
				
				</header>
				
			<!-- Nav -->
			
				<nav id="nav">
					<div id="navImage">
						<img src="<%=pjName%>/resources/images/logo2.png" height="138px">
					</div>
										
					<ul>
						<li ><a href="<%=pjName%>/index.jsp">Home</a></li>
						
						<li ><a href="<%=pjName%>/resources/story.jsp">Story</a></li>
						<li><a href="<%=pjName%>/resources/location.jsp">Location</a>
							<ul>
								<li><a href="<%=pjName%>/resources/location/hongdae.jsp">홍대</a></li>
								<li><a href="<%=pjName%>/resources/location/anyang.jsp">안양</a></li>
								<li><a href="<%=pjName%>/resources/location/gumi.jsp">구미</a></li>
							</ul>
						
						
						</li>
						<li><a href="<%=pjName%>/resources/theme.jsp">Theme</a>
							<ul>
								<li><a href="<%=pjName%>/resources/theme/horror.jsp">공포</a></li>
								<li><a href="<%=pjName%>/resources/theme/infiltration.jsp">잠입</a></li>
								<li><a href="<%=pjName%>/resources/theme/comic.jsp">코믹</a></li>
								<li><a href="<%=pjName%>/resources/theme/fantasy.jsp">판타지</a></li>
								<li><a href="<%=pjName%>/resources/theme/Emotion.jsp">감성</a></li>
								<li><a href="<%=pjName%>/resources/colorlib-error-404-12/index.jsp">에러페이지</a></li>
							</ul>
						</li>
						<li><a href="<%=pjName%>/resources/qna.jsp">Q&A</a></li>
						<li ><a href="<%=pjName%>/resources/board.jsp">Board</a></li>
						<li class="current"><a href="<%=pjName%>/resources/mypage.jsp">Mypage</a></li>
						<li><a href="<%=pjName%>/resources/login/login.jsp">Login</a></li>
					</ul>
				</nav>


			<!-- Main -->
				<section id="main">
					<div class="container">
						<div class="row">
							<div class="col-3 col-12-medium">
								<div class="sidebar">

									<!-- Sidebar -->

										<!-- Recent Posts -->
											<section>
												<h2 class="major"><span>Recent Posts</span></h2>
												<ul class="divided">
													<li>
														<article class="box post-summary">
															<h3><a href="#">A Subheading</a></h3>
															<ul class="meta">
																<li class="icon fa-clock">6 hours ago</li>
																<li class="icon fa-comments"><a href="#">34</a></li>
															</ul>
														</article>
													</li>
													<li>
														<article class="box post-summary">
															<h3><a href="#">Another Subheading</a></h3>
															<ul class="meta">
																<li class="icon fa-clock">9 hours ago</li>
																<li class="icon fa-comments"><a href="#">27</a></li>
															</ul>
														</article>
													</li>
													<li>
														<article class="box post-summary">
															<h3><a href="#">And Another</a></h3>
															<ul class="meta">
																<li class="icon fa-clock">Yesterday</li>
																<li class="icon fa-comments"><a href="#">184</a></li>
															</ul>
														</article>
													</li>
												</ul>
												<a href="#" class="button alt">Archives</a>
											</section>

										<!-- Something -->
											<section>
												<h2 class="major"><span>Ipsum Dolore</span></h2>
												<a href="#" class="image featured"><img src="images/pic03.jpg" alt="" /></a>
												<p>
													Donec sagittis massa et leo semper scele risque metus faucibus. Morbi congue mattis mi.
													Phasellus sed nisl vitae risus tristique volutpat. Cras rutrum sed commodo luctus blandit.
												</p>
												<a href="#" class="button alt">Learn more</a>
											</section>

										<!-- Something -->
											<section>
												<h2 class="major"><span>Magna Feugiat</span></h2>
												<p>
													Rhoncus dui quis euismod. Maecenas lorem tellus, congue et condimentum ac, ullamcorper non sapien.
													Donec sagittis massa et leo semper scele risque metus faucibus. Morbi congue mattis mi.
													Phasellus sed nisl vitae risus tristique volutpat. Cras rutrum sed commodo luctus blandit.
												</p>
												<a href="#" class="button alt">Learn more</a>
											</section>

								</div>
							</div>
							<div class="col-9 col-12-medium imp-medium">
								<div class="content">

									<!-- Content -->

										<article class="box page-content">

											<header>
												<h2>Left Sidebar</h2>
												<p>Semper amet scelerisque metus faucibus morbi congue mattis</p>
												<ul class="meta">
													<li class="icon fa-clock">5 days ago</li>
													<li class="icon fa-comments"><a href="#">1,024</a></li>
												</ul>
											</header>

											<section>
												<span class="image featured"><img src="images/pic05.jpg" alt="" /></span>
												<p>
													Phasellus quam turpis, feugiat sit amet ornare in, hendrerit in lectus.
													Praesent semper mod quis eget mi. Etiam eu ante risus. Aliquam erat volutpat.
													Aliquam luctus et mattis lectus sit amet pulvinar. Nam turpis nisi
													consequat etiam lorem ipsum dolor sit amet nullam.
												</p>
											</section>

											<section>
												<h3>More intriguing information</h3>
												<p>
													Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ac quam risus, at tempus
													justo. Sed dictum rutrum massa eu volutpat. Quisque vitae hendrerit sem. Pellentesque lorem felis,
													ultricies a bibendum id, bibendum sit amet nisl. Mauris et lorem quam. Maecenas rutrum imperdiet
													vulputate. Nulla quis nibh ipsum, sed egestas justo. Morbi ut ante mattis orci convallis tempor.
													Etiam a lacus a lacus pharetra porttitor quis accumsan odio. Sed vel euismod nisi. Etiam convallis
													rhoncus dui quis euismod. Maecenas lorem tellus, congue et condimentum ac, ullamcorper non sapien
													vulputate. Nulla quis nibh ipsum, sed egestas justo. Morbi ut ante mattis orci convallis tempor.
													Etiam a lacus a lacus pharetra porttitor quis accumsan odio. Sed vel euismod nisi. Etiam convallis
													rhoncus dui quis euismod. Maecenas lorem tellus, congue et condimentum ac, ullamcorper non sapien.
													Donec sagittis massa et leo semper a scelerisque metus faucibus. Morbi congue mattis mi.
													Phasellus sed nisl vitae risus tristique volutpat. Cras rutrum commodo luctus.
												</p>
												<p>
													Phasellus odio risus, faucibus et viverra vitae, eleifend ac purus. Praesent mattis, enim
													quis hendrerit porttitor, sapien tortor viverra magna, sit amet rhoncus nisl lacus nec arcu.
													Suspendisse laoreet metus ut metus imperdiet interdum aliquam justo tincidunt. Mauris dolor urna,
													fringilla vel malesuada ac, dignissim eu mi. Praesent mollis massa ac nulla pretium pretium.
													Etiam a lacus a lacus pharetra porttitor quis accumsan odio. Sed vel euismod nisi. Etiam convallis
													rhoncus dui quis euismod. Maecenas lorem tellus, congue et condimentum ac, ullamcorper non sapien.
													Donec sagittis massa et leo semper a scelerisque metus faucibus. Morbi congue mattis mi.
													Maecenas tortor mauris, consectetur pellentesque dapibus eget, tincidunt vitae arcu.
													Vestibulum purus augue, tincidunt sit amet iaculis id, porta eu purus.
												</p>
											</section>

											<section>
												<h3>So in conclusion ...</h3>
												<p>
													Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ac quam risus, at tempus
													justo. Sed dictum rutrum massa eu volutpat. Quisque vitae hendrerit sem. Pellentesque lorem felis,
													ultricies a bibendum id, bibendum sit amet nisl. Mauris et lorem quam. Maecenas rutrum imperdiet
													vulputate. Nulla quis nibh ipsum, sed egestas justo. Morbi ut ante mattis orci convallis tempor.
													Etiam a lacus a lacus pharetra porttitor quis accumsan odio. Sed vel euismod nisi. Etiam convallis
													rhoncus dui quis euismod. Maecenas lorem tellus, congue et condimentum ac, ullamcorper non sapien.
													Donec sagittis massa et leo semper a scelerisque metus faucibus. Morbi congue mattis mi.
													Phasellus sed nisl vitae.
												</p>
												<p>
													Suspendisse laoreet metus ut metus imperdiet interdum aliquam justo tincidunt. Mauris dolor urna,
													fringilla vel malesuada ac, dignissim eu mi. Praesent mollis massa ac nulla pretium pretium.
													Maecenas tortor mauris, consectetur pellentesque dapibus eget, tincidunt vitae arcu.
													Vestibulum purus augue, tincidunt sit amet iaculis id, porta eu purus.
												</p>
											</section>

										</article>

								</div>
							</div>
							<div class="col-12">

								<!-- Features -->
									<section class="box features">
										<h2 class="major"><span>A Major Heading</span></h2>
										<div>
											<div class="row">
												<div class="col-3 col-6-medium col-12-small">

													<!-- Feature -->
														<section class="box feature">
															<a href="#" class="image featured"><img src="theme/image/Emotion/1.PNG" alt="" /></a>
															<h3><a href="#">A Subheading</a></h3>
															<p>
																Phasellus quam turpis, feugiat sit amet ornare in, a hendrerit in
																lectus dolore. Praesent semper mod quis eget sed etiam eu ante risus.
															</p>
														</section>

												</div>
												<div class="col-3 col-6-medium col-12-small">

													<!-- Feature -->
														<section class="box feature">
															<a href="#" class="image featured"><img src="theme/image/Emotion/2.PNG" alt="" /></a>
															<h3><a href="#">Another Subheading</a></h3>
															<p>
																Phasellus quam turpis, feugiat sit amet ornare in, a hendrerit in
																lectus dolore. Praesent semper mod quis eget sed etiam eu ante risus.
															</p>
														</section>

												</div>
												<div class="col-3 col-6-medium col-12-small">

													<!-- Feature -->
														<section class="box feature">
															<a href="#" class="image featured"><img src="theme/image/Emotion/3.PNG" alt="" /></a>
															<h3><a href="#">And Another</a></h3>
															<p>
																Phasellus quam turpis, feugiat sit amet ornare in, a hendrerit in
																lectus dolore. Praesent semper mod quis eget sed etiam eu ante risus.
															</p>
														</section>

												</div>
												<div class="col-3 col-6-medium col-12-small">

													<!-- Feature -->
														<section class="box feature">
															<a href="#" class="image featured"><img src="theme/image/Emotion/4.PNG" alt="" /></a>
															<h3><a href="#">And One More</a></h3>
															<p>
																Phasellus quam turpis, feugiat sit amet ornare in, a hendrerit in
																lectus dolore. Praesent semper mod quis eget sed etiam eu ante risus.
															</p>
														</section>

												</div>
												<div class="col-12">
													<ul class="actions">
														<li><a href="#" class="button large">Do Something</a></li>
														<li><a href="#" class="button alt large">Think About It</a></li>
													</ul>
												</div>
											</div>
										</div>
									</section>

							</div>
						</div>
					</div>
				</section>

			<!-- Footer -->
				<footer id="footer">
					<div class="container">
						<div class="row gtr-200">
							<div class="col-12">

								<!-- About -->
									<section>
										<h2 class="major"><span>What's this about?</span></h2>
										<p>
											This is <strong>TXT</strong>, yet another free responsive site template designed by
											<a href="http://twitter.com/ajlkn">AJ</a> for <a href="http://html5up.net">HTML5 UP</a>. It's released under the
											<a href="http://html5up.net/license/">Creative Commons Attribution</a> license so feel free to use it for
											whatever you're working on (personal or commercial), just be sure to give us credit for the design.
											That's basically it :)
										</p>
									</section>

							</div>
							<div class="col-12">

								<!-- Contact -->
									<section>
										<h2 class="major"><span>Get in touch</span></h2>
										<ul class="contact">
											<li><a class="icon brands fa-facebook-f" href="#"><span class="label">Facebook</span></a></li>
											<li><a class="icon brands fa-twitter" href="#"><span class="label">Twitter</span></a></li>
											<li><a class="icon brands fa-instagram" href="#"><span class="label">Instagram</span></a></li>
											<li><a class="icon brands fa-dribbble" href="#"><span class="label">Dribbble</span></a></li>
											<li><a class="icon brands fa-linkedin-in" href="#"><span class="label">LinkedIn</span></a></li>
										</ul>
									</section>

							</div>
						</div>

						<!-- Copyright -->
							<div id="copyright">
								<ul class="menu">
									<li>&copy; Untitled. All rights reserved</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
								</ul>
							</div>

					</div>
				</footer>

		</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>