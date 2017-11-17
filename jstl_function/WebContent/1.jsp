<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib uri="http://java.sun.com/jstl/core_rt"  prefix="c"%>
      <%@taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<c:set var="a" value=" Zeba Vakil"></c:set>
<c:set var="a1" value="${f:length(a)}"></c:set>
Length:${a1} <br>
<c:set var="b" value="${f:toUpperCase(a)}"></c:set>
Uppercase:${b}<br>
<c:set var="c" value="${f:toLowerCase(a)}"></c:set>
Lowercase:${c}<br>
<c:set var="d1" value="${f:split(a, ' ')}"></c:set>
      <c:set var = "d3" value = "${f:join(d1, '-')}" />
join:${d3}<br>
<c:set var="e" value="${f:trim(a)}"></c:set>
trim:${e}<br>
 <c:forEach var="f" items="${d1}">
 	Item:<c:out value="${f}"></c:out>
 </c:forEach>  
<br> Contain1:<c:if test="${f:contains(a, 'Vakil') }">
<c:out value="Yes it contains Vakil"></c:out>
</c:if>
<br> Contain2:<c:if test="${f:containsIgnoreCase(a, 'vakil') }">
<c:out value="Yes it contains vakil"></c:out>
</c:if>
<br>Endswith:<c:if test="${f:endsWith(a, 'Vakil')}">
String endsWith Vakil
</c:if>
<br>IndexOf:<c:set var="g" value="${f:indexOf("Vakil",a)}"></c:set>
</html>