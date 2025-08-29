<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Thêm Category</title>
</head>
<body>
<h2>Thêm danh mục mới</h2>

<form role="form" action="${pageContext.request.contextPath}/home/category/add"
      method="post" enctype="multipart/form-data">
    <div>
        <label>Tên danh mục:</label>
        <input type="text" name="name" placeholder="Nhập tên danh mục" required/>
    </div>
    <div>
        <label>Ảnh đại diện:</label>
        <input type="file" name="icon"/>
    </div>
    <div>
        <button type="submit">Thêm</button>
        <button type="reset">Hủy</button>
    </div>
</form>

</body>
</html>
