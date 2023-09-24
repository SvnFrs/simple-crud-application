<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>CRUD Examples</title>
    <%@ include file="link.jsp" %>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid row">
        <a class="navbar-brand col-sm-5 col-lg-2" href="index.jsp">
            <img src="logo/pepe.png" style="width: 20%; height: 20%;">
        </a>
        <button class="navbar-toggler col-sm-5" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse col-lg-6" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="create.jsp">Create</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="update.jsp">Update</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="delete.jsp">Delete</a>
                </li>
            </ul>
            <form class="d-flex col-lg-4">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-light btn-dark" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>
<div class="container mt-5">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <div class="card">
                <div class="card-body">
                    <p class="fs-3 text-center">
                        Create
                    </p>
                    <c:if test="${not empty success}">
                        <p class="text-success">
                            ${success}
                        </p>
                        <c:remove var="success"/>
                    </c:if>
                    <c:if test="${not empty error}">
                        <p class="text-danger">
                            ${error}
                        </p>
                        <c:remove var="error"/>
                    </c:if>
                    <form action="register" method="post">
                        <div class="mb-3">
                            <label for="name" class="form-label">Name</label>
                            <input type="text" name="name" class="form-control" id="name" placeholder="Enter name">
                        </div>
                        <div class="mb-3">
                            <label for="birthday" class="form-label">Birthday</label>
                            <input type="date" name="birthday" class="form-control" id="birthday" placeholder="Enter birthday">
                        </div>
                        <div class="mb-3">
                            <label for="age" class="form-label">Age</label>
                            <input type="number" name="age" class="form-control" id="age" placeholder="Enter age">
                        </div>
                        <div class="mb-3">
                            <label for="language" class="form-label">Language</label>
                            <input type="text" name="language" class="form-control" id="language" placeholder="Enter language">
                        </div>
                        <div class="mb-3">
                            <label for="university" class="form-label">University</label>
                            <input type="text" name="university" class="form-control" id="university" placeholder="Enter university">
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn text-dark btn-outline-light">Submit</button>
                            <button type="reset" class="btn btn-outline-dark">Cancel</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


</body>
</html>