<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="new_co._Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Traianing and Placement Office- AMU" />
    <meta name="author" content="TPO" />
    <title>Welcome To TPO -AMU</title>
    <!-- core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/animate.min.css" rel="stylesheet" />
    <link href="css/owl.carousel.css" rel="stylesheet" />
    <link href="css/owl.transitions.css" rel="stylesheet" />
    <link href="css/prettyPhoto.css" rel="stylesheet" />
    <link href="css/main.css" rel="stylesheet" />
    <link href="css/responsive.css" rel="stylesheet" />
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>
<body id="home" class="homepage">
    <form id="form1" runat="server">
    <header id="header">
        <nav id="main-menu" class="navbar navbar-default navbar-fixed-top" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="default.aspx"><img src="images/amu.png" alt="logo"></a>
                </div>
				
                <script>
                    $('.navbar-fixed').autoHidingNavbar('setDisableAutohide', true);</script>
                    <script>
                        $("div.navbar-fixed-top").autoHidingNavbar('showOnUpscroll', true);
                    </script>
               


                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li class="scroll active"><a href="default.aspx">HOME</a></li>
                        <li class="scroll"><a href="stlogin.aspx">STUDENTS</a></li>
                        <li class="scroll"><a href="hr/hrlogin.aspx">RECRUITERS</a></li>
                        <li class="scroll"><a href="http://www.amu.ac.in/">INSTITUTE PROFILE</a></li>

                        <li class="scroll"><a href="#t">ABOUT</a></li>                       
                        <li class="scroll"><a href="#get-in-touch">CONTACT US</a></li>                        
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header>
    <!--/header-->
    <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide carousel-home" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img class="first-slide" src="images/slider/bg2.jpg" alt="First slide">
                <div class="container">
                    <div class="carousel-caption">
                        <br />
                          <h1>
                            The secret of <span class="spanred">Success in life</span> is for a man 
                           to be ready for his <span class="green">Opportunity</span><br />
                            when it comes</h1>
                        
                            <%--<asp:HyperLink ID="HyperLink1" CssClass="btn btn-1 btn-1c" NavigateUrl="http://www.brainyquote.com/quotes/authors/a/a_p_j_abdul_kalam.html"
                                runat="server">read More</asp:HyperLink>--%>
                        
                    </div>
                </div>
            </div>
            <div class="item">
                <img class="second-slide" src="images/slider/bg2.jpg" alt="Second slide">
                <div class="container">
                    <div class="carousel-caption">
                        <br />
                        <h1>
                            Man needs <span class="spanred">difficulties</span> in life because they are necessary
                            to enjoy the <span class="green">success.</span></h1>
                       <%-- <p>
                            <asp:HyperLink ID="HyperLink2" CssClass="btn btn-1 btn-1c" NavigateUrl="http://www.brainyquote.com/quotes/authors/a/a_p_j_abdul_kalam.html"
                                runat="server">read More</asp:HyperLink>
                        </p>--%>
                    </div>
                </div>
            </div>
            <div class="item">
                <img class="third-slide" src="images/slider/bg2.jpg" alt="Third slide">
                <div class="container">
                    <div class="carousel-caption">
                    <br />
                        <h1>
                            Choose<span class="span"> a job you love</span>, and you will never have to work a day in your life
                           
                        </h1>
                       
                    </div>
                </div>
            </div>
        </div>
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span><span class="sr-only">
                Previous</span> </a><a class="right carousel-control" href="#myCarousel" role="button"
                    data-slide="next"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true">
                    </span><span class="sr-only">Next</span> </a>
    </div>
    <!-- /.carousel -->
    
    <section id="cta" class="wow fadeIn">
        <div class="container">
            <div class="row">
                <div class="col-sm-9">
                <div class="border">
                    <h3>About TPO</h3>
                    </div>
                    <p> <strong class="blue">The Training & Placement Office</strong> looks after the Campus & off campus Placements
 of all the Non-Engineering Courses of the University & Coordinates
 with the respective departmental TPO's regarding the Placement & related activities  
                   <br />It is a dynamic organization running under the guidance
                     of <strong class="darkgreen"> Dr. Tamanna Siddiqui </strong>(Training Placement Officer) A.M.U. and dedicated 
                     team of some A.M.U. students.<br />
                     Placement Office handles all training and placement oriented aspects in the institute.
                     The main objective of the office is to properly channelize the communication with the industry,
                     thus Provides placement training to the job seekers like Mock Group Discussions, Interviews, and CV writing sessions, followed by Placements.

                    We also Organizes Job awareness related workshops in both Govt. and Pvt. Sector for the students of different courses.


                   
                    </p>
                </div>
                <div class="col-sm-3 text-right">
                <p>
                   <img src="images/kalam.jpg" class="img-responsive" />
                  <%-- <asp:HyperLink ID="HyperLink4"  CssClass="btn btn-1 btn-1c" NavigateUrl="http://www.brainyquote.com/quotes/authors/a/a_p_j_abdul_kalam.html" runat="server">Download Now</asp:HyperLink>--%>
                </p>
                </div>
            </div>              
            
        </div>
    </section>
    <!--/#cta-->
    <section id="features">
        <div class="container">
            <div class="section-header">
                <div class="border">
                    <h3><strong>K</strong>ey <strong>F</strong>unction's <strong>O</strong>f <strong>TPO</strong></h3>
                    </div>
                <ul>
                <li><%--<span class="blue">India 2020:</span>--%> Dissemination of Job related information in the respective Departments of the University</li>
