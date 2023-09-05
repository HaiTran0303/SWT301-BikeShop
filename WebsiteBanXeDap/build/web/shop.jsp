

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ht Biker - Shop</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"> 

        <!-- Font Awesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <!-- Your custom styles (optional) -->
        <link href="http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body onload="loadAmountCart()">
        <jsp:include page="menu.jsp"></jsp:include>

            <!-- Page Header Start -->
            <div class="container-fluid bg-secondary mb-5">
                <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
                    <h1 class="font-weight-semi-bold text-uppercase mb-3">Our Shop</h1>
                    <div class="d-inline-flex">
                        <p class="m-0"><a href="home">Home</a></p>
                        <p class="m-0 px-2">-</p>
                        <p class="m-0">Shop</p>
                    </div>
                </div>
            </div>
            <!-- Page Header End -->


            <!-- Shop Start -->
            <div class="container-fluid pt-5">
                <div class="row px-xl-5">
                    <!-- Shop Sidebar Start -->
                    <div class="col-lg-3 col-md-12">
                        <div class="border-bottom mb-4 pb-4">
                            <h5 class="font-weight-semi-bold mb-3">Sort by price</h5>
                            <form>
                                <div class="form-check mb-3 d-flex align-items-center justify-content-between">
                                    <input onchange="searchAllProduct()" id="all"  type="radio" class="form-check-input" name="checkbox">
                                    <label class="form-check-label small text-uppercase card-link-secondary" for="all">Default</label>

                                </div>
                                <div class="form-check mb-3 d-flex align-items-center justify-content-between">
                                    <input onchange="sortAsc()" type="radio" class="form-check-input" id="asc" name="checkbox">
                                    <label class="form-check-label small text-uppercase card-link-secondary" for="asc">Sort Asc</label>
                                </div>
                                <div class="form-check mb-3 d-flex align-items-center justify-content-between">
                                    <input onchange="sortDesc()" type="radio" class="form-check-input" id="desc" name="checkbox">
                                    <label class="form-check-label small text-uppercase card-link-secondary" for="desc">Sort Desc</label>
                                </div>
                            </form>
                        </div>
                        <!-- Price Start -->
                        <div class="border-bottom mb-4 pb-4">
                            <h5 class="font-weight-semi-bold mb-3">Filter by price</h5>
                            <form action="filterByPrice">

                                <div class="form-check mb-3 d-flex align-items-center justify-content-between">
                                    <input onchange="filterPrice()" type="checkbox" class="form-check-input filterByPrice" id="under1000" name="checkbox" value="1">
                                    <label class="form-check-label small text-uppercase card-link-secondary" for="under1000">$0 - $1000</label>

                                </div>
                                <div class="form-check mb-3 d-flex align-items-center justify-content-between">
                                    <input onchange="filterPrice()" type="checkbox" class="form-check-input filterByPrice" id="10005000" name="checkbox" value="2">
                                    <label class="form-check-label small text-uppercase card-link-secondary" for="10005000">$1000 - $5000</label>

                                </div>
                                <div class="form-check mb-3 d-flex align-items-center justify-content-between">
                                    <input onchange="filterPrice()" type="checkbox" class="form-check-input filterByPrice" id="500010000" name="checkbox" value="3">
                                    <label class="form-check-label small text-uppercase card-link-secondary" for="500010000">$5000 - $10000</label>

                                </div>
                                <div class="form-check mb-3 d-flex align-items-center justify-content-between">
                                    <input onchange="filterPrice()" type="checkbox" class="form-check-input filterByPrice" id="above10000" name="checkbox" value="4">
                                    <label class="form-check-label small text-uppercase card-link-secondary" for="above10000">$10000 & Above</label>

                                </div>

                            </form>
                        </div>
                        <!-- Price End -->

                        <!-- Color Start -->
                        <div class="border-bottom mb-4 pb-4">
                            <h5 class="font-weight-semi-bold mb-4">Filter by color</h5>
                            <form action="filterByColor">
                                <div class="form-check mb-3 d-flex align-items-center justify-content-between">
                                    <input onchange="filterColor()" type="checkbox" class="form-check-input filterByColor" id="black" name="checkbox" value="1">
                                    <label class="form-check-label small text-uppercase card-link-secondary" for="black">Black</label>

                                </div>
                                <div class="form-check mb-3 d-flex align-items-center justify-content-between">
                                    <input onchange="filterColor()" type="checkbox" class="form-check-input filterByColor" id="white" name="checkbox" value="2">
                                    <label class="form-check-label small text-uppercase card-link-secondary" for="white">White</label>

                                </div>
                                <div class="form-check mb-3 d-flex align-items-center justify-content-between">
                                    <input onchange="filterColor()" type="checkbox" class="form-check-input filterByColor" id="gray" name="checkbox" value="3">
                                    <label class="form-check-label small text-uppercase card-link-secondary" for="gray">Gray</label>

                                </div>
                                <div class="form-check mb-3 d-flex align-items-center justify-content-between">
                                    <input onchange="filterColor()" type="checkbox" class="form-check-input filterByColor" id="blue" name="checkbox" value="4">
                                    <label class="form-check-label small text-uppercase card-link-secondary" for="blue">Blue</label>

                                </div>
                                <div class="form-check mb-3 d-flex align-items-center justify-content-between">
                                    <input onchange="filterColor()" type="checkbox" class="form-check-input filterByColor" id="red" name="checkbox" value="5">
                                    <label class="form-check-label small text-uppercase card-link-secondary" for="red">Red</label>

                                </div>
                                <div class="form-check mb-3 d-flex align-items-center justify-content-between">
                                    <input onchange="filterColor()" type="checkbox" class="form-check-input filterByColor" id="green" name="checkbox" value="6">
                                    <label class="form-check-label small text-uppercase card-link-secondary" for="green">Green</label>

                                </div>

                            </form>
                        </div>
                        <!-- Color End -->

                    </div>
                    <!-- Shop Sidebar End -->


                    <!-- Shop Product Start -->

                    <div class="col-lg-9 col-md-12" >
                        <div class="row pb-3">
                            <div class="col-12 pb-1">
                                <div class="d-flex align-items-center justify-content-between mb-4">
                                    <form action="">
                                        <div class="input-group">
                                            <input oninput="searchByName(this)" value="${txtS}" name="txt" type="text" class="form-control" placeholder="Search by name">
                                        <div class="input-group-append">
                                            <span class="input-group-text bg-transparent text-primary">
                                                <i class="fa fa-search"></i>
                                            </span>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>  
                    <div class="row pb-3" id="content">
                        <c:forEach items="${listA}" var="a">
                            <div class="col-lg-4 col-md-6 col-sm-12 pb-1">
                                <div class="card product-item border-0 mb-4">
                                    <a href="detail?pid=${a.id}" class="btn btn-sm text-dark p-0">
                                        <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                            <img class="img-fluid w-100" src="${a.image}" alt="">
                                        </div>
                                        <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                            <h6 class="text-truncate mb-3">${a.name}</h6>
                                            <div class="d-flex justify-content-center">
                                                <h6>$${a.price}</h6>
                                            </div>
                                        </div>
                                        <div class="card-footer d-flex justify-content-between bg-light border">

                                            <a href="" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
                                        </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>

                    <div class="col-12 col-md-4 text-center">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination pagination-circle justify-content-center float-md-right mb-0">
                                <c:if test="${tag != 1}">
                                    <li class="page-item"><a href="shop?index=${tag-1 }" class="page-link"><i class="fas fa-chevron-left"></i></a></li>
                                </c:if> 
                                <c:forEach begin="1" end="${endPage }" var="i">
                                    <li class="${tag==i?"page-item active":"page-item" }"><a href="shop?index=${i}" class="page-link">${i }</a></li>
                                </c:forEach>
                                <c:if test="${tag != endPage}">
                                    <li class="page-item"><a href="shop?index=${tag+1 }" class="page-link"><i class="fas fa-chevron-right"></i></a></li>
                                </c:if> 
                            </ul>
                        </nav>
                    </div>
                </div>
                <!-- Shop Product End -->
            </div>
        </div>
        <!-- Shop End -->


        <jsp:include page="footer.jsp"></jsp:include>


        <!-- Back to Top -->
        <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

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
                                        

                                        function sortDesc() {
                                            $.ajax({
                                                url: "/websitebanxedap/sortDesc",
                                                type: "get", //send it through get method
                                                data: {

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
                                        function sortAsc() {
                                            $.ajax({
                                                url: "/websitebanxedap/sortAsc",
                                                type: "get", //send it through get method
                                                data: {

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

                                        function searchAllProduct() {
                                            $.ajax({
                                                url: "/websitebanxedap/searchAllProduct",
                                                type: "get", //send it through get method
                                                data: {

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

                                        function searchByColorWhite() {
                                            $.ajax({
                                                url: "/websitebanxedap/searchAjaxColorWhite",
                                                type: "get", //send it through get method
                                                data: {

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
                                        function searchByColorGray() {
                                            $.ajax({
                                                url: "/websitebanxedap/searchAjaxColorGray",
                                                type: "get", //send it through get method
                                                data: {

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
                                        function searchByColorBlack() {
                                            $.ajax({
                                                url: "/websitebanxedap/searchAjaxColorBlack",
                                                type: "get", //send it through get method
                                                data: {

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

                                        function searchByColorBlue() {
                                            $.ajax({
                                                url: "/websitebanxedap/searchAjaxColorBlue",
                                                type: "get", //send it through get method
                                                data: {

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

                                        function searchByColorRed() {
                                            $.ajax({
                                                url: "/websitebanxedap/searchAjaxColorRed",
                                                type: "get", //send it through get method
                                                data: {

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

                                        function searchByColorGreen() {
                                            $.ajax({
                                                url: "/websitebanxedap/searchAjaxColorGreen",
                                                type: "get", //send it through get method
                                                data: {

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

                                        function filterPrice() {
                                            var ck1 = document.getElementById("under1000");
                                            var ck2 = document.getElementById("10005000");
                                            var ck3 = document.getElementById("500010000");
                                            var ck4 = document.getElementById("above10000");
                                            var cked = "";
                                            if (ck1.checked == true) {
                                                cked += ck1.value + ",";
                                            }
                                            if (ck2.checked == true) {
                                                cked += ck2.value + ",";
                                            }
                                            if (ck3.checked == true) {
                                                cked += ck3.value + ",";
                                            }
                                            if (ck4.checked == true) {
                                                cked += ck4.value + ",";
                                            }


                                            console.log(cked);
                                            $.ajax({
                                                url: "/websitebanxedap/filterByPrice",
                                                type: "get", //send it through get method
                                                data: {
                                                    checkbox: cked,
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
                                        
                                        function filterColor() {
                                            var ck1 = document.getElementById("black");
                                            var ck2 = document.getElementById("white");
                                            var ck3 = document.getElementById("gray");
                                            var ck4 = document.getElementById("blue");
                                            var ck5 = document.getElementById("red");
                                            var ck6 = document.getElementById("green");
                                            var cked = "";
                                            if (ck1.checked == true) {
                                                cked += ck1.value + ",";
                                            }
                                            if (ck2.checked == true) {
                                                cked += ck2.value + ",";
                                            }
                                            if (ck3.checked == true) {
                                                cked += ck3.value + ",";
                                            }
                                            if (ck4.checked == true) {
                                                cked += ck4.value + ",";
                                            }
                                            if (ck5.checked == true) {
                                                cked += ck5.value + ",";
                                            }
                                            if (ck6.checked == true) {
                                                cked += ck6.value + ",";
                                            }


                                            console.log(cked);
                                            $.ajax({
                                                url: "/websitebanxedap/filterByColor",
                                                type: "get", //send it through get method
                                                data: {
                                                    checkbox: cked,
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




        </script>

        <!-- MDB -->
        <script type="text/javascript" src="js/mdb.min.js"></script>
        <!-- Custom scripts -->
        <script type="text/javascript" src="js/script.js"></script>
    </body>
</html>
