<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page import="com.conn.dbConnect" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="com.dao.StuffDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="com.entity.Stuff" %>
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
                    <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="create.jsp">Create</a>
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
    <div class="card">
        <div class="card-body">
            <p class="text-center mb-5 fs-1">Stuffs</p>
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">Name</th>
                    <th scope="col">Birthday</th>
                    <th scope="col">Age</th>
                    <th scope="col">Language</th>
                    <th scope="col">University</th>
                    <th scope="col">Action</th>
                </tr>
                </thead>
                <tbody>
                <%
                    StuffDAO dao = new StuffDAO(dbConnect.getConn());
                    List<Stuff> list = dao.readStuff();
                    for (Stuff stuff : list) {
                %>
                <tr>
                    <th scope="row"><%=stuff.getName()%></th>
                    <td><%=stuff.getBirthday()%></td>
                    <td><%=stuff.getAge()%></td>
                    <td><%=stuff.getLanguage()%></td>
                    <td><%=stuff.getUniversity()%></td>
                    <td>
                        <a href="update.jsp?id=<%=stuff.getId()%>" class="btn btn-outline-primary btn-sm">Update</a>
                        <a href="delete?id=<%=stuff.getId()%>" class="btn btn-outline-danger btn-sm">Delete</a>
                    </td>
                </tr>
                <%
                    }
                %>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>