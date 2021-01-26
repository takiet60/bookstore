<%@include file="/library/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:url var="APIurl" value="/admin-add-product"/>
<c:url var="NewURL" value="/admin-list-product"/>
<html>
<head>
    <title>Thêm sản phẩm</title>
</head>
<body>
<div class="content">
    <div class="row">
        <div class="col-lg-12">

            <div class="card card-default">
                <div class="card-header card-header-border-bottom">
                    <h2>Thêm sản phẩm</h2>
                </div>
                <div class="card-body">
                    <form action="admin-add-product" method="post" id="formAdd">
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label>Tên</label>
                                <input type="text" class="form-control" name="name" required>
                            </div>
                            <div class="col-md-12 mb-3">
                                <label >Thể loại </label>
                                <label >1. Văn học </label>
                                <label >2. Kinh tế </label>
                                <label >3. Kỹ năng </label>
                                <label >4. Học ngoại ngữ </label>
                                <label >5. Kiến thức tổng hợp </label>
                                <input type="number" class="form-control" name="categoryId" required>
                            </div>
                            <div class="col-md-12 mb-3">
                                <label >Giá nhập hàng</label>
                                <input type="number" class="form-control" name="cost" required>
                            </div>
                            <div class="col-md-12 mb-3">
                                <label >Giảm giá</label>
                                <input type="number" class="form-control"  name="discount" required>
                            </div>
                            <div class="col-md-12 mb-3">
                                <label >Giá bán</label>
                                <input type="number" class="form-control" name="value" required>
                            </div>
                            <div class="col-md-12 mb-3">
                                <label >Hình 1</label>
                                <input type="text" class="form-control" name="image1"
                                       required>
                            </div>
                            <div class="col-md-12 mb-3">
                                <label >Hình 2</label>
                                <input type="text" class="form-control"
                                       required>
                            </div>
                            <div class="col-md-12 mb-3">
                                <label>Hình 3</label>
                                <input type="text" class="form-control"
                                       required>
                            </div>
                            <div class="col-md-12 mb-3">
                                <label>Hình 4</label>
                                <input type="text" class="form-control"
                                       required>
                            </div>
                            <div class="col-md-12 mb-3">
                                <label >Hình 5</label>
                                <input type="text" class="form-control"
                                       required>
                            </div>

                        </div>
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label >Mô tả ngắn</label>
                                <input type="text" class="form-control"  name="shortDescription"  required>
                                <div class="invalid-feedback">
                                    Please provide a valid city.
                                </div>
                            </div>

                        </div>
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label >Mô tả</label>
                                <textarea rows="" cols="" class="form-control" style="width: 820px; height: 175px" id="description" name="description"></textarea>
                            </div>

                        </div>
                        <div class="form-row">
                            <div class="col-md-6 mb-3">
                                <label>Nhà sản xuất</label>
                                <input type="text" class="form-control" name="production"  required>
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
        editor = CKEDITOR.replace('description');
    });
    $('#btnAdd').click(function(e){
        e.preventDefault();
        let data = {};
        let formData = $('#formAdd').serializeArray();
        $.each(formData, function(v, v){
            data["" + v.name +""] = v.value;
        });
        data['description'] = editor.getData();
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
