<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<jsp:include page="topbar.jsp"/>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng nhập</title>
</head>
<body>

<h2>Đăng nhập tài khoản</h2>

<!-- Hiển thị thông báo lỗi -->
<c:if test="${alert != null}">
    <p style="color:red">${alert}</p>
</c:if>

<form action="${pageContext.request.contextPath}/login" method="post">
    <p>
        <label>Tài khoản: </label>
        <input type="text" name="username" />
    </p>
    <p>
        <label>Mật khẩu: </label>
        <input type="password" name="password" />
    </p>
    <p>
        <input type="checkbox" name="remember" /> Nhớ tôi
    </p>
    <p>
        <button type="submit">Đăng nhập</button>
    </p>
</form>

</body>
</html>
