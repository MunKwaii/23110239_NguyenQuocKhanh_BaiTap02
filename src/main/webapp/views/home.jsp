<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="topbar.jsp"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Home</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 20px;
    }
    .menu {
      margin-bottom: 20px;
    }
    .menu a {
      margin-right: 15px;
      text-decoration: none;
      color: blue;
    }
    .menu a:hover {
      text-decoration: underline;
    }
    .content {
      margin-top: 20px;
    }
  </style>
</head>
<body>
<h2>Welcome, I am 23110239_NguyenQuocKhanh</h2>

<!-- Menu điều hướng -->
<div class="menu">
  <a href="${pageContext.request.contextPath}/category/list">📂 Danh sách Category</a>
  <a href="${pageContext.request.contextPath}/category/add">➕ Thêm Category</a>
</div>

<!-- Vùng hiển thị nội dung động -->
<div class="content">
  <c:if test="${not empty cateList}">
    <h3>Danh sách Category</h3>
    <table border="1" cellpadding="5" cellspacing="0">
      <tr>
        <th>STT</th>
        <th>Ảnh</th>
        <th>Tên</th>
        <th>Hành động</th>
      </tr>
      <c:forEach var="cate" items="${cateList}" varStatus="stt">
        <tr>
          <td>${stt.index + 1}</td>
          <c:url value="/image?fname=${cate.icon}" var="imgUrl"/>
          <td><img src="${imgUrl}" width="80" height="60" /></td>
          <td>${cate.catename}</td>
          <td>
            <a href="${pageContext.request.contextPath}/admin/category/edit?id=${cate.cateid}">Sửa</a> |
            <a href="${pageContext.request.contextPath}/admin/category/delete?id=${cate.cateid}"
               onclick="return confirm('Bạn có chắc muốn xóa?')">Xóa</a>
          </td>
        </tr>
      </c:forEach>
    </table>
  </c:if>
</div>
</body>
</html>
