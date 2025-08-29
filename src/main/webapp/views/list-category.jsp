<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Quản lý danh mục</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f6f9;
        }
        .sidebar {
            width: 220px;
            position: fixed;
            top: 0; left: 0;
            height: 100%;
            background: #007bff;
            color: #fff;
            padding-top: 20px;
        }
        .sidebar a {
            color: #fff;
            padding: 12px 20px;
            display: block;
            text-decoration: none;
        }
        .sidebar a:hover {
            background: #0056b3;
        }
        .content {
            margin-left: 240px;
            padding: 20px;
        }
        .card-header h3 {
            color: red;
        }
        .table img {
            border-radius: 8px;
        }
    </style>
</head>
<body>

<div class="sidebar">
    <div class="text-center mb-4">
        <img src="https://i.ibb.co/ZX1xVYd/avatar.png" class="rounded-circle" width="100" alt="Admin"/>
        <h6 class="mt-2">Bạn là Admin</h6>
    </div>
    <a href="#">🏠 Dashboard</a>
    <a href="${pageContext.request.contextPath}/admin/category/list">📂 Quản lý danh mục</a>
    <a href="${pageContext.request.contextPath}/admin/category/add">➕ Thêm danh mục mới</a>
    <a href="#">📦 Quản lý sản phẩm</a>
    <a href="#">👤 Quản lý tài khoản</a>
    <a href="${pageContext.request.contextPath}/views/admin.jsp"> Quay về</a>
</div>

<div class="content">
    <div class="card shadow-lg rounded-4">
        <div class="card-header bg-white">
            <h3 class="fw-bold">📂 Quản lý danh mục</h3>
            <p class="text-muted">Nơi bạn có thể quản lý danh mục của mình</p>
        </div>
        <div class="card-body">
            <table class="table table-striped table-hover align-middle text-center">
                <thead class="table-primary">
                <tr>
                    <th>STT</th>
                    <th>Hình ảnh</th>
                    <th>Tên danh mục</th>
                    <th>Hành động</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${cateList}" var="cate" varStatus="stt">
                    <tr>
                        <td>${stt.index + 1}</td>
                        <c:url value="/image?fname=${cate.icon}" var="imgUrl"/>
                        <td><img src="${imgUrl}" width="80" height="80" alt="image"/></td>
                        <td class="fw-bold">${cate.catename}</td>
                        <td>
                            <a href="<c:url value='/admin/category/edit?id=${cate.cateid}'/>" class="btn btn-sm btn-warning">✏ Sửa</a>
                            <a href="<c:url value='/admin/category/delete?id=${cate.cateid}'/>"
                               class="btn btn-sm btn-danger"
                               onclick="return confirm('Bạn có chắc muốn xóa?')">🗑 Xóa</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <a href="<c:url value='/admin/category/add'/>" class="btn btn-success">➕ Thêm danh mục</a>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
