<%@include file="/library/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:url var="APIurl" value="/admin-add-blog"/>
<c:url var="NewURL" value="/admin-list-product"/>
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
                                <input type="text" class="form-control" name="title" required>
                            </div>
                            <div class="col-md-12 mb-3">
                                <label >Thể loại</label>
                                <label > 1. Review </label>
                                <label > 2. Chia sẽ kinh nghiệm </label>
                                <label > 3. Giải trí</label>
                                <input type="number" class="form-control" name="categoryId" required>
                            </div>
                            <div class="col-md-12 mb-3">
                                <label >Hình đại diện</label>
                                <input type="text" class="form-control" name="thumbnail" required>
                            </div>
                            <div class="col-md-12 mb-3">
                                <label >Mô tả ngắn</label>
                                <input type="text" class="form-control"  name="sortDescription" required>
                            </div>
                            <div class="form-row">
                                <div class="col-md-12 mb-3">
                                    <label >Nội dung</label>
                                    <textarea rows="" cols="" class="form-control" style="width: 820px; height: 175px" id="content" name="content"></textarea>
                                </div>

                            </div>
                        </div>

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
        addNew(data)
    });
    function addNew(data){
        $.ajax({
            url: '${APIurl}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result){
                window.location.href = "${NewURL}?type=list&maxPageItem=10&page=1&message=INSERT_SUCCESS&alert=success";
            },
            error: function (error){
                window.location.href = "${NewURL}?type=add&maxPageItem=10&page=1&message=INSERT_SUCCESS&alert=success";
            }
        });
    }

    function updateNew(data){
        $.ajax({
            url: '${APIurl}',
            type: 'PUT',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result){
                console.log(result)
            },
            error: function (error){
                console.log(error)
            }
        });
    }

</script>
</body>
</html>
