<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Đăng ký tài khoản</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(135deg, #74ebd5, #9face6);
            font-family: Arial, sans-serif;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
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
                <h2 class="text-center text-primary mb-3">📝 Tạo tài khoản mới</h2>

                <c:if test="${alert != null}">
                    <div class="alert alert-danger text-center">${alert}</div>
                </c:if>

                <form action="${pageContext.request.contextPath}/register" method="post">
                    <div class="mb-3 input-group">
                        <span class="input-group-text"><i class="fa fa-user"></i></span>
                        <input type="text" name="username" placeholder="Tài khoản" class="form-control" required>
                    </div>

                    <div class="mb-3 input-group">
                        <span class="input-group-text"><i class="fa fa-envelope"></i></span>
                        <input type="email" name="email" placeholder="Email" class="form-control" required>
                    </div>

                    <div class="mb-3 input-group">
                        <span class="input-group-text"><i class="fa fa-lock"></i></span>
                        <input type="password" name="password" placeholder="Mật khẩu" class="form-control" required>
                    </div>

                    <div class="mb-3 input-group">
                        <span class="input-group-text"><i class="fa fa-user-circle"></i></span>
                        <input type="text" name="fullname" placeholder="Họ và tên" class="form-control" required>
                    </div>

                    <div class="mb-3 input-group">
                        <span class="input-group-text"><i class="fa fa-phone"></i></span>
                        <input type="text" name="phone" placeholder="Số điện thoại" class="form-control" required>
                    </div>

                    <button type="submit" class="btn btn-primary w-100 btn-custom">Đăng ký</button>
                </form>

                <p class="text-center mt-3">
                    Đã có tài khoản? <a href="${pageContext.request.contextPath}/login" class="text-decoration-none fw-bold">Đăng nhập</a>
                </p>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
