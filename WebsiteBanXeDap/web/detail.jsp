<%-- 
    Document   : detail
    Created on : May 31, 2023, 1:11:49 PM
    Author     : MSI GF
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ht Biker - Detail Product</title>
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

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body class="skin-light">
        <jsp:include page="menu.jsp"></jsp:include>

            <!-- Page Header Start -->
            <div class="container-fluid bg-secondary mb-5">
                <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
                    <h1 class="font-weight-semi-bold text-uppercase mb-3">Shop Detail</h1>
                    <div class="d-inline-flex">
                        <p class="m-0"><a href="home">Home</a></p>
                        <p class="m-0 px-2">-</p>
                        <p class="m-0">Shop Detail</p>
                    </div>
                </div>
            </div>
            <!-- Page Header End -->


            <!-- Shop Detail Start -->
            <div class="container-fluid py-5">

                <div class="row px-xl-5">
                    <div class="col-lg-5 pb-5">
                        <div id="product-carousel" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner border">
                                <div class="carousel-item active">
                                    <img class="w-100 h-100" src="${detail.image}" alt="Image">
                            </div>
                            <div class="carousel-item">
                                <img class="w-100 h-100" src="${detail.image2}" alt="Image">
                            </div>
                            <div class="carousel-item">
                                <img class="w-100 h-100" src="${detail.image3}" alt="Image">
                            </div>
                            <div class="carousel-item">
                                <img class="w-100 h-100" src="${detail.image4}" alt="Image">
                            </div>

                        </div>

                        <a class="carousel-control-prev" href="#product-carousel" data-slide="prev">
                            <i class="fa fa-2x fa-angle-left text-dark"></i>
                        </a>
                        <a class="carousel-control-next" href="#product-carousel" data-slide="next">
                            <i class="fa fa-2x fa-angle-right text-dark"></i>
                        </a>

                    </div>
                </div>

                <div class="col-lg-7 pb-5">
                    <h3 class="font-weight-semi-bold">${detail.name}</h3>

                    <h3 class="font-weight-semi-bold mb-4">$${detail.price}</h3>
                    <div class="d-flex mb-3">
                        <p class="text-dark font-weight-medium mb-0 mr-3">Model</p>
                        <form>
                            <div class="custom-control custom-radio custom-control-inline">
                                <input type="radio" class="custom-control-input" id="size-1" name="size">
                                <label class="custom-control-label" for="size-1">${detail.model}</label>
                            </div>
                        </form>
                    </div>

                    <div class="d-flex mb-4">
                        <p class="text-dark font-weight-medium mb-0 mr-3">Colors:</p>
                        <form>
                            <div class="custom-control custom-radio custom-control-inline">
                                <input type="radio" class="custom-control-input" id="color-1" name="color">
                                <label class="custom-control-label" for="color-1">${detail.color}</label>
                            </div>
                        </form>
                    </div>
                    <form action="addCart?pid=${detail.id }" method="post">
                        <div class="table-responsive mb-2">
                            <table class="table table-sm table-borderless">
                                <tbody>
                                    <tr>
                                        <td class="pl-0 pb-0 w-25">Quantity</td>
                                    </tr>
                                    <tr>
                                        <td class="pl-0">
                                            <div class="mt-1">
                                                <div class="def-number-input number-input safari_only mb-0" style="display: flex; align-items: center;">
                                                    <button type="button" onclick="this.parentNode.querySelector('input[type=number]').stepDown()"
                                                            class="minus"></button>
                                                    <input class="quantity" min="0" name="quantity" value="1" type="number">
                                                    <button type="button" onclick="this.parentNode.querySelector('input[type=number]').stepUp()"
                                                            class="plus"></button>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="mt-1">
                            <button type="submit" class="btn btn-primary btn-md mr-1 mb-2">Buy now</button>
                            <button type="submit" class="btn btn-light btn-md mr-1 mb-2"><i class="fas fa-shopping-cart pr-2"></i>Add to
                                cart</button>
                        </div>
                    </form>
                </div>
            </div>
                        
                        
            <div class="row px-xl-5">
                <div class="col">
                    <div class="nav nav-tabs justify-content-center border-secondary mb-4">
                        <a class="nav-item nav-link active" data-toggle="tab" href="#description">Description</a>
                        <a class="nav-item nav-link" data-toggle="tab" href="#reviews">Reviews(${countAllReview })</a>
                    </div>
                    <div class="tab-content">
                        <div class="tab-pane fade show active" id="description" >
                            <h4 class="mb-3">Product Description</h4>
                            <p>${detail.description}</p>
                        </div>

                        <div class="tab-pane fade" id="reviews" role="tabpanel" aria-labelledby="reviews-tab" >
                            <div class="row">
                                <div class="col-md-6">

                                    <h5><span>${countAllReview }</span> review for <span>${detail.name }</span></h5>
                                    <c:forEach items="${listAllReview}" var="r">

                                        <div class="media mt-3 mb-4">

                                            <div class="media-body">
                                                <div class="d-flex justify-content-between">
                                                    <p class="mt-1 mb-2">
                                                        <c:forEach items="${listAllAcount}" var="a">
                                                            <c:if test="${r.accountID == a.id }">
                                                                <strong>${a.user } </strong>
                                                            </c:if>
                                                        </c:forEach>
                                                        <span>– </span><span>${r.dateReview }</span>
                                                    </p>
                                                </div>
                                                <p class="mb-0">${r.contentReview }</p>
                                            </div>
                                        </div>
                                        <hr>    

                                    </c:forEach>
                                </div>
                                <div class="col-md-6">
                                    <h4 class="mb-4">Add a new review</h4>

                                    <!-- Your review -->
                                    <div class="md-form md-outline">
                                        <label for="form76">Your review</label>
                                        <textarea id="form76" class="md-textarea form-control pr-6" rows="4"></textarea>

                                    </div>
                                    <div class="text-right pb-2">
                                        <button type="button" class="btn btn-primary" onclick="addReview(${detail.id})">Add a review</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!-- Shop Detail End -->


        <!-- Products Start -->
        <div class="container-fluid pt-5">
            <div class="text-center mb-4">
                <h2 class="section-title px-5"><span class="px-2">You May Also Like</span></h2>
            </div>
            <form action="addCart?pid=${detail.id }" method="post">
                <div class="row px-xl-5 pb-3">

                    <c:forEach items="${listRelatedProduct}" var="n">
                        <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                            <a href="detail?pid=${n.id}" class="btn btn-sm text-dark p-0">
                                <div class="card product-item border-0 mb-4">
                                    <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                        <img class="img-fluid w-100" src="${n.image}" alt="">
                                    </div>
                                    <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                        <h6 class="text-truncate mb-3">${n.name}</h6>
                                        <div class="d-flex justify-content-center">
                                            <h6>$${n.price}</h6><!--<h6 class="text-muted ml-2"><del></del></h6>-->
                                        </div>
                                    </div>
                                    <div class="card-footer d-flex justify-content-between bg-light border">
                                        <a href="addCart?pid=${detail.id }" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
                                    </div>
                                </div>
                        </div>
                    </c:forEach>
                </div>
            </form>
        </div>
        <!-- Products End -->


        <jsp:include page="footer.jsp"></jsp:include>


        <!-- Back to Top -->
        <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


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


                function addReview(pID) {
                    var cntReview = document.getElementById("form76").value;
                    $.ajax({
                        url: "/websitebanxedap/addReview",
                        type: "get", //send it through get method
                        data: {
                            productID: pID,
                            contentReview: cntReview
                        },
                        success: function (data) {
                            var row = document.getElementById("reviews");
                            row.innerHTML += data;
                        },
                        error: function (xhr) {
                            //Do Something to handle error
                        }
                    });
                }
                $(document).ready(function () {
      // MDB Lightbox Init
      $(function () {
        $("#mdb-lightbox-ui").load("../../../mdb-addons/mdb-lightbox-ui.html");
      });
    });
        </script>
    </body>
</html>
