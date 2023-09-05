<%-- 
    Document   : cart
    Created on : May 31, 2023, 1:12:20 PM
    Author     : MSI GF
--%>

<<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart</title>
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
    <body onload="loadTotalMoney()">
        <jsp:include page="menu.jsp"></jsp:include>

            <!-- Page Header Start -->
            <div class="container-fluid bg-secondary mb-5">
                <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
                    <h1 class="font-weight-semi-bold text-uppercase mb-3">Shopping Cart</h1>
                    <div class="d-inline-flex">
                        <p class="m-0"><a href="home">Home</a></p>
                        <p class="m-0 px-2">-</p>
                        <p class="m-0">Shopping Cart</p>
                    </div>
                </div>
            </div>
            <!-- Page Header End -->


            <!-- Cart Start -->
            <div class="container-fluid pt-5">
                <c:if test="${error!=null }">
                    <div class="alert alert-danger" role="alert">
                        ${error}
                    </div>
                </c:if>
                <c:if test="${mess!=null }">
                    <div class="alert alert-success" role="alert">
                        ${mess}
                    </div>
                </c:if>
                <div class="row px-xl-5">
                
                <div class="col-lg-8 table-responsive mb-5">
                    <table class="table table-bordered text-center mb-0">
                        <thead class="bg-secondary text-dark">
                            <tr>
                                <th>Products</th>
                                <th>Price</th>
                                <th>Quantity</th>
                                <th>Total</th>
                                <th>Remove</th>
                            </tr>
                        </thead>
                        <tbody class="align-middle">
                            <c:forEach items="${listCart}" var="o">
                                <c:forEach items="${listProduct}" var="p">
                                    <c:if test="${o.productID == p.id}">
                                        <tr>
                                            <td class="align-middle"><img src="${p.image}" alt="" style="width: 50px;">${p.name}</td>
                                            <td class="align-middle">${p.price}</td>
                                            <td class="align-middle">
                                                <a href="subAmountCart?productID=${o.productID}&amount=${o.amount}"><button class="btnSub">-</button></a> 
                                                <strong>${o.amount}</strong>
                                                <a href="addAmountCart?productID=${o.productID}&amount=${o.amount}"><button class="btnAdd">+</button></a>
                                            </td>
                                            <td class="align-middle">$${p.price}</td>
                                            <td class="align-middle"><a href="deleteCart?productID=${o.productID }" class="text-dark">
                                                    <button type="button" class="btn btn-danger">Delete</button>
                                                </a>
                                            </td>
                                        </tr>
                                    </c:if>
                                </c:forEach>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                <div class="col-lg-4">
                    <div class="card border-secondary mb-5">
                        <div class="card-header bg-secondary border-0">
                            <h4 class="font-weight-semi-bold m-0">Cart Summary</h4>
                        </div>
                        <div class="card-body" id="contentTotalMoney">
<!--                            <div class="d-flex justify-content-between mb-3 pt-1">
                                <h6 class="font-weight-medium">Subtotal</h6>
                                <h6 class="font-weight-medium">$150</h6>
                            </div>
                            <div class="d-flex justify-content-between">
                                <h6 class="font-weight-medium">VAT</h6>
                                <h6 class="font-weight-medium">10%</h6>
                            </div>
                        </div>
                        <div class="card-footer border-secondary bg-transparent">
                            <div class="d-flex justify-content-between mt-2">
                                <h5 class="font-weight-bold">Total</h5>
                                <h5 class="font-weight-bold">$160</h5>
                            </div>-->
                        </div>    
                        <div>   
                            <a href="order" class="btn btn-block btn-primary my-3 py-3">Proceed To Checkout</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Cart End -->


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
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>
        function loadTotalMoney() {
            $.ajax({
                url: "/websitebanxedap/totalMoneyCart",
                type: "get", //send it through get method
                data: {

                },
                success: function (responseData) {
                    document.getElementById("contentTotalMoney").innerHTML = responseData;
                }
            });
        }

        window.addEventListener("load", function loadAmountCart() {
            $.ajax({
                url: "/websitebanxedap/loadAllAmountCart",
                type: "get", //send it through get method
                data: {

                },
                success: function (responseData) {
                    document.getElementById("amountCart").innerHTML = responseData;
                }
            });
        }, false);
        </script>

    </script>
</body>
</html>

