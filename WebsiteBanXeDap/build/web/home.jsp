<%-- 
    Document   : home
    Created on : May 29, 2023, 3:29:49 PM
    Author     : MSI GF
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ht Biker</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <!--        <meta content="Free HTML Templates" name="keywords">
                <meta content="Free HTML Templates" name="description">-->

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"> 

        <!-- Font Awesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <!-- Libraries Stylesheet -->
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body onload="loadAmountCart()">
        <!-- Topbar Start -->
        <div class="container-fluid">
            <div class="row bg-secondary py-2 px-xl-5">
                <div class="col-lg-6 d-none d-lg-block">
                    <div class="d-inline-flex align-items-center">
                        <a class="text-dark" href="">FAQs</a>
                        <span class="text-muted px-2">|</span>
                        <a class="text-dark" href="">Help</a>
                        <span class="text-muted px-2">|</span>
                        <a class="text-dark" href="">Support</a>
                    </div>
                </div>
                <div class="col-lg-6 text-center text-lg-right">
                    <div class="d-inline-flex align-items-center">
                        <a class="text-dark px-2" href="">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                        <a class="text-dark px-2" href="">
                            <i class="fab fa-twitter"></i>
                        </a>
                        <a class="text-dark px-2" href="">
                            <i class="fab fa-linkedin-in"></i>
                        </a>
                        <a class="text-dark px-2" href="">
                            <i class="fab fa-instagram"></i>
                        </a>
                        <a class="text-dark pl-2" href="">
                            <i class="fab fa-youtube"></i>
                        </a>
                    </div>
                </div>
            </div>
            <div class="row align-items-center py-3 px-xl-5">
                <div class="col-lg-3 d-none d-lg-block">
                    <a href="home" class="text-decoration-none">
                        <h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">Ht</span>Biker</h1>
                    </a>
                </div>
                <div class="col-lg-6 col-6 text-left">

