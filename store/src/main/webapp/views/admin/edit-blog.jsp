<%@include file="/library/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:url var="APIurl" value="/admin-edit-blog"/>
<c:url var="NewURL" value="/admin-list-blog"/>
<html>
<head>
    <title>Viết bài</title>
</head>
<body>
<div class="content">
    <div class="row">
        <div class="col-lg-12">
            <div class="card card-default">
                <div class="card-header card-header-border-bottom">
                    <h2>Thêm bài viết</h2>
                </div>
                <div class="card-body">
                    <form action="admin-add-product" method="post" id="formAdd">
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label>Tên</label>
                                <input type="text" class="form-control" name="title" required value="${model.title}">
                            </div>
                            <div class="col-md-12 mb-3">
                                <label >Thể loại</label>
                                <label > 1. Review </label>
                                <label > 2. Chia sẽ kinh nghiệm </label>
                                <label > 3. Giải trí</label>
                                <input type="number" class="form-control" name="categoryId" value="${model.categoryId}" required>
                            </div>
                            <div class="col-md-12 mb-3">
                                <label >Hình đại diện</label>
                                <input type="text" class="form-control" name="thumbnail" value="${model.thumbnail}" required>
                                <img src="${model.thumbnail}" style="height: 400px; width: auto;">
                            </div>
                            <div class="col-md-12 mb-3">
                                <label >Mô tả ngắn</label>
                                <input type="text" class="form-control"  name="sortDescription" value="${model.sortDescription}" required>
                            </div>
                            <div class="form-row">
                                <div class="col-md-12 mb-3">
                                    <label >Nội dung</label>
                                    <textarea rows="" cols="" class="form-control" style="width: 820px; height: 175px" id="content" name="content">${model.content}</textarea>
                                </div>

                            </div>
                        </div>
                        <input type="hidden" name="id" value="${model.id}"/>
                        <button class="btn btn-primary" type="submit" id="btnAdd">Xác nhận</button>

                    </form>
                </div>
            </div>
        </div>

    </div>
</div>
<script type="text/javascript">

    let editor = '';
    $(document).ready(function (){
        editor = CKEDITOR.replace('content');
    });
    $('#btnAdd').click(function(e){
        e.preventDefault();
        let data = {};
        let formData = $('#formAdd').serializeArray();
        $.each(formData, function(v, v){
            data["" + v.name +""] = v.value;
        });
        data['content'] = editor.getData();
        updateNew(data)
    });
    function updateNew(data){
        $.ajax({
            url: '${APIurl}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result){
                window.location.href = "${NewURL}?type=add&maxPageItem=10&page=1&message=UPDATE_SUCCESS&alert=success";
            },
            error: function (error){
                window.location.href = "${NewURL}?type=edit&maxPageItem=10&page=1&message=UPDATE_SUCCESS&alert=success";
            }
        });
    }

</script>
</body>
</html>
