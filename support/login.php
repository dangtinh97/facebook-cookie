<?php require_once getcwd().'/config.php';?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <title>Đăng nhập</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background-color: #17a2b8;
            height: 100vh;
        }
        #login .container #login-row #login-column #login-box {
            margin-top: 120px;
            max-width: 600px;
            height: 320px;
            border: 1px solid #9C9C9C;
            background-color: #EAEAEA;
        }
        #login .container #login-row #login-column #login-box #login-form {
            padding: 20px;
        }
        #login .container #login-row #login-column #login-box #login-form #register-link {
            margin-top: -85px;
        }
    </style>
</head>
<body>
<div id="login">
    <div class="container">
        <div id="login-row" class="row justify-content-center align-items-center">
            <div id="login-column" class="col-md-6">
                <div id="login-box" class="col-md-12">
                    <div id="login-form" class="form">
                        <input type="hidden" name="type" value="login">
                        <h3 class="text-center text-info">Đăng nhập</h3>
                        <div class="form-group">
                            <label for="username" class="text-info">Họ tên</label><br>
                            <input type="text" name="username" id="username" class="form-control" value="adminhaku">
                        </div>
                        <div class="form-group">
                            <label for="password" class="text-info">Mật khẩu:</label><br>
                            <input type="text" name="password" id="password" class="form-control" value="Duongtuanh005">
                        </div>
                        <div class="form-group">
                            <button type="button" name="submit" class="btn btn-info btn-md" value="Đăng nhập">Đăng nhập</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    document.addEventListener("DOMContentLoaded",function (){
        let base = '<?php echo BASE_URL; ?>';
        let url='<?php echo BASE_URL.'/Controller/AuthController.php' ?>';
        $(this).on('click','button',function (){
            $.ajax({
                url:url,
                type:"POST",
                dataType:"JSON",
                data:{
                    type:"login",
                    username:$("#username").val().trim(),
                    password:$("#password").val().trim(),
                },success:function (re){
                    if(re.status!=200) return alert(re.content);
                    window.location.href = base+'/trang-chu';
                }
            }).fail(function (e){
              alert("Lỗi hệ thống");
              return;
            })
        })
    })
</script>
</body>
</html>