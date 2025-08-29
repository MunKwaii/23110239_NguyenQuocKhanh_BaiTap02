<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark px-3">
    <a class="navbar-brand fw-bold" href="#">🌐 MyWebsite</a>

    <div class="collapse navbar-collapse justify-content-end">
        <ul class="navbar-nav">
            <c:choose>
                <c:when test="${sessionScope.account == null}">
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/login">Đăng nhập</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/register">Đăng ký</a>
                    </li>
                </c:when>
                <c:otherwise>
                    <li class="nav-item">
                        <span class="navbar-text text-white me-3">
                            👋 Xin chào, <b>${sessionScope.account.fullName}</b>
                        </span>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-sm btn-outline-danger" href="${pageContext.request.contextPath}/logout">🚪 Đăng xuất</a>
                    </li>
                </c:otherwise>
            </c:choose>
        </ul>
    </div>
</nav>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
