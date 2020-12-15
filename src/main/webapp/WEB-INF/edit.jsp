<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit</title>
</head>
<body>



    <div class="col-sm">
    <form:form action="/languages/${language.id}/update" method="post" modelAttribute="language">
    <div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">Name</span>
  <input name="name" type="text" class="form-control" placeholder="${language.name}" aria-label="Username" aria-describedby="basic-addon1">
</div>
<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">Creator</span>
  <input name="creator" type="text" class="form-control" placeholder="${language.creator}" aria-label="Username" aria-describedby="basic-addon1">
</div>
<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1">Version</span>
  <input name="version" type="text" class="form-control" placeholder="${language.version}" aria-label="Username" aria-describedby="basic-addon1">
</div>
    <button type="submit" class="btn btn-warning">Submit</button>
    </form:form>
    
   </div>

</body>
</html>