<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<div class="container-fluid">
	<div class="row">
        <div class="col-md-12">
           	<div class="card">
               	<div class="header">
                   	<h4 class="title">테이블도 뭐 그렇게 어렵진 않아요</h4>
                   	<p class="category">기본 확실하게 다져서 갑시다~</p>
               	</div>
               	<div class="content table-responsive table-full-width">
                   	<table class="table table-hover table-striped">
                       	<thead>
                           	<th>NO</th>
                       		<th>Name</th>
                       		<th>Age</th>
                       		<th>Country</th>
                       		<th>Etc</th>
                       	</thead>
                       	<tbody>
                         	<c:forEach items="${hanqTableList}" var="hanqTableList">
                          		<tr>
	                           		<td><c:out value="${hanqTableList.seqNo}"/></td>
	                           		<td><c:out value="${hanqTableList.userName}"/></td>
	                           		<td><c:out value="${hanqTableList.age}"/></td>
	                           		<td><c:out value="${hanqTableList.country}"/></td>
	                           		<td><c:out value="${hanqTableList.etc}"/></td>
	                           	</tr>
                          	</c:forEach>
                       	</tbody>
                   	</table>
               	</div>
           	</div>
       	</div>
   	</div>
</div>