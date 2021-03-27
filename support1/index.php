<?php
require_once './config.php';
ob_start();
session_start();
if (empty($_SESSION['admin_login']) || $_SESSION['admin_login'] !== true) {
    rediect('dang-nhap');
}
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"
          integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w=="
          crossorigin="anonymous"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <link href="https://cdn.datatables.net/1.10.24/css/jquery.dataTables.min.css" rel="stylesheet"
          crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js"
            integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js"
            integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG"
            crossorigin="anonymous"></script>
    <title>Trang chủ</title>
</head>
<body>
<div class="container pt-5 ">
    <button type="button" data-bs-toggle="modal" data-bs-target="#staticBackdrop" class="btn btn-primary"><i
                class="fa fa-plus" aria-hidden="true"></i> Thêm
    </button>
    <div class="shadow-lg p-3 mt-4 mb-5 bg-body rounded">
        <table class="table" id="dataTable">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">UID</th>
                <th scope="col">NAME</th>
                <th scope="col">COOKIE</th>
                <th scope="col">Hành động</th>
            </tr>
            </thead>
            <tbody>

            </tbody>
        </table>
    </div>
</div>
<div class="modal fade" id="staticBackdrop" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel">Thêm User</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <div class="form-group">
                        <label class="font-weight-bold">Cookie:</label>
                        <textarea id="cookie" class="form-control"></textarea>
                    </div>
                    <div class="form-group">
                        <label class="font-bold">Danh sách Id nhóm:</label>
                        <textarea id="list-group" class="form-control"></textarea>
                    </div>
                    <div class="form-group">
                        <label class="font-bold">Nội dung comment:</label>
                        <textarea id="content" class="form-control"></textarea>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Huỷ</button>
                <button type="button" id="create" class="btn btn-primary">Thêm</button>
            </div>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
        crossorigin="anonymous"></script>
<script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
<script>
    const base = '<?php echo BASE_URL; ?>';
    const url = '<?php echo BASE_URL . '/Controller/UserController.php' ?>';
    document.addEventListener("DOMContentLoaded", function () {
        let findData = async function () {

            await $.ajax({
                url: url,
                type: "GET",
                dataType: "JSON",
                data: {
                    type: "index",
                },
                success: function (e) {
                    let data=e.data.data;
                    let html='';
                    let i=1;
                    data.forEach(function (user){
                        html+='<tr> <td scope="col">'+i+'</td><td scope="col">'+user.name+'</td><td scope="col">'+user.uid+'</td><td scope="col">'+user.status_cookie+'</td><td scope="col">Hành động</td></tr>';
                        i++;
                    })
                    $("#dataTable > tbody").html(html);
                    let table = $('#dataTable').DataTable();
                }
            })
        };
        findData();
        $(this).on('click', '#create', function () {
            $.ajax({
                url: url,
                type: "POST",
                dataType: "JSON",
                data: {
                    type: "create",
                    cookie: $("#cookie").val().trim(),
                    list_group: $("#list-group").val().trim(),
                    content: $("#content").val().trim(),
                },

                success: function (e) {
                    if (e.status != 200) return alert(e.content);
                    $('button[class="btn-close"]').click();
                    window.location.reload();
                }
            })
        })

    })
</script>
</body>
</html>
