<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Danh sách Category</title>
</head>
<body>
<h2>Danh sách danh mục</h2>

<table border="1" width="100%">
    <thead>
    <tr>
        <th>STT</th>
        <th>Ảnh</th>
        <th>Tên danh mục</th>
        <th>Hành động</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${cateList}" var="cate" varStatus="stt">
        <tr>
            <td>${stt.index + 1}</td>
            <c:url value="/image?fname=${cate.icon}" var="imgUrl"/>
            <td><img src="${imgUrl}" width="150" height="120" alt="image"/></td>
            <td>${cate.catename}</td>
            <td>
                <a href="<c:url value='/admin/category/edit?id=${cate.cateid}'/>">Sửa</a> |
                <a href="<c:url value='/admin/category/delete?id=${cate.cateid}'/>"
                   onclick="return confirm('Bạn có chắc muốn xóa?')">Xóa</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<br/>
<a href="<c:url value='/admin/category/add'/>">+ Thêm danh mục</a>

</body>
</html>
