<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<jsp:include page="topbar.jsp"/>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #74ebd5, #9face6);
            margin: 0;
            padding: 0;
        }
        .login-box {
            width: 400px;
            margin: 80px auto;
            border: 1px solid #ddd;
            padding: 30px;
            border-radius: 8px;
            background: #fff;
            box-shadow: 0px 4px 12px rgba(0,0,0,0.1);
        }
        .login-box h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }
        .input-group {
            display: flex;
            align-items: center;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            background: #f9f9f9;
        }
        .input-group span {
            padding: 10px;
            background: #eee;
            border-right: 1px solid #ccc;
            color: #666;
        }
        .input-group input {
            flex: 1;
            padding: 10px;
            border: none;
            background: transparent;
        }
        .login-actions {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin: 15px 0;
        }
        .forgot-link {
            font-size: 0.9em;
            color: #007bff;
            text-decoration: none;
        }
        .forgot-link:hover {
            text-decoration: underline;
        }
        .btn-login {
            width: 100%;
            background: #007bff;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }
        .btn-login:hover {
            background: #0056b3;
        }
        .register-link {
            text-align: center;
            margin-top: 15px;
        }
        .register-link a {
            color: #007bff;
            text-decoration: none;
        }
        .register-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="login-box">
    <h2>Đăng nhập vào hệ thống</h2>

    <!-- Hiển thị thông báo lỗi -->
    <c:if test="${alert != null}">
        <p style="color:red">${alert}</p>
    </c:if>

    <form action="${pageContext.request.contextPath}/login" method="post">
        <div class="input-group">
            <span><i class="fa fa-user"></i></span>
            <input type="text" name="username" placeholder="Tài khoản" required />
        </div>

        <div class="input-group">
            <span><i class="fa fa-lock"></i></span>
            <input type="password" name="password" placeholder="Mật khẩu" required />
        </div>

        <div class="login-actions">
            <label>
                <input type="checkbox" name="remember" /> Nhớ tôi
            </label>
            <a class="forgot-link" href="${pageContext.request.contextPath}/forgot-password">Quên mật khẩu?</a>
        </div>

        <button type="submit" class="btn-login">Đăng nhập</button>
    </form>

    <div class="register-link">
        Nếu bạn chưa có tài khoản, <a href="${pageContext.request.contextPath }/register">hãy đăng ký</a>
    </div>
</div>

</body>
</html>
