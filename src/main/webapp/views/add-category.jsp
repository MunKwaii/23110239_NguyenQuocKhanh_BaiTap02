<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Thêm Category</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5">
    <div class="card shadow-lg rounded-4">
        <div class="card-header bg-primary text-white">
            <h3 class="mb-0">➕ Thêm danh mục mới</h3>
        </div>
        <div class="card-body">
            <form role="form" action="${pageContext.request.contextPath}/admin/category/add"
                  method="post" enctype="multipart/form-data">
                <div class="mb-3">
                    <label class="form-label fw-bold">📂 Tên danh mục:</label>
                    <input type="text" name="name" class="form-control"
                           placeholder="Nhập tên danh mục" required>
                </div>
                <div class="mb-3">
                    <label class="form-label fw-bold">🖼 Ảnh đại diện:</label>
                    <input type="file" name="icon" class="form-control">
                </div>
                <div class="d-flex justify-content-between">
                    <button type="submit" class="btn btn-success px-4">✅ Thêm</button>
                    <button type="reset" class="btn btn-secondary px-4">❌ Hủy</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
