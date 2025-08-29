<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Sửa Category</title>
</head>
<body>
<h2>Chỉnh sửa danh mục</h2>

<c:url value="/admin/category/edit" var="editUrl"/>
<form role="form" action="${editUrl}" method="post" enctype="multipart/form-data">
    <input type="hidden" name="id" value="${category.cateid}"/>

    <div>
        <label>Tên danh mục:</label>
        <input type="text" name="name" value="${category.catename}" required/>
    </div>

    <div>
        <c:url value="/image?fname=${category.icon}" var="imgUrl"/>
        <img src="${imgUrl}" width="100" alt="current image"/>
        <br/>
        <label>Ảnh đại diện mới:</label>
        <input type="file" name="icon"/>
    </div>

    <div>
        <button type="submit">Cập nhật</button>
        <button type="reset">Làm lại</button>
    </div>
</form>

</body>
</html>
