<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quên mật khẩu</title>
</head>
<body>

<h2>Đặt lại mật khẩu</h2>

<form action="${pageContext.request.contextPath}/forgot-password" method="post">
    <p>
        <label>Email:</label>
        <input type="email" name="email" required />
    </p>
    <p>
        <label>Mật khẩu mới:</label>
        <input type="password" name="password" required />
    </p>
    <button type="submit">Đặt lại</button>
</form>

<!-- Hiển thị thông báo -->
<c:if test="${message != null}">
    <p style="color:blue">${message}</p>
</c:if>

</body>
</html>
