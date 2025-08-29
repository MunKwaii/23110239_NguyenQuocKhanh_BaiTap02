<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Quên mật khẩu</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(135deg, #ff9a9e, #fad0c4);
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
    </style>
</head>
<body>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-5">
            <div class="card p-4">
                <h2 class="text-center text-danger mb-3">🔑 Đặt lại mật khẩu</h2>

                <c:if test="${message != null}">
                    <div class="alert alert-info text-center">${message}</div>
                </c:if>

                <form action="${pageContext.request.contextPath}/forgot-password" method="post">
                    <div class="mb-3 input-group">
                        <span class="input-group-text"><i class="fa fa-envelope"></i></span>
                        <input type="email" name="email" placeholder="Nhập email của bạn" class="form-control" required>
                    </div>

                    <div class="mb-3 input-group">
                        <span class="input-group-text"><i class="fa fa-lock"></i></span>
                        <input type="password" name="password" placeholder="Mật khẩu mới" class="form-control" required>
                    </div>

                    <button type="submit" class="btn btn-danger w-100 btn-custom">Xác nhận đặt lại</button>
                </form>

                <p class="text-center mt-3">
                    <a href="${pageContext.request.contextPath}/login" class="text-decoration-none fw-bold">⬅ Quay lại đăng nhập</a>
                </p>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
