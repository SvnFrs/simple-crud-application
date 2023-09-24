<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
                    <a class="nav-link" href="create.jsp">Create</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="update.jsp">Update</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="delete.jsp">Delete</a>
                </li>
            </ul>
            <form class="d-flex col-lg-4">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-light btn-dark" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>
</body>
</html>