<li>Runs Students Career Forums (student- TPO initiatives) where the students are provided career Counselling, Job training & exposure to the guest lectures and extra curricular activities.</li>
<li>Invites speakers from the corporate world for the Guidance & Motivation of the students.</li>
<li>Organizes Job & Career Fairs for Mass Placements and career guidance .</li>


                </ul>
            </div>


            <%--<div class="row">
                <div class="col-sm-6 wow fadeInLeft">
                    <img class="img-responsive" src="images/main-feature.png" alt="">
                </div>
                <div class="col-sm-6">
                <h2><strong>If you want to <span class="red">shine like a sun</span>, first <span class="red">burn like a sun.</span></strong></h2>
                    <div class="media service-box wow fadeInRight">
                        <div class="pull-left">
                            <i class="fa fa-book"></i>
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">Children Ask Kalam?</h4>
                            <p>The book is divided into six themes - education, science, children's issues, nation, spirituality and general. This book brings to fore the concerns of....</p>
                        </div>
                    </div>

                    <div class="media service-box wow fadeInRight">
                        <div class="pull-left">
                            <i class="fa fa-book"></i>
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">Wings Of Fire</h4>
                            <p>Wings of Fire is a self-portrayal of Dr. A.P.J. Abdul Kalam covering his initial life and his work in Indian space research and missile programs. </p>
                        </div>
                    </div>

                    <div class="media service-box wow fadeInRight">
                        <div class="pull-left">
                            <i class="fa fa-book"></i>
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">Turning Point</h4>
                            <p>Turning Points, is the sequel to Wings of Fire, which is an autobiography of Dr. A.P.J. Abdul Kalam. But this book talks more about the dreams and visions...</p>
                        </div>
                    </div>

                    <div class="media service-box wow fadeInRight">
                        <div class="pull-left">
                            <i class="fa fa-book"></i>
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">Target 3 Billion</h4>
                            <p>Half the world's population - 3 billion people - are below the poverty line, and 70 percent of the world's poor live in rural areas. Target 3 Billion... </p>
                        </div>
                    </div>                   
                </div>--%>
                <div class="col-md-12">

                
                </div>
            </div>
        </div>
    </section>


    <section class="cta2">
        <div class="container">
            <div class="text-center">
                <h2 class="wow fadeInUp" data-wow-duration="300ms" data-wow-delay="0ms"><strong><span>Professor </span></strong>In-Charge's Message</h2>
                <h2 class="wow fadeInUp" data-wow-duration="300ms" data-wow-delay="100ms">Look at the <strong class="blue">SKY. We are not alone.</strong> The whole universe is friendly to us<br /> and conspires only to give the best to those who dream and work.
 </h2>
 
            </div>
        </div>
    </section>
    <section id="services">
        <div class="container">

            <div class="section-header">
                <div class="border">
                    <h3>Acivities</h3>
                    </div>
                <p class="text-center wow fadeInDown"><strong>Initiated International Placements for the students of the University.

