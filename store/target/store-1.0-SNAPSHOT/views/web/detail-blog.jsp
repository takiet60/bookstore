<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/library/taglib.jsp"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Trang chủ</title>
    <%@include file="/library/web/link.jsp"%>
</head>

<body>
<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
<![endif]-->

<!-- Main wrapper -->
<div class="wrapper" id="wrapper">
    <!-- Header -->
    <%@include file="/library/web/header.jsp"%>
    <div class="page-blog-details section-padding--lg bg--white">
        <div class="container">
            <div class="row">
                <div class="col-lg-9 col-12">
                    <div class="blog-details content">
                        <article class="blog-post-details">
                            <div class="post-thumbnail">
                                <img src="${model.thumbnail}" alt="blog images">
                            </div>
                            <div class="post_wrapper">
                                <div class="post_header">
                                    <h2>${model.title}</h2>
                                    <ul class="post_author">
                                        <li>Đăng bởi : <a href="#">${model.createdBy}</a></li>
                                        <li class="post-separator">/</li>
                                        <li>${model.createdDate}</li>
                                    </ul>
                                </div>
                                <div class="post_content">
                                    ${model.content}
                                </div>
                                <ul class="blog_meta">
                                    <li><a href="#">3 bình luận</a></li>
                                    <li> / </li>
                                    <li>Tags:<span>Thần thoại</span> <span>Phiêu lưu</span> <span>truyện tranh</span></li>
                                </ul>
                                <ul class="social__net--4 d-flex justify-content-start">
                                    <li><a href="#"><i class="fas fa-rss"></i></a></li>
                                    <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                                    <li><a href="#"><i class="fab fa-vimeo-v"></i></a></li>
                                    <li><a href="#"><i class="fab fa-tumblr"></i></a></li>
                                    <li><a href="#"><i class="fab fa-google-plus-g"></i></a></li>
                                </ul>
                            </div>
                        </article>
                        <div class="comments_area">
                            <h3 class="comment__title">1 bình luận</h3>
                            <ul class="comment__list">
                                <li>
                                    <div class="wn__comment">
                                        <div class="thumb">
                                            <img src="images/blog/comment/1.jpeg" alt="comment images">
                                        </div>
                                        <div class="content">
                                            <div class="comnt__author d-block d-sm-flex">
                                                <span><a href="#">admin</a> Hna Teik</span>
                                                <span>Ngày 6 tháng 10 năm 2014, 9:26 am</span>
                                                <div class="reply__btn">
                                                    <a href="#">Trả lời</a>
                                                </div>
                                            </div>
                                            <p>Bài viết khá là thu hút, nội dung tuyệt vời lắm</p>
                                        </div>
                                    </div>
                                </li>
                                <li class="comment_reply">
                                    <div class="wn__comment">
                                        <div class="thumb">
                                            <img src="images/blog/comment/1.jpeg" alt="comment images">
                                        </div>
                                        <div class="content">
                                            <div class="comnt__author d-block d-sm-flex">
                                                <span><a href="#">admin</a> hastech</span>
                                                <span>Ngày 6 tháng 10 năm 2014, 10:26 am</span>
                                                <div class="reply__btn">
                                                    <a href="#">Trả lời</a>
                                                </div>
                                            </div>
                                            <p>Cảm ơn bạn đã cho ý kiến</p>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="wn__comment">
                                        <div class="thumb">
                                            <img src="images/blog/comment/1.jpeg" alt="comment images">
                                        </div>
                                        <div class="content">
                                            <div class="comnt__author d-block d-sm-flex">
                                                <span><a href="#">admin</a> Huy bd</span>
                                                <span>Ngày 6 tháng 10 năm 2014, 11:26 am</span>
                                                <div class="reply__btn">
                                                    <a href="#">Trả lời</a>
                                                </div>
                                            </div>
                                            <p>Bài viết hay.</p>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="comment_respond">
                            <h3 class="reply_title">Để lại bình luận <small><a href="#">Hủy</a></small></h3>
                            <form class="comment__form" action="#">
                                <p>Email của bạn sẽ không được tiết lộ </p>
                                <div class="input__box">
                                    <label>Bình luận</label>
                                    <textarea name="comment"></textarea>
                                </div>
                                <div class="input__wrapper clearfix">
                                    <div class="input__box name one--third">
                                        <label>Tên</label>
                                        <input type="text" placeholder="name">
                                    </div>
                                    <div class="input__box email one--third">
                                        <label>Email</label>
                                        <input type="email" placeholder="email">
                                    </div>
                                    <div class="input__box website one--third">
                                        <label>Website</label>
                                        <input type="text" placeholder="website">
                                    </div>
                                </div>
                                <div class="submite__btn">
                                    <a href="#">Đăng</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-12 md-mt-40 sm-mt-40">
                    <div class="wn__sidebar">
                        <!-- Start Single Widget -->
                        <aside class="widget search_widget">
                            <h3 class="widget-title">Tìm kiếm</h3>
                            <form action="#">
                                <div class="form-input">
                                    <input type="text" placeholder="Tìm kiếm...">
                                    <button><i class="fa fa-search"></i></button>
                                </div>
                            </form>
                        </aside>
                        <!-- End Single Widget -->
                        <!-- Start Single Widget -->
                        <aside class="widget recent_widget">
                            <h3 class="widget-title">Gần đây</h3>
                            <div class="recent-posts">
                                <ul>
                                    <li>
                                        <div class="post-wrapper d-flex">
                                            <div class="thumb">
                                                <a href="blog-details.html"><img src="images/blog/sm-img/1.jpg" alt="blog images"></a>
                                            </div>
                                            <div class="content">
                                                <h4><a href="blog-details.html">Bài luận văn</a></h4>
                                                <p> 17 tháng 8</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="post-wrapper d-flex">
                                            <div class="thumb">
                                                <a href="blog-details.html"><img src="images/blog/sm-img/2.jpg" alt="blog images"></a>
                                            </div>
                                            <div class="content">
                                                <h4><a href="blog-details.html">Cảm nhận...</a></h4>
                                                <p> 23 tháng 9</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="post-wrapper d-flex">
                                            <div class="thumb">
                                                <a href="blog-details.html"><img src="images/blog/sm-img/3.jpg" alt="blog images"></a>
                                            </div>
                                            <div class="content">
                                                <h4><a href="blog-details.html">Như thế nào...</a></h4>
                                                <p> 19 tháng 10</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="post-wrapper d-flex">
                                            <div class="thumb">
                                                <a href="blog-details.html"><img src="images/blog/sm-img/4.jpg" alt="blog images"></a>
                                            </div>
                                            <div class="content">
                                                <h4><a href="blog-details.html">Có hay không...</a></h4>
                                                <p> 1 tháng 11</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="post-wrapper d-flex">
                                            <div class="thumb">
                                                <a href="blog-details.html"><img src="images/blog/sm-img/5.jpg" alt="blog images"></a>
                                            </div>
                                            <div class="content">
                                                <h4><a href="blog-details.html">Sẽ ra sao...</a></h4>
                                                <p> 14 tháng 11</p>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </aside>
                        <!-- End Single Widget -->
                        <!-- Start Single Widget -->
                        <aside class="widget comment_widget">
                            <h3 class="widget-title">Bình luận</h3>
                            <ul>
                                <li>
                                    <div class="post-wrapper">
                                        <div class="thumb">
                                            <img src="images/blog/comment/1.jpeg" alt="Comment images">
                                        </div>
                                        <div class="content">
                                            <p>hna teik:</p>
                                            <a href="#">Quisque semper nunc vitae...</a>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="post-wrapper">
                                        <div class="thumb">
                                            <img src="images/blog/comment/1.jpeg" alt="Comment images">
                                        </div>
                                        <div class="content">
                                            <p>Admin says:</p>
                                            <a href="#">Nếu ta là gió thì...</a>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="post-wrapper">
                                        <div class="thumb">
                                            <img src="images/blog/comment/1.jpeg" alt="Comment images">
                                        </div>
                                        <div class="content">
                                            <p>Huy bd:</p>
                                            <a href="#">Người ta còn gì...</a>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="post-wrapper">
                                        <div class="thumb">
                                            <img src="images/blog/comment/1.jpeg" alt="Comment images">
                                        </div>
                                        <div class="content">
                                            <p>Thinh:</p>
                                            <a href="#">Con người sống với nhau...</a>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="post-wrapper">
                                        <div class="thumb">
                                            <img src="images/blog/comment/1.jpeg" alt="Comment images">
                                        </div>
                                        <div class="content">
                                            <p>Nguoi nao do:</p>
                                            <a href="#">Nguoi nao do co nho...</a>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </aside>
                        <!-- End Single Widget -->
                        <!-- Start Single Widget -->
                        <aside class="widget category_widget">
                            <h3 class="widget-title">Thể loại</h3>
                            <ul>
                                <li><a href="#">Sinh học</a></li>
                                <li><a href="#">Kinh doanh</a></li>
                                <li><a href="#">Nấu ăn</a></li>
                                <li><a href="#">Sức khỏe và thể thao</a></li>
                                <li><a href="#">Lãng mạn</a></li>
                                <li><a href="#">Phiêu lưu</a></li>
                                <li><a href="#">Trinh thám</a></li>
                            </ul>
                        </aside>
                        <!-- End Single Widget -->
                        <!-- Start Single Widget -->
                        <aside class="widget archives_widget">
                            <h3 class="widget-title">Archives</h3>
                            <ul>
                                <li><a href="#">Tháng 1 năm 2018</a></li>
                                <li><a href="#">Tháng 2 năm 2018</a></li>
                                <li><a href="#">Tháng 3 năm 2018</a></li>
                                <li><a href="#">Tháng 4 năm 2018</a></li>
                                <li><a href="#">Tháng 5 năm 2018</a></li>
                            </ul>
                        </aside>
                        <!-- End Single Widget -->
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- JS Files -->
    <%@include file="/library/web/script.jsp"%>

</body>

</html>