<!--                    <div class="input-group">
                        <input oninput="searchByName(this)" value="" name="txt" type="text" class="form-control" placeholder="Search for products">
                        <div class="input-group-append">
                            <span class="input-group-text bg-transparent text-primary">
                                <i class="fa fa-search"></i>
                            </span>
                        </div>
                    </div>-->

                </div>
                <div class="col-lg-3 col-6 text-right">
                    
                    <a href="managerCart" class="btn border">
                        <i class="fas fa-shopping-cart text-primary"></i>
                        <span id="amountCart" class="badge"></span>
                    </a>
                </div>
            </div>
        </div>
        <!-- Topbar End -->

        <!-- Navbar Start -->
        <div class="container-fluid mb-5">
            <div class="row border-top px-xl-5">
                <div class="col-lg-3 d-none d-lg-block">
                    <a class="btn shadow-none d-flex align-items-center justify-content-between bg-primary text-white w-100" data-toggle="collapse" href="#navbar-vertical" style="height: 65px; margin-top: -1px; padding: 0 30px;">
                        <h6 class="m-0">Categories</h6>
                        <i class="fa fa-angle-down text-dark"></i>
                    </a>
                    <nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0 bg-light" id="navbar-vertical" style="width: calc(100% - 30px); z-index: 1;">
                        <div class="navbar-nav w-100 overflow-hidden" style="height: 300px">
                            <c:forEach items="${listC}" var="c">
                                <a href="shop?cid=${c.cid}" class="nav-item nav-link">${c.cname}</a>
                            </c:forEach>

                        </div>
                    </nav>
                </div>
                <div class="col-lg-9">
                    <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
                        <a href="home" class="text-decoration-none d-block d-lg-none">
                            <h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">E</span>Shopper</h1>
                        </a>
                        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                            <div class="navbar-nav mr-auto py-0">
                                <a href="home" class="nav-item nav-link active">Home</a>
                                <a href="shop" class="nav-item nav-link">Shop</a>
                                <div class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Pages</a>
                                    <div class="dropdown-menu rounded-0 m-0">
                                        <a href="managerCart" class="dropdown-item">Shopping Cart</a>
                                        <a href="order" class="dropdown-item">Checkout</a>
                                    </div>
                                </div>
                                
                            </div>

                            <c:if test="${sessionScope.account.isSell == 1}">
                                <li class="nav-item">
                                    <a class="nav-link" href="manager">Manager Product</a>
                                </li>
                            </c:if> 
                            <c:if test="${sessionScope.account != null}">
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Hello ${sessionScope.account.user}</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="logout">Logout</a>
                                </li> 
                            </c:if>
                            <c:if test="${sessionScope.account == null}">
                                <li class="nav-item">
                                    <a class="nav-link" href="login">Login</a>
                                </li>
                            </c:if>

                            <c:if test="${sessionScope.account != null}">
                                <li class="nav-item">
                                    <a class="nav-link" href="profile.jsp">Your Profile</a>
                                </li>
                            </c:if>
                            <c:if test="${sessionScope.account.isAdmin == 1}">
                                <li class="nav-item">
                                    <a class="nav-link" href="admin">Statistic</a>
                                </li>
                            </c:if> 

                        </div>
                    </nav>

                    <div id="header-carousel" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active" style="height: 410px;">
                                <img class="img-fluid" src="img/aventón.jpg" alt="Image">
                                <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                    <div class="p-3" style="max-width: 700px;">
                                        <h4 class="text-light text-uppercase font-weight-medium mb-3">10% Off Your First Order</h4>
                                        <h3 class="display-4 text-white font-weight-semi-bold mb-4">Most Found</h3>
                                        <a href="" class="btn btn-light py-2 px-3">Shop Now</a>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item" style="height: 410px;">
                                <img class="img-fluid" src="img/look.jpg" alt="Image">
                                <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                    <div class="p-3" style="max-width: 700px;">
                                        <h4 class="text-light text-uppercase font-weight-medium mb-3">10% Off Your First Order</h4>
                                        <h3 class="display-4 text-white font-weight-semi-bold mb-4">One of the best for fixed gear</h3>
                                        <a href="" class="btn btn-light py-2 px-3">Shop Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#header-carousel" data-slide="prev">
                            <div class="btn btn-dark" style="width: 45px; height: 45px;">
                                <span class="carousel-control-prev-icon mb-n2"></span>
                            </div>
                        </a>
                        <a class="carousel-control-next" href="#header-carousel" data-slide="next">
                            <div class="btn btn-dark" style="width: 45px; height: 45px;">
                                <span class="carousel-control-next-icon mb-n2"></span>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Navbar End -->


        <!-- Featured Start -->
        <div class="container-fluid pt-5">
            <div class="row px-xl-5 pb-3">
                <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                    <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                        <h1 class="fa fa-check text-primary m-0 mr-3"></h1>
                        <h5 class="font-weight-semi-bold m-0">Quality Product</h5>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                    <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                        <h1 class="fa fa-shipping-fast text-primary m-0 mr-2"></h1>
                        <h5 class="font-weight-semi-bold m-0">Free Shipping</h5>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                    <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                        <h1 class="fas fa-exchange-alt text-primary m-0 mr-3"></h1>
                        <h5 class="font-weight-semi-bold m-0">14-Day Return</h5>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                    <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                        <h1 class="fa fa-phone-volume text-primary m-0 mr-3"></h1>
                        <h5 class="font-weight-semi-bold m-0">24/7 Support</h5>
                    </div>
                </div>
            </div>
        </div>
        <!-- Featured End -->

        <!-- Products Start -->

        <div class="container-fluid pt-5">
            <div class="text-center mb-4">
                <h2 class="section-title px-5"><span class="px-2">Trandy Products</span></h2>
            </div>

            <div class="row px-xl-5 pb-3">

                <c:forEach items="${listTop8Product}" var="t">
                    <c:forEach items="${listAllProduct}" var="o">
                        <c:if test="${t.productID==o.id }">
                            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                                <a href="detail?pid=${o.id}" class="btn btn-sm text-dark p-0">
                                    <div class="card product-item border-0 mb-4">
                                        <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                            <img class="img-fluid w-100" src="${o.image}" alt="">
                                        </div>
                                        <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                            <h6 class="text-truncate mb-3">${o.name}</h6>
                                            <div class="d-flex justify-content-center">
                                                <h6>$${o.price}</h6>
                                            </div>
                                        </div>
                                        <div class="card-footer d-flex justify-content-between bg-light border">
                                            <a href="" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
                                        </div>
                                    </div>
                            </div>
                        </c:if>
                    </c:forEach>
                </c:forEach>
            </div>

        </div>

        <!-- Products End -->




        <!-- Products Start -->
        <div class="container-fluid pt-5">
            <div class="text-center mb-4">
                <h2 class="section-title px-5"><span class="px-2">Just Arrived</span></h2>
            </div>
            <div class="row px-xl-5 pb-3">

                <c:forEach items="${list8last}" var="l">
                    <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                        <a href="detail?pid=${l.id}" class="btn btn-sm text-dark p-0">
                            <div class="card product-item border-0 mb-4">
                                <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                    <img class="img-fluid w-100" src="${l.image}" alt="">
                                </div>
                                <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                    <h6 class="text-truncate mb-3">${l.name}</h6>
                                    <div class="d-flex justify-content-center">
                                        <h6>$${l.price}$</h6><!--<h6 class="text-muted ml-2"><del></del></h6>-->
                                    </div>
                                </div>
                                <div class="card-footer d-flex justify-content-between bg-light border">
                                    <a href="" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
                                </div>
                            </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <!-- Products End -->

        <jsp:include page="footer.jsp"></jsp:include>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <!-- Back to Top -->
        <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>

        <!-- JQuery -->
        <script src="https://mdbootstrap.com/previews/ecommerce-demo/js/jquery-3.4.1.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/bootstrap.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/mdb.min.js"></script>
        <!-- MDB Ecommerce JavaScript -->
        <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/mdb.ecommerce.min.js"></script>

        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>
        <!-- MDB -->
        <script type="text/javascript" src="js/mdb.min.js"></script>
        <!-- Custom scripts -->
        <script type="text/javascript" src="js/script.js"></script>
        <!-- Contact Javascript File -->
        <script src="mail/jqBootstrapValidation.min.js"></script>
        <script src="mail/contact.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>

        <script>
        $('#multi').mdbRange({
            single: {
                active: true,
                multi: {
                    active: true,
                    rangeLength: 1
                },
            }
        });

        $(document).ready(function () {
            $('.mdb-select').materialSelect();
            $('.select-wrapper.md-form.md-outline input.select-dropdown').bind('focus blur', function () {
                $(this).closest('.select-outline').find('label').toggleClass('active');
                $(this).closest('.select-outline').find('.caret').toggleClass('active');
            });
        });
        function searchByName(param) {
            var txtSearch = param.value;
            $.ajax({
                url: "/websitebanxedap/searchAjaxShop",
                type: "get", //send it through get method
                data: {
                    txt: txtSearch
                },
                success: function (data) {
                    var row = document.getElementById("content");
                    row.innerHTML = data;
                },
                error: function (xhr) {
                    //Do Something to handle error
                }
            });
        }
        function loadAmountCart() {
            $.ajax({
                url: "/websitebanxedap/loadAllAmountCart",
                type: "get", //send it through get method
                data: {

                },
                success: function (responseData) {
                    document.getElementById("amountCart").innerHTML = responseData;
                }
            });
        }
        </script>
    </body>
</html>