</strong>
</p>
            </div>

            <div class="row">
                <div class="features">
                    <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="0ms">
                        <div class="media service-box">
                            <div class="pull-left">
                                <i class="fa fa-line-chart"></i>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading">Workshops</h4>
                                <p>In order to inculcate the Entrepreneurship skills amongst the students, organizes Workshops for the students of technical and non technical courses on the themes like <strong class="red"> How to be an Entrepreneur </strong>
</p>
                            </div>
                        </div>
                    </div><!--/.col-md-4-->

                    <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="100ms">
                        <div class="media service-box">
                            <div class="pull-left">
                                <i class="fa fa-cubes"></i>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading">Job Fairs</h4>
                                <p>Job fair are organized with an objective to provide the students with employment opportunity with reputed companies at a single platform. It was also aimed at developing an interface between the corporate world and the AMU.</p>
                            </div>
                        </div>
                    </div><!--/.col-md-4-->

                    <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="200ms">
                        <div class="media service-box">
                            <div class="pull-left">
                                <i class="fa fa-pie-chart"></i>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading">HR Meet</h4>
                                <p>HR meet is organized by the University in order to Guide the Students the choice of a right profession ,which is one of the most dreadful tasks a student has to face in his transition from college to corporate. </p>
                            </div>
                        </div>
                    </div><!--/.col-md-4-->
                
                    <%--<div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="300ms">
                        <div class="media service-box">
                            <div class="pull-left">
                                <i class="fa fa-bar-chart"></i>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading">Presidency</h4>
                                <p>Kalam served as the 11th President of India, succeeding K. R. Narayanan. He won the 2002 presidential election with an electoral vote of 922,884, surpassing the 107,366 votes won by Lakshmi Sahgal. His term lasted from 25 July 2002 to 25 July 2007.</p>
                            </div>
                        </div>
                    </div><!--/.col-md-4-->

                    <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="400ms">
                        <div class="media service-box">
                            <div class="pull-left">
                                <i class="fa fa-language"></i>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading">Post-presidency</h4>
                                <p>After leaving office, Kalam became a visiting professor at the Indian Institute of Management Shillong, the Indian Institute of Management Ahmedabad, and the Indian Institute of Management Indore; an honorary fellow of Indian Institute of Science, Bangalore; chancellor of the Indian Institute of Space Science and Technology Thiruvananthapuram; </p>
                            </div>
                        </div>
                    </div><!--/.col-md-4-->
--%>
                  <%--  <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="500ms">
                        <div class="media service-box">
                            <div class="pull-left">
                                <i class="fa fa-bullseye"></i>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading">Death</h4>
                                <p>On 27 July 2015, Kalam travelled to Shillong to deliver a lecture on "Creating a Livable Planet Earth" at the Indian Institute of Management Shillong. At around 6:35 p.m. IST, only five minutes into his lecture, he collapsed.[84][85] He was rushed to the nearby Bethany Hospital in a critical condition; upon arrival, he lacked a pulse or any other signs of life.</p>
                            </div>
                        </div>
                    </div>--%><!--/.col-md-4-->
                </div>
            </div><!--/.row-->    
        </div><!--/.container-->
    </section>
    <!--/#services-->
    <section id="portfolio">
        <div class="container">
            <div class="section-header">
                <div class="border">
                    <h3>Our Recruiters</h3>
                    </div>
                <p class="text-center wow fadeInDown">It's when children are 15, 16 or 17 that they decide whether they want to be a doctor, an engineer, a politician or go to the Mars or moon. That is the time theystart having a dream, and that's the time you can work on them. You can help them shape their dreams.
