<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Brochem.index"  EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
    <meta http-equiv="Content-language" content="tr">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Brochem</title>

    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <%-- <link href="css/opensans.css" rel='stylesheet' type='text/css'> />
    <link href="css/benchnine.css" rel='stylesheet' type='text/css' />--%>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:600italic,400,800,700,300&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=BenchNine:300,400,700&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <script src="js/modernizr.js"></script>
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header class="top-header">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-5 header-logo">
                            <p>
                                <br>
                                <a href="index.html">
                            </p>
                            <img src="img/rsz_brochemlogo3.png" alt="" class="img-responsive logo"></a>
                        </div>

                        <div class="col-md-7">
                            <nav class="navbar navbar-default">
                                <div class="container-fluid nav-bar">
                                    <!-- Brand and toggle get grouped for better mobile display -->
                                    <div class="navbar-header">
                                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                                            <span class="sr-only">Toggle navigation</span>
                                            <span class="icon-bar">
                                                <span class="icon-bar"></span></span>
                                            <span class="icon-bar"></span>
                                        </button>
                                    </div>

                                    <!-- Collect the nav links, forms, and other content for toggling -->
                                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                                        <ul class="nav navbar-nav navbar-right">
                                            <%-- <li><a class="menu active" href="#home"><%=Resources.Resource.menuHome %></a></li>
                                            <li><a class="menu" href="#about"><%=Resources.Resource.menuAboutUs %></a></li>
                                            <li><a class="menu" href="#production"><%=Resources.Resource.menuServices %></a></li>
                                            <li><a class="menu" href="#contact"><%=Resources.Resource.menuContact %></a></li>--%>
                                            <li><a class="menu active" href="#home">
                                                <asp:Label ID="lblHome" runat="server"></asp:Label></a></li>
                                            <li><a class="menu" href="#about">
                                                <asp:Label ID="lblAbout" runat="server"></asp:Label></a></li>
                                            <li><a class="menu" href="#service">
                                                <asp:Label ID="lblEducation" runat="server"></asp:Label></a></li>
                                            <li><a class="menu" href="#production">
                                                <asp:Label ID="lblService" runat="server"></asp:Label></a></li>
                                            <li><a class="menu" href="#contact">
                                                <asp:Label ID="lblContact" runat="server"></asp:Label></a>
                                                <asp:ImageButton ID="imgTR" runat="server" ImageUrl="~/img/tr.png" OnClick="imgTR_Click" />
                                                <asp:ImageButton ID="imgEN" runat="server" ImageUrl="~/img/eng.png" OnClick="imgEN_Click" />
                                            </li>
                                        </ul>

                                    </div>
                                    <!-- /navbar-collapse -->
                                </div>
                                <!-- / .container-fluid -->
                            </nav>
                        </div>
                    </div>
                </div>
            </header>
            <!-- end of header area -->

            <section class="slider" id="home">
                <div class="container-fluid">
                    <div class="row">
                        <div id="carouselHacked" class="carousel slide carousel-fade" data-ride="carousel">
                            <div class="header-backup"></div>
                            <!-- Wrapper for slides -->
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img src="img/slide-one.jpg" alt="">
                                    <div class="carousel-caption">
                                        <h1>
                                            <asp:Label runat="server" ID="lblCarouselH1"></asp:Label></h1>
                                        <p>
                                            <asp:Label runat="server" ID="lblCarouselP1"></asp:Label></p>
                                        <%--<asp:Button runat="server"  CssClass="button" ID="btnCarousel1" />--%>
                                        <button>
                                            <asp:Label runat="server" ID="lblCarousel1"></asp:Label></button>
                                    </div>
                                </div>
                                <div class="item">
                                    <img src="img/slide-two.jpg" alt="">
                                    <div class="carousel-caption">
                                        <h1>
                                            <asp:Label runat="server" ID="lblCarouselH2"></asp:Label></h1>
                                        <p>
                                            <asp:Label runat="server" ID="lblCarouselP2"></asp:Label></p>
                                        <%--<asp:Button runat="server" CssClass="btn btn-lg btn-info" ID="btnCarousel2" />--%>
                                        <button>
                                            <asp:Label runat="server" ID="lblCarousel2"></asp:Label></button>
                                    </div>
                                </div>
                                <div class="item">
                                    <img src="img/slide-three.jpg" alt="">
                                    <div class="carousel-caption">
                                        <h1>
                                            <asp:Label runat="server" ID="lblCarouselH3"></asp:Label></h1>
                                        <p>
                                            <asp:Label runat="server" ID="lblCarouselP3"></asp:Label></p>
                                        <%--<asp:Button runat="server" CssClass="btn-info" ID="btnCarousel3" />--%>
                                        <button>
                                            <asp:Label runat="server" ID="lblCarousel3"></asp:Label></button>
                                    </div>
                                </div>
                                <%--  <div class="item">
                                    <img src="img/slide-four.jpg" alt="">
                                    <div class="carousel-caption">
                                        <h1>providing</h1>
                                        <p>highquality service for men &amp; women</p>
                                        <button>learn more</button>
                                    </div>
                                </div>--%>
                            </div>
                            <!-- Controls -->
                            <a class="left carousel-control" href="#carouselHacked" role="button" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                <span class="sr-only">
                                    <asp:Label ID="lblCarouselPrev" runat="server"></asp:Label></span>
                            </a>
                            <a class="right carousel-control" href="#carouselHacked" role="button" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                <span class="sr-only">
                                    <asp:Label ID="lblCarouselNext" runat="server"></asp:Label></span>
                            </a>
                        </div>
                    </div>
                </div>
            </section>
            <!-- end of slider section -->

            <!-- about section -->
            <section class="about text-center" id="about">
                <div class="container">
                    <div class="row">
                        <h2>
                            <asp:Label ID="partHeaderAboutUs" runat="server"></asp:Label></h2>

                         <%--<div class="col-md-4 col-sm-6">--%>
                            <div class="single-about-detail clearfix">
                                <div class="about-img">
                                    <img class="img-responsive" src="img/itemALL.jpg" alt="">
                                </div>
                                <div class="about-details">
                                    
                                    <p style="padding-top: 30px; padding-bottom: 60px">
                                        <asp:Label runat="server" ID="p1AboutUs"></asp:Label>
                                    
                                    </p>
                                </div>
                            </div>
                        <%--</div>--%>

                        <%--<div class="col-md-4 col-sm-6">
                            <div class="single-about-detail clearfix">
                                <div class="about-img">
                                    <img class="img-responsive" src="img/item1.jpg" alt="">
                                </div>
                                <div class="about-details">
                              
                                    <p style="padding-top: 30px; padding-bottom: 60px">
                                        <asp:Label runat="server" ID="p1AboutUs"></asp:Label>
                              
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6">
                            <div class="single-about-detail">
                                <div class="about-img">
                                    <img class="img-responsive" src="img/item2.jpg" alt="">
                                </div>
                                <div class="about-details">
                              
                                    <p style="padding-top: 30px; padding-bottom: 40px">
                                        <asp:Label runat="server" ID="p2AboutUs"></asp:Label>
                              
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6">
                            <div class="single-about-detail">
                                <div class="about-img">
                                    <img class="img-responsive" src="img/item3.jpg" alt="">
                                </div>
                                <div class="about-details">
                                    <p style="padding-top: 30px; padding-bottom: 25px">
                                        <asp:Label runat="server" ID="p3AboutUs"></asp:Label>
                
                                    </p>
                                </div>
                            </div>
                        </div>--%>
                    </div>
                </div>  
            </section>
            <!-- end of about section -->

             <!-- service section starts here -->
            <section class="service text-center" id="service">
                <div class="container">
                    <div class="row">
                        <h2>
                            <asp:Label ID="lblheaderEducation" runat="server"></asp:Label></h2>
                        <h4>
                            <asp:Label runat="server" ID="lblPartEducation1"></asp:Label></h4>
                        <h4>
                            <asp:Label runat="server" ID="lblPartEducation2"></asp:Label></h4>
                        <h4>
                            <asp:Label runat="server" ID="lblPartEducation3" ></asp:Label></h4>
                        <h4>
                            <asp:Label runat="server" ID="lblPartEducation4"></asp:Label></h4>
                        <h4>
                            <asp:Label runat="server" ID="lblPartEducation5" ></asp:Label></h4>
                        <h4>
                            <asp:Label runat="server" ID="lblPartEducation6" ></asp:Label></h4>
                         <h4>
                            <asp:Label runat="server" ID="lblPartEducation7" ></asp:Label></h4>
                         <h4>
                            <asp:Label runat="server" ID="lblPartEducation8" ></asp:Label></h4>
                         <h4>
                            <asp:Label runat="server" ID="lblPartEducation9" ></asp:Label></h4>
                         <h4>
                            <asp:Label runat="server" ID="lblPartEducation10" ></asp:Label></h4>
                         <h4>
                            <asp:Label runat="server" ID="lblPartEducation11" ></asp:Label></h4>
                         <h4>
                            <asp:Label runat="server" ID="lblPartEducation12" ></asp:Label></h4>
                        <%--<div class="col-md-3 col-sm-6">
                            <div class="single-service">
                                <div class="single-service-img">
                                    <div class="service-img">
                                        <img class="heart img-responsive" src="img/service1.png" alt="">
                                    </div>
                                </div>
                                <h3>Heart problem</h3>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="single-service">
                                <div class="single-service-img">
                                    <div class="service-img">
                                        <img class="brain img-responsive" src="img/service2.png" alt="">
                                    </div>
                                </div>
                                <h3>brain problem</h3>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="single-service">
                                <div class="single-service-img">
                                    <div class="service-img">
                                        <img class="knee img-responsive" src="img/service3.png" alt="">
                                    </div>
                                </div>
                                <h3>knee problem</h3>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="single-service">
                                <div class="single-service-img">
                                    <div class="service-img">
                                        <img class="bone img-responsive" src="img/service4.png" alt="">
                                    </div>
                                </div>
                                <h3>human bones problem</h3>
                            </div>
                        </div>--%>
                    </div>
                </div>
            </section>

            <!-- end of service section -->


            <!-- ürünlerimiz section -->
                <section class="about text-center" id="production">
                <div class="container">
                    <div class="row">
                        <h2>
                            <asp:Label runat="server" ID="lblpartHeaderProducts"></asp:Label></h2>
                        <h4></h4>
                        <div class="col-md-4 col-sm-6">
                            <div class="single-about-detail clearfix">
                                <div class="about-img">
                                    <img class="img-responsive" src="img/item4.jpg" alt="">
                                </div>
                                <div class="about-details">
                                    <div class="pentagon-text">
                                          <h1>
                                            <asp:Label runat="server" ID="H1"></asp:Label></h1>
                                    </div>
                                    <h3>
                                        <asp:Label runat="server" ID="lblPlasticsSector"></asp:Label></h3>
                                    <p style="padding-bottom: 68px">
                                        <asp:Label runat="server" ID="lblPlasticsSectorDetail"></asp:Label>
                                        <%--Fleksible Ambalaj sektöründe hammadde temini, üretim, kalite projelendirme, know how paylaşımı, ambalajların temin edilmesi--%></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6">
                            <div class="single-about-detail">
                                <div class="about-img">
                                    <img class="img-responsive" src="img/item5.jpg" alt="">
                                </div>
                                <div class="about-details">
                                    <div class="pentagon-text">
                                        <h1>
                                            <asp:Label runat="server" ID="H2"></asp:Label></h1>
                                    </div>

                                    <h3>
                                        <asp:Label runat="server" ID="lblInternationalTrade"></asp:Label></h3>
                                    <p>
                                        <asp:Label runat="server" ID="lblInternationalTradeDetail"></asp:Label><%--Her türlü gıdanın ambalajlanması için bilgi paylaşımı, ambalaj malzemesi temini, gıda ihracatı ve ithalatı ( Yurtdışı firmamız ve çözüm ortaklarımız  vasıtasıyla ) özellikle Balkan ülkeleriyle ticaret  imkanları sağlamak--%></p>
                                    <p>
                                        <asp:Label runat="server" ID="lblInternationalTradeDetail2"></asp:Label><%--Her türlü gıdanın ambalajlanması için bilgi paylaşımı, ambalaj malzemesi temini, gıda ihracatı ve ithalatı ( Yurtdışı firmamız ve çözüm ortaklarımız  vasıtasıyla ) özellikle Balkan ülkeleriyle ticaret  imkanları sağlamak--%></p>
                                    <p>
                                        <asp:Label runat="server" ID="lblInternationalTradeDetail3"></asp:Label><%--Her türlü gıdanın ambalajlanması için bilgi paylaşımı, ambalaj malzemesi temini, gıda ihracatı ve ithalatı ( Yurtdışı firmamız ve çözüm ortaklarımız  vasıtasıyla ) özellikle Balkan ülkeleriyle ticaret  imkanları sağlamak--%></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6">
                            <div class="single-about-detail">
                                <div class="about-img">
                                    <img class="img-responsive" src="img/item6.jpg" alt="">
                                </div>
                                <div class="about-details">
                                    <div class="pentagon-text">
                                        <h1>
                                            <asp:Label runat="server" ID="H3"></asp:Label></h1>
                                    </div>
                                    <h3>
                                        <asp:Label runat="server" ID="lblPharmaceuticalSector"></asp:Label></h3>
                                    <p style="padding-bottom: 68px">
                                        <asp:Label runat="server" ID="lblPharmaceuticalSectorDetail"></asp:Label><%--Kimya ürünlerinin  ihracatı ve ithalatı, fason üretim vb alanlarda çözüm ortağınız olarak hizmet vermekteyiz.--%></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- end of about section -->

            <%--   <!-- team section -->
            <section class="team" id="team">
                <div class="container">
                    <div class="row">
                        <div class="team-heading text-center">
                            <h2>our team</h2>
                            <h4>Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</h4>
                        </div>
                        <div class="col-md-2 single-member col-sm-4">
                            <div class="person">
                                <img class="img-responsive" src="img/member1.jpg" alt="member-1">
                            </div>
                            <div class="person-detail">
                                <div class="arrow-bottom"></div>
                                <h3>Dr. M. Weiner, M.D.</h3>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
                            </div>
                        </div>
                        <div class="col-md-2 single-member col-sm-4">
                            <div class="person-detail">
                                <div class="arrow-top"></div>
                                <h3>Dr. Danielle, M.D.</h3>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
                            </div>
                            <div class="person">
                                <img class="img-responsive" src="img/member2.jpg" alt="member-2">
                            </div>
                        </div>
                        <div class="col-md-2 single-member col-sm-4">
                            <div class="person">
                                <img class="img-responsive" src="img/member3.jpg" alt="member-3">
                            </div>
                            <div class="person-detail">
                                <div class="arrow-bottom"></div>
                                <h3>Dr. Caitlin, M.D.</h3>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
                            </div>
                        </div>
                        <div class="col-md-2 single-member col-sm-4">
                            <div class="person-detail">
                                <div class="arrow-top"></div>
                                <h3>Dr. Joseph, M.D.</h3>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
                            </div>
                            <div class="person">
                                <img class="img-responsive" src="img/member4.jpg" alt="member-4">
                            </div>
                        </div>
                        <div class="col-md-2 single-member col-sm-4">
                            <div class="person">
                                <img class="img-responsive" src="img/member5.jpg" alt="member-5">
                            </div>
                            <div class="person-detail">
                                <div class="arrow-bottom"></div>
                                <h3>Dr. Michael, M.D.</h3>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
                            </div>
                        </div>
                        <div class="col-md-2 single-member col-sm-4">
                            <div class="person-detail">
                                <div class="arrow-top"></div>
                                <h3>Dr. Hasina, M.D.</h3>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, </p>
                            </div>
                            <div class="person">
                                <img class="img-responsive" src="img/member6.jpg" alt="member-5">
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- end of team section -->--%>

            <!-- map section -->
            <div class="api-map" id="contact">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12 map" id="map"></div>
                    </div>
                </div>
            </div>
            <!-- end of map section -->

            <!-- contact section starts here -->
            <section class="contact">
                <div class="container">
                    <div class="row">
                        <div class="contact-caption clearfix">
                            <div class="contact-heading text-center">
                                <h2>
                                    <asp:Label runat="server" ID="lblContactUs"></asp:Label></h2>
                            </div>
                            <div class="col-md-5 contact-info text-left">
                                <h3>
                                    <asp:Label runat="server" ID="lblContactUsDetail"></asp:Label></h3>
                                <div class="info-detail">
                                    <%--<ul>
                                        <li><i class="fa fa-calendar"></i><span>Monday - Friday:</span> 9:30 AM to 6:30 PM</li>
                                    </ul>--%>
                                    <ul>
                                        <li><i class="fa fa-map-marker"></i><span>
                                            <asp:Label runat="server" ID="lblAddress"></asp:Label></span>KOZAGAC MAH. 255 SK. 5 A BUCA/ IZMIR</li>
                                    </ul>
                                    <ul>
                                        <li><i class="fa fa-phone"></i><span>
                                            <asp:Label runat="server" ID="lblPhone"></asp:Label></span>+90 532 631 3302</li>
                                    </ul>
                                    <ul>
                                        <li><i class="fa fa-fax"></i><span>
                                            <asp:Label runat="server" ID="lblFax"></asp:Label></span>+ 90 232 438 36 38</li>

                                    </ul>
                                    <ul>
                                        <li><i class="fa fa-envelope"></i><span>Email:</span> info@brochem.com</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-6 col-md-offset-1 contact-form">
                                <h3>
                                    <asp:Label runat="server" ID="lblContactMessage"></asp:Label></h3>

                                <form class="form">
                                    <asp:TextBox runat="server" ID="txtName" PlaceHolder=""></asp:TextBox>
                                    <asp:TextBox runat="server" ID="txtEmail" PlaceHolder="Email"></asp:TextBox>
                                    <asp:TextBox runat="server" ID="txtPhone" PlaceHolder=""></asp:TextBox>
                                    <textarea class="message" name="message" id="Mesaj" cols="30" rows="10" placeholder="Mesajınız:" runat="server"></textarea>
                                    <asp:Button runat="server" ID="btnSubmit" CssClass="submit-btn" OnClick="btnSubmit_Click" />
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- end of contact section -->

            <!-- footer starts here -->
            <footer class="footer clearfix">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-6 footer-para">
                            <p>&copy;Mostafizur All right reserved</p>
                        </div>
                        <div class="col-xs-6 text-right">
                            <a href=""><i class="fa fa-facebook"></i></a>
                            <a href=""><i class="fa fa-twitter"></i></a>
                            <a href=""><i class="fa fa-skype"></i></a>
                        </div>
                    </div>
                </div>
            </footer>

            <!-- script tags
	============================================================= -->
            <script src="js/jquery-2.1.1.js"></script>
            <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
            <script src="js/gmaps.js"></script>
            <script src="js/smoothscroll.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="js/custom.js"></script>
        </div>
    </form>
</body>
</html>
