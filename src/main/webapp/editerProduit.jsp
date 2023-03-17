<%@ page language="java" contentType="text/html; charset=windows-1256"
         pageEncoding="windows-1256"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
    <title>Edit Product</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
<%@include file="header.jsp" %>
<p></p>
<div class="container">
    <div class="card">
        <div class="card-header">
            <h3>Edit Product</h3>
        </div>
        <div class="card-body">
            <form action="update.do" method="POST">
                <div hidden class="form-group">
                    <label class="control-label">ID :</label>
                    <input type="text" name="id" class="form-control" value="${produit.idProduit}"/>
                </div>
                <div class="form-group">
                    <label class="control-label">Product Name :</label>
                    <input type="text" name="nom" class="form-control"
                           value="${produit.nomProduit}"/>
                </div>
                <div class="form-group">
                    <label class="control-label">Price :</label>
                    <input type="text" name="prix" class="form-control" value="${produit.prix}"/>
                </div>
                <label class="control-label">Categorie :</label>
                <div class="form-group">
                    <select name="categorie" class="form-control">
                        <option value="${produit.categorieByIdCategorie.idCat}"
                                selected>${produit.categorieByIdCategorie.nomCat}</option>
                        <c:forEach items="${categorieModel.categories}" var="cat">
                            <c:if test="${cat.idCat != produit.categorieByIdCategorie.idCat}">
                                <option value="${cat.idCat}">${cat.nomCat}</option>
                            </c:if>
                        </c:forEach>
                    </select>
                </div>
                <div>
                    <button type="submit" class="btn btn-primary">Modifier</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>