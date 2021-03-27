<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-secondary text-white">
<div class="container">
<a class="navbar-brand font-weight-bold green" href="/"><i class="fa fa-heart"></i> Hệ thống bot facebook</a>
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
<span class="navbar-toggler-icon"></span>
</button>
<div class="collapse navbar-collapse" id="navbarCollapse">
<ul class="navbar-nav mr-auto">
</ul>
<ul class="nav justify-content-end">
<!--li-- class="nav-item dropdown">
<a class="nav-link  text-white font-weight-bold dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Gói phổ biến</a>
<div class="dropdown-menu">
<a class="nav-link bold text-dark" href="">BOT like cookie</a>
<div class="dropdown-divider"></div>
<a class="nav-link bold text-dark" href="">BOT cmt cookie</a>
</div>
</!--li-->
<?php if($username == $admin){ ?>
<li class="nav-item">
<a class="nav-link  text-white  font-weight-bold" href="quan-li"> Admin</a>
</li>
<?php } ?>
<li class="nav-item">
<a class="nav-link  text-white  font-weight-bold" href="thong-tin-tai-khoan"> Thông tin tài khoản</a>
</li>
<?php if($username){ ?>
<li class="nav-item">
<a class="nav-link text-white font-weight-bold" href="dang-xuat"> Đăng xuất</a>
</li>
<?php } ?>
</!--ul>
</div>
</nav>