</p>
            </div>

            <div class="text-center">
                <ul class="portfolio-filter">
                    <li><a class="active" href="#" data-filter="*">All </a></li>
                    <li><a href="#" data-filter=".creative">Technical</a></li>
                    <li><a href="#" data-filter=".corporate">Non Technical</a></li>
                </ul><!--/#portfolio-filter-->
            </div>

            <div class="portfolio-items">
                <div class="portfolio-item creative">
                    <div class="portfolio-item-inner">
                        <img class="img-responsive" src="images/portfolio/01.jpg" alt="">
                        <div class="portfolio-info">
                            <h3>TATA Consultency Service</h3>
                           
                            <a class="preview" href="images/portfolio/01.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i></a>
                        </div>
                    </div>
                </div>
                
                <div class="portfolio-item creative">
                    <div class="portfolio-item-inner">
                        <img class="img-responsive" src="images/portfolio/JK.jpg" alt="">
                        <div class="portfolio-info">
                            <h3>JK Technosoft</h3>
                           
                            <a class="preview" href="images/portfolio/JK.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i></a>
                        </div>
                    </div>
                </div>
                
                <div class="portfolio-item creative">
                    <div class="portfolio-item-inner">
                        <img class="img-responsive" src="images/portfolio/wip.jpg" alt="">
                        <div class="portfolio-info">
                            <h3>Wipro</h3>
                           
                            <a class="preview" href="images/portfolio/wip.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i></a>
                        </div>
                    </div>
                </div>
                
                <div class="portfolio-item creative">
                    <div class="portfolio-item-inner">
                        <img class="img-responsive" src="images/portfolio/hcl.jpg" alt="">
                        <div class="portfolio-info">
                            <h3>HCL</h3>
                           
                            <a class="preview" href="images/portfolio/hcl.jpg" rel="prettyPhoto"><i class="fa fa-eye"></i></a>
                        </div>
                    </div>
                </div>
              
              <!--/.portfolio-item-->
            </div>
        </div><!--/.container-->
    </section>
    <!--/#portfolio-->
    <section id="about">
        <div class="container">

            <div class="section-header">
                 <div class="border">
                    <h3>Notice</h3>
                    </div>
                <h2 class="text-center wow fadeInDown"><br />This Part is to be dynamic<br /></span></h2>
            </div>

            <div class="row">
                <div class="col-sm-6 wow fadeInLeft">
                 <div class="border">
                    <h3>Training and Placement Officer</h3>
                    </div>
                    <!-- 16:9 aspect ratio -->
                   <%-- <div class="embed-responsive embed-responsive-16by9">
                        <iframe src="//player.vimeo.com/video/135881099?title=0&amp;byline=0&amp;portrait=0&amp;color=e79b39" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                    </div>--%>
                     <div class="col-lg text-left">
                <p>
                   <img src="images/kalam.jpg" class="img-responsive" />
                  <%-- <asp:HyperLink ID="HyperLink4"  CssClass="btn btn-1 btn-1c" NavigateUrl="http://www.brainyquote.com/quotes/authors/a/a_p_j_abdul_kalam.html" runat="server">Download Now</asp:HyperLink>--%>
                </p>
                </div>
                </div>

                <div class="col-sm-6 wow fadeInRight">
                 <div class="border">
                    <h3>About</h3>
                    </div>
                    <p><b><span class="White">Dr. Tamanna Siddiqui </span></b>Training & Placement officer <br />

