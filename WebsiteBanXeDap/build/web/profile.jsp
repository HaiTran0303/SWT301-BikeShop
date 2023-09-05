<%-- 
    Document   : profile
    Created on : Jul 4, 2023, 10:06:48 PM
    Author     : MSI GF
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Your Profile</title>

        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet"> 

        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js" rel="stylesheet"> 

        <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" rel="stylesheet"> 

        <link href="css/profile.css" rel="stylesheet">
    </head>
    <body>

        <div class="row align-items-center py-3 px-xl-5 ">
            <div class="col-lg-3 d-none d-lg-block">
                <a href="home" class="text-decoration-none">
                    <h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">Ht</span>Biker</h1>
                </a>
            </div>

        </div>
        <form action="editprofile" method="post">
            <div class="wrapper bg-white mt-sm-5">
                <h4 class="pb-4 border-bottom">Account</h4>

                <div class="py-2">
                    <div class="row py-2">
                        <p class="text-success">${mess}</p>
                        <div class="col-md-6">
                            <label for="firstname">Username</label>
                            <input name="username" type="text" class="bg-light form-control"  value="${sessionScope.account.user}" required="" autofocus="">
                        </div>
                        <div class="col-md-6">
                            <label for="password">Password</label>
                            <input name="password" type="text" class="bg-light form-control" value="${sessionScope.account.pass }" required="" autofocus="">
                        </div>
                    </div>
                    <div class="row py-2">
                        <div class="col-md-6">
                            <label for="email">Email Address</label>
                            <input name="email" type="text" class="bg-light form-control" value="${sessionScope.account.email }" required="" autofocus="">
                        </div>
                    </div>
                    <div class="py-3 pb-4 border-bottom">
                        <button class="btn btn-primary mr-3" type="submit">Edit</button>
                    </div>

                </div>
            </div>
        </form>
    </body>
</html>
