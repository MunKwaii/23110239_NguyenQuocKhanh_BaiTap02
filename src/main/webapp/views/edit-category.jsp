<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Sửa Category</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(135deg, #c3ec52, #0ba29d);
            font-family: Arial, sans-serif;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .card {
            border-radius: 20px;
            box-shadow: 0 6px 15px rgba(0,0,0,0.2);
        }
        .form-control {
            border-radius: 10px;
        }
        .btn-custom {
            border-radius: 10px;
            font-weight: bold;
        }
        img.preview {
            border: 2px solid #ddd;
            border-radius: 10px;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card p-4">
                <h2 class="text-center text-dark mb-3">✏️ Chỉnh sửa danh mục</h2>

                <c:url value="/admin/category/edit" var="editUrl"/>
                <form role="form" action="${editUrl}" method="post" enctype="multipart/form-data">
                    <input type="hidden" name="id" value="${category.cateid}"/>

                    <div class="mb-3">
                        <label class="form-label fw-bold">📂 Tên danh mục:</label>
                        <input type="text" name="name" value="${category.catename}"
                               class="form-control" required/>
                    </div>

                    <div class="mb-3">
                        <c:url value="/image?fname=${category.icon}" var="imgUrl"/>
                        <label class="form-label fw-bold">🖼 Ảnh hiện tại:</label>
                        <br/>
                        <img src="${imgUrl}" width="150" class="preview" alt="current image"/>
                    </div>

                    <div class="mb-3">
                        <label class="form-label fw-bold">📤 Chọn ảnh mới:</label>
                        <input type="file" name="icon" class="form-control"/>
                    </div>

                    <div class="d-flex justify-content-between">
                        <button type="submit" class="btn btn-success btn-custom">✅ Cập nhật</button>
                        <button type="reset" class="btn btn-secondary btn-custom">🔄 Làm lại</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
