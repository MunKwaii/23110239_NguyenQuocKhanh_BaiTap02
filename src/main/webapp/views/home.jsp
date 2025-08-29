<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <title>Trang Chủ</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background: linear-gradient(120deg, #89f7fe, #66a6ff);
      font-family: Arial, sans-serif;
      min-height: 100vh;
      display: flex;
      flex-direction: column;
    }
    .content-wrapper {
      flex: 1;
      display: flex;
      align-items: center;
      justify-content: center;
    }
    .card {
      border-radius: 20px;
      box-shadow: 0 4px 15px rgba(0,0,0,0.2);
    }
    .avatar {
      width: 120px;
      height: 120px;
      object-fit: cover;
      border-radius: 50%;
      border: 4px solid #fff;
      margin-bottom: 15px;
    }
  </style>
</head>
<body>

<jsp:include page="topbar.jsp"/>

<div class="content-wrapper">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-6 text-center">
        <div class="card p-4">
          <img src="https://i.ibb.co/ZX1xVYd/avatar.png" alt="Avatar" class="avatar mx-auto">
          <h2 class="fw-bold text-primary">Xin chào 👋</h2>
          <p class="lead">Tôi là <b>23110239 - Nguyễn Quốc Khánh</b></p>
          <hr>
          <p>Đây là trang chủ của ứng dụng demo JSP/Servlet.
            Hãy chọn mục trong menu để bắt đầu làm việc.</p>
          <a href="${pageContext.request.contextPath}/admin/category/list" class="btn btn-primary mt-3">➡️ Quản lý danh mục</a>
        </div>
      </div>
    </div>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