<i class="fa fa-phone"></i> &nbsp  +91 963 43 66 546 <br />
<i class="fa fa-envelope"></i> &nbsp ctpo.amu@amu.ac.in<br />
<i class="fa fa-envelope"></i> &nbsp  tamanna_sd@gmail.com<br />
<i class="fa fa-map-marker"> </i> &nbsp Convention Centre Opp. Dept. of Architecture,
 AMU, Aligarh <br /> </p>

                    <p> Dr Tamanna Siddiqui, Training and Placement Officer, Aligarh Muslim University has recently been awarded by the AMU Alumni Association of New England, Boston, USA for his dedicated efforts for the career development and Job Placements of AMU students.
</p>

                  
                    
                           
                        
                  

                </div>
            </div>
        </div>
    </section>
    <!--/#about-->
    <section id="testimonial">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2">

                    <div id="carousel-testimonial" class="carousel slide text-center" data-ride="carousel">
                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <p><img class="img-circle img-thumbnail" src="images/testimonial/01.jpg" alt=""></p>
                                <h4>Prof. Tariq Mansoor</h4>
                                <small> Vice-Chancellorr</small>
                                <p>The bird is powered by its own life and by its motivation. <br />2. To succeed in your mission, you must have single-minded devotion to your goal.</p>
                            </div>
                           
                        </div>

                        <!-- Controls -->
                        <div class="btns">
                            <a class="btn btn-danger btn-sm" href="#carousel-testimonial" role="button" data-slide="prev">
                                <span class="fa fa-angle-left" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="btn btn-danger btn-sm" href="#carousel-testimonial" role="button" data-slide="next">
                                <span class="fa fa-angle-right" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--/#testimonial-->
 
    <section id="get-in-touch">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title text-center wow fadeInDown">Get in Touch</h2>
                <h4 class="text-center wow fadeInDown"><strong>Thank you for contacting Us<br />

We value your contribution toward making AMU a world-class academic institution.<br />

If required, an individual of the TPO team will be in touch regarding your query or feedback withing the next 24 hours.<br /> Please be patient.<br />

Have a good day further.</strong></h4>
            </div>
        </div>
    </section>
    <!--/#get-in-touch-->
    <section id="contact">
        <div id="google-map" style="height:650px" data-latitude="27.9153239" data-longitude="78.0775201"></div>
        <div class="container-wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4 col-sm-offset-8">
                        <div class="contact-form">
                            <h4>Contact Info</h4>

                            <address>
                              <strong>TPO (General)</strong><br>
                              Opp Architecture Department<br>
                              AMU Aligarh , 202002<br>
                              <i class="fa fa-phone"></i> 096343 66546
                            </address>

                            <form id="main-contact-form" name="contact-form" method="post" action="#">
                                <div class="form-group">
                                    <input type="text" name="name" class="form-control" placeholder="Name" required>
                                </div>
                                <div class="form-group">
                                    <input type="email" name="email" class="form-control" placeholder="Email" required>
                                </div>
                                <div class="form-group">
                                    <input type="text" name="subject" class="form-control" placeholder="Subject" required>
                                </div>
                                <div class="form-group">
                                    <textarea name="message" class="form-control" rows="8" placeholder="Message" required></textarea>
                                </div>
                                  <asp:HyperLink ID="HyperLink10" CssClass="btn btn-2 btn-1d" NavigateUrl="#"
                                runat="server">Send Message</asp:HyperLink>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--/#bottom-->
    <footer id="footer">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
               Developed by TPO Team &copy; 2014 Aligarh Muslim University. 
                </div>
                <div class="col-sm-6">
                    <ul class="social-icons">
                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                       
                        <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                       
                    </ul>
                </div>
            </div>
        </div>
    </footer>
    <!--/#footer-->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="http://maps.google.com/maps/api/js?key=AIzaSyAJKqGcau5jmETXC1FMJN4U6jiHhTjKMAk"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/mousescroll.js"></script>
    <script src="js/smoothscroll.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/jquery.inview.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/main.js"></script>
    </form>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="jquery.bootstrap-autohidingnavbar.js"></script>

</body>
</html>
