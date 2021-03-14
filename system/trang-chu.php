<!-- Modal -->

<div class="modal fade" id="editlike" tabindex="-1" role="dialog" aria-labelledby="editlike" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Chỉnh sửa gói bot</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="javascript:voild();" method="post">
                <div class="modal-body" id="data_like"></div>
            </form>

        </div>
    </div>
</div>
<script>
    function savelike() {
        var edit_cookie = $('#edit_cookie').val();
        var edit_camxuc = $('#edit_camxuc').val();
        var edit_mode_bot = $('#edit_mode_bot').val();
        var edit_time_start = $('#edit_time_start').val();
        var edit_time_end = $('#edit_time_end').val();
        var edit_limitpost = $('#edit_limitpost').val();
        var edit_time = $('#edit_time').val();
        var edit_ghichu = $('#edit_ghichu').val();
        if (edit_cookie == '' || edit_camxuc == '' || edit_mode_bot == '' || edit_time_start == '' || edit_time_end == '' || edit_limitpost == '' || edit_time == '' || edit_ghichu == '') {
            Swal.fire("Cảnh báo!", "Còn thiếu gì đó ?...", "warning");
            return false;
        }
        $.post('edit-like.php', {
            type: 'save',
            cookie: edit_cookie,
            camxuc: edit_camxuc,
            mode_bot: edit_mode_bot,
            time_start: edit_time_start,
            time_end: edit_time_end,
            limitpost: edit_limitpost,
            time: edit_time,
            ghichu: edit_ghichu
        }, function (data) {
            //$('#editlike').modal('hide');
            Data = JSON.parse(data)
            if (Data.loading) {
                setTimeout(() => {
                    window.reload()
                }, Data.time)
            }
            Swal.fire(Data.title, Data.text, Data.type)
        })
    }

    function sualike(id) {
        $.post('edit-like.php', {edit: id}, function (data) {
            $('#editlike').modal('show')
            $('#data_like').html(data);
        })

    }
</script>

<!-- Modal -->
<div class="modal fade" id="editcmt" tabindex="-1" role="dialog" aria-labelledby="editcmt" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Chỉnh sửa gói bot</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="javascript:voild();" method="post">
                <div class="modal-body" id="data_cmt"></div>
            </form>

        </div>
    </div>
</div>
<script>
    function savecmt() {
        var edit_cookie = $('#edit_cookie_cmt').val();
        var edit_noidung = $('#edit_noidung_cmt').val();
        var edit_mode_bot = $('#edit_mode_bot_cmt').val();
        var edit_time_start = $('#edit_time_start_cmt').val();
        var edit_time_end = $('#edit_time_end_cmt').val();
        var edit_limitpost = $('#edit_limitpost_cmt').val();
        var edit_time = $('#edit_time_cmt').val();
        var edit_ghichu = $('#edit_ghichu_cmt').val();
        if (edit_cookie == '' || edit_noidung == '' || edit_mode_bot == '' || edit_time_start == '' || edit_time_end == '' || edit_limitpost == '' || edit_time == '' || edit_ghichu == '') {
            Swal.fire("Cảnh báo!", "Còn thiếu gì đó ?...", "warning");
            return false;
        }
        $.post('edit-cmt.php', {
            type: 'save',
            cookie: edit_cookie,
            noidung: edit_noidung,
            mode_bot: edit_mode_bot,
            time_start: edit_time_start,
            time_end: edit_time_end,
            limitpost: edit_limitpost,
            time: edit_time,
            ghichu: edit_ghichu
        }, function (data) {
            //$('#editcmt').modal('hide');
            Data = JSON.parse(data)
            if (Data.loading) {
                setTimeout(() => {
                    window.reload()
                }, Data.time)
            }
            Swal.fire(Data.title, Data.text, Data.type)
        })
    }

    function suacmt(id) {
        $.post('edit-cmt.php', {edit: id}, function (data) {
            $('#editcmt').modal('show')
            $('#data_cmt').html(data);
        })

    }
</script>
<div class="container pl-0 pr-0">
    <div class="alert alert-success" role="alert">
        <h4 class="alert-heading">Chào mừng! <b class="red"><?= $username ?></b></h4>
        <p>Đây là 1 trang web cài đặt bot cảm xúc và bình luận tương tác hoàn toàn miễn phí.</p>
    </div>
    <div class="alert alert-warning alert-dismissible fade show" role="alert">
        <strong>Bắt đầu ngay nào!</strong> Hãy sử dụng các chức năng có sẫn bên dưới!.
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
    <!-- BOT LIKE -->
    <div class="row">
        <div class="col-lg-6">
            <div class="card bg-secondary">
                <div class="card-header"><b class="header-title text-white font-weight-bold h5"><i
                                class="fa fa-heart"></i> Cấu hình bot like</b></div>
                <div class="card-body bg-white">
                    <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                        <li class="nav-item ">
                            <a class="nav-link font-weight-bold active" id="BOTLIKE" data-toggle="pill" href="#bot-like"
                               role="tab" aria-controls="pills-home" aria-selected="true">Cài đặt</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link font-weight-bold" id="QUAN-LI-BOT-LIKE" data-toggle="pill"
                               href="#quan-li-like" role="tab" aria-controls="pills-profile" aria-selected="false">Quản
                                lí gói <span
                                        class="badge badge-success"><?= mysqli_num_rows(mysqli_query($kunloc, "SELECT id FROM botlike WHERE username = '$username'")); ?></span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link font-weight-bold" id="LICH-SU-BOT-LIKE" data-toggle="pill"
                               href="#log-like" role="tab" aria-controls="pills-contact" aria-selected="false">Lịch sử
                                thả tim <span
                                        class="badge badge-success"><?= mysqli_num_rows(mysqli_query($kunloc, "SELECT id FROM log_like WHERE username = '$username'")); ?></span></a>
                        </li>
                    </ul>
                    <div class="tab-content" id="pills-tabContent">
                        <div class="tab-pane show active" id="bot-like" role="tabpanel" aria-labelledby="BOTLIKE">
                            <!-- /./-->
                            <div class="col-sm-13">
                                <div class="ml-2 row form-group has-default has-feedback">
                                    Cảm xúc có thể cài:
                                    <div class="icheck-material-primary icheck-inline m-1">
                                        <input type="checkbox" name="type[LIKE]" id="type[LIKE]" value="LIKE"
                                               checked="none" style="display:none">
                                    </div>
                                    <label for="type[LIKE]"><img src="../img/icon/LIKE.gif" width="20" height="20"
                                                                 data-toggle="tooltip" title=""
                                                                 data-original-title="Thích"></label>
                                    <div class="icheck-material-success icheck-inline m-1">
                                        <input type="checkbox" name="type[LOVE]" id="type[LOVE]" value="LOVE" checked=""
                                               style="display:none">
                                    </div>
                                    <label for="type[LOVE]"><img src="../img/icon/LOVE.gif" width="20" height="20"
                                                                 data-toggle="tooltip" title=""
                                                                 data-original-title="Yêu Thích"></label>
                                    <div class="icheck-material-danger icheck-inline m-1">
                                        <input type="checkbox" name="type[HAHA]" id="type[HAHA]" value="HAHA" checked=""
                                               style="display:none">
                                    </div>
                                    <label for="type[HAHA]"><img src="../img/icon/HAHA.gif" width="20" height="20"
                                                                 data-toggle="tooltip" title=""
                                                                 data-original-title="HaHa"></label>
                                    <div class="icheck-material-secondary icheck-inline m-1">
                                        <input type="checkbox" name="type[WOW]" id="type[WOW]" value="WOW" checked=""
                                               style="display:none">
                                    </div>
                                    <label for="type[WOW]"><img src="../img/icon/WOW.gif" width="20" height="20"
                                                                data-toggle="tooltip" title=""
                                                                data-original-title="Wow"></label>
                                    <div class="icheck-material-warning icheck-inline m-1">
                                        <input type="checkbox" name="type[SAD]" id="type[SAD]" value="SAD" checked=""
                                               style="display:none">
                                    </div>
                                    <label for="type[SAD]"><img src="../img/icon/SAD.gif" width="20" height="20"
                                                                data-toggle="tooltip" title=""
                                                                data-original-title="Buồn"></label>
                                    <div class="icheck-material-info icheck-inline m-1">
                                        <input type="checkbox" name="type[ANGRY]" id="type[ANGRY]" value="ANGRY"
                                               checked="" style="display:none">
                                    </div>
                                    <label for="type[ANGRY]"><img src="../img/icon/ANGRY.gif" width="20" height="20"
                                                                  data-toggle="tooltip" title=""
                                                                  data-original-title="Phẩn nộ"></label>
                                </div>
                            </div>
                            <!-- /./ -->
                            <form method="post" action="#">
                                <div class="form-group">
                                    <label class="font-weight-bold">Cookie:</label>
                                    <textarea id="cookie" class="form-control"
                                              placeholder="Vui lòng điền cookie của bạn...."></textarea>
                                </div>
                                <!-- /./ -->
                                <div class="irow row mt-2">
                                    <!-- /./ -->
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label class="form-label" style="color:black">Chọn cảm xúc</label>
                                            <select class="custom-select" name="camxuc" id="camxuc"
                                                    style="border-radius:25px">
                                                <option value="1">👍Thích(Like)</option>
                                                <option value="2">❤ Thả Tim (Love)</option>
                                                <option value="3">🤣 Cười (Haha)</option>
                                                <option value="4">😥 Buồn (Sad)</option>
                                                <option value="5">😲 Ngạc Nhiên (WOW)</option>
                                                <option value="6">😡 Phẩn Nộ (ANGRY)</option>
                                                <option value="all" selected="">Cảm Xúc Ngẫu Nhiên 💞</option>
                                            </select>
                                        </div>

                                    </div>
                                    <!-- /./ -->
                                    <div class="col-sm-6 d-none">
                                        <div class="form-group">
                                            <label class="form-label" style="color:black">Chế Độ Like</label>
                                            <select name="mode_bot" id="mode_bot" class="custom-select"
                                                    style="border-radius:25px" required>
                                                <option value="none">Chặn group-page</option>
                                                <option value="like">Like Tất Cả</option>
                                            </select>
                                        </div>
                                    </div>

                                </div>
                                <!-- /./ -->
                                <div class="irow row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label class="form-label" style="color:black">Bắt Đầu 0h > 23h</label>
                                            <select class="custom-select" name="time_start" id="time_start"
                                                    style="border-radius:25px" required>
                                                <?php for ($i = 1; $i < 24; $i++): ?>
                                                    <option value="<?= $i ?>"><?= $i ?>:00</option>
                                                <?php endfor; ?>
                                            </select>

                                        </div>
                                    </div>
                                    <!-- /./ -->
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label class="form-label" style="color:black">Kết Thúc 0h > 23h</label>
                                            <select class="custom-select" name="time_end" id="time_end"
                                                    style="border-radius:25px" required>
                                                <?php for ($i = 1; $i < 24; $i++): ?>
                                                    <option value="<?= $i ?>"><?= $i ?>:00</option>
                                                <?php endfor; ?>
                                            </select>
                                        </div>
                                    </div>

                                </div>
                                <!-- /./ -->
                                <!-- /./ -->
                                <div class="irow row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label class="form-label" style="color:black">Giới hạn bài trong
                                                ngày</label>
                                            <select name="limitpost" id="limitpost" class="custom-select"
                                                    style="border-radius:25px" required>
                                                <option value="5">5 Bài</option>
                                                <option value="10">10 Bài</option>
                                                <option value="20">20 Bài</option>
                                                <option value="50">50 Bài</option>
                                                <option value="100">100 Bài</option>
                                                <option value="200">200 Bài</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label class="form-label" style="color:black">Thời Gian Cài BOT</label>
                                            <select name="time" id="time" class="custom-select"
                                                    style="border-radius:25px" required>
                                                <option value="30">1 Tháng</option>
                                                <option value="60">2 Tháng</option>
                                                <option value="90">3 Tháng</option>
                                                <option value="120">4 Tháng</option>
                                                <option value="180">6 Tháng</option>
                                            </select>
                                        </div>
                                    </div>

                                </div>
                                <!-- /./ -->
                                <div class="col-sm-13">
                                    <div class="form-group">
                                        <label class="form-label" style="color:black">Ghi chú:</label>
                                        <textarea class="form-control" rows="2" id="ghichu"
                                                  placeholder="Để lại một vài ghi chú, ví dụ như ngày hết hạn."></textarea>
                                    </div>
                                </div>
                                <!-- /./ -->
                                <div class="col-sm-13">
                                    <div class="form-group text-left">
                                        <button type="submit" id="submit" class="btn btn-outline-danger m-1"
                                                data-toggle="tooltip" title="Nhấp vào đây để cài">Tiến Hành Cài Đặt
                                        </button>
                                    </div>
                                </div>

                            </form>
                            <!-- /./-->
                            <script type="text/javascript">
                                $('#submit').click(function () {
                                    var cookie = $('#cookie').val().trim();
                                    var camxuc = $('#camxuc').val();
                                    var limitpost = $('#limitpost').val();
                                    var mode_bot = $('#mode_bot').val();
                                    var time_start = $('#time_start').val();
                                    var time_end = $('#time_end').val();
                                    var time = $('#time').val();
                                    var ghichu = $('#ghichu').val();
                                    if (cookie == '' || camxuc == '' || mode_bot == '' || limitpost == '' || time_start == '' || time_end == '' || time == '' || ghichu == '') {
                                        Swal.fire(
                                            "Yêu cầu khi cài bot!",
                                            "Bạn cần điền đầy đủ các trương ở trên để tiến hành cài bot cảm xúc",
                                            "error"
                                        );
                                        return false;
                                    }
                                    $('#submit').prop('disabled', true).html('Đang Kiểm Tra...')
                                    $.post('API/api-bot-like.php', {
                                        cookie: cookie,
                                        camxuc: camxuc,
                                        mode_bot: mode_bot,
                                        limitpost: limitpost,
                                        time_start: time_start,
                                        time_end: time_end,
                                        time: time,
                                        ghichu: ghichu
                                    }, function (data) {
                                        Data = JSON.parse(data);
                                        if (Data.reload) {
                                            setTimeout(() => {
                                                location.reload()
                                            }, Data.time)
                                        }
                                        Swal.fire(Data.title, Data.text, Data.type);
                                        $('#submit').prop('disabled', false).html('Hoàn Thành Kiểm Tra')
                                    })
                                });
                            </script>
                        </div>
                        <div class="tab-pane" id="quan-li-like" role="tabpanel" aria-labelledby="QUAN-LI-BOT-LIKE">
                            <!-- /./ -->
                            <div class="table-responsive">
                                <table id="danh-sach-bot-like"
                                       class="table table-bordered dataTable nowrap scroll-horizontal-vertical">
                                    <thead>
                                    <tr>
                                        <th>Status</th>
                                        <th>Cài Đặt</th>
                                        <th>Trang Cá Nhân</th>
                                        <th>Người Thêm</th>
                                        <th>Cảm Xúc</th>
                                        <th>Limit Post</th>
                                        <th>Thời gian Cron</th>
                                        <th>Thòi Gian BOT</th>
                                        <th>Ghi Chú</th>
                                    </tr>
                                    <tbody>
                                    <?php
                                    $SQL_cookie = mysqli_query($kunloc, "SELECT * FROM botlike WHERE username= '$username'");
                                    while ($echo = mysqli_fetch_object($SQL_cookie)) {
                                        $conlai = $echo->date - time();
                                        $tongtime = round($conlai / (24 * 3600));
                                        if ($tongtime < 1) {
                                            $het_han2 = '<b style="color:red">Gói Hết Hạn</b>';
                                        } else {
                                            $het_han2 = $tongtime . " Ngày";
                                        }
                                        ?>
                                        <tr class="table">
                                            <td>
                                                <?php
                                                if ($echo->mode == 'bat') {
                                                    echo '<h style="color:green">Bật</h>';
                                                } else if ($echo->mode == 'tat') {
                                                    echo '<h style="color:red">Tắt</h>';
                                                }
                                                ?>
                                                -
                                                <?php

                                                if ($echo->trangthai == 'live') {
                                                    echo '<h style="color:green">COOKIE LIVE</h>';
                                                } else if ($echo->trangthai == 'die') {
                                                    echo '<h style="color:red">COOKIE DIE</h>';
                                                }
                                                ?>
                                            </td>
                                            <td>
                                                <span type="button" onclick="active(<?= $echo->id ?>)"
                                                      class="badge badge-success m-1" data-toggle="tooltip"
                                                      title="Nhấp vào để bật BOT"><i class="fa fa-toggle-on"
                                                                                     aria-hidden="true"></i> ON - OFF</span>
                                                <span type="button" onclick="sualike(<?= $echo->id ?>)"
                                                      class="badge badge-info m-1" data-toggle="tooltip"
                                                      title="Nhấp vào để chỉnh sửa"><h>Sửa Gói</h></span>
                                                <span type="button" onclick="remove(<?= $echo->id ?>)"
                                                      class="badge badge-danger m-1" data-toggle="tooltip"
                                                      title="Nhấp vào để xóa ID"><h>Gỡ acc<h></span>
                                            </td>

                                            <td>
                                                <div class="media">
                                                    <div class="avatar">
                                                        <img class="w-circle-icon rounded-circle ml-2 mt-2 mr-3"
                                                             src="https://graph.facebook.com/<?= $echo->idfb ?>/picture?type=large"
                                                             style="margin-left:-10px;width:50px;height:50px">
                                                    </div>
                                                    <div class="media-body">
                                                        <b class="user-title">
                                                            <span class="badge badge-success text-uppercase mt-2"><?= $echo->name ?></span>
                                                            <p>
                                                                <span class="badge badge-secondary text-uppercase mt-2"><?= $echo->idfb ?></span>
                                                            </p></b>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <h style="color:black"><?= $echo->username ?></h>
                                            </td>
                                            <td>
                                                <h style="color:green">
                                                    <?php
                                                    if ($echo->camxuc == 1) {
                                                        echo 'LIKE <img src="../img/icon/LIKE.gif" width="20" height="20" data-toggle="tooltip" title="" data-original-title="LIKE">';
                                                    }
                                                    if ($echo->camxuc == 2) {
                                                        echo 'Thả Tim <img src="../img/icon/LOVE.gif" width="20" height="20" data-toggle="tooltip" title="" data-original-title="LOVE">';
                                                    }
                                                    if ($echo->camxuc == 3) {
                                                        echo 'Bất Ngờ <img src="../img/icon/WOW.gif" width="20" height="20" data-toggle="tooltip" title="" data-original-title="WOW">';
                                                    }
                                                    if ($echo->camxuc == 4) {
                                                        echo 'Haha <img src="../img/icon/HAHA.gif" width="20" height="20" data-toggle="tooltip" title="" data-original-title="HaHa">';
                                                    }
                                                    if ($echo->camxux == 5) {
                                                        echo 'Phẩn Nộ <img src="../img/icon/ANGRY.gif" width="20" height="20" data-toggle="tooltip" title="" data-original-title="ANGRY">';
                                                    }
                                                    if ($echo->camxuc == 6) {
                                                        echo 'Buồn <img src="../img/icon/SAD.gif" width="20" height="20" data-toggle="tooltip" title="" data-original-title="SAD">';
                                                    }
                                                    if ($echo->camxuc == 'all') {
                                                        echo 'Tất Cả';
                                                    }
                                                    ?>
                                                </h>
                                            </td>

                                            <td>
                                                <h data-toggle="tooltip" title="Định Dạng Like" style="color:blue">
                                                    <?= $echo->limitpost ?>
                                                    <h style="color:#333">Bài/Ngày</h>
                                                </h>
                                            </td>
                                            <td>
                                                <h data-toggle="tooltip" title="Thời Gian Cron"
                                                   style="color:green"><?= $echo->time_start ?>h <i
                                                            class="fa fa-angle-right"
                                                            aria-hidden="true"></i> <?= $echo->time_end ?>h
                                                </h>
                                                Việt Nam
                                            </td>
                                            <td>
                                                <h data-toggle="tooltip" title="Tổng Thời Gian"
                                                   style="color:blue"><?= $het_han ?></h>
                                            </td>
                                            <td>
                                                <h style="color:#333"><?= $echo->ghichu ?></h>
                                            </td>

                                        </tr>
                                    <?php } ?>
                                    </tbody>
                                    </thead>
                                </table>
                            </div>
                            <script type="text/javascript">
                                $(document).ready(function () {
                                    var table = $('#danh-sach-bot-like').DataTable({
                                        lengthChange: true,
                                        "aaSorting": [
                                            [0, "desc"]
                                        ],
                                        "iDisplayLength": 5,
                                        "aLengthMenu": [
                                            [5, 10, 20, 30, 40, 50, 100, 200, 500, 1000, -1],
                                            [5, 10, 20, 30, 40, 50, 100, 200, 500, 1000, "Tất cả"]
                                        ],
                                        "oLanguage": {
                                            "lengthMenu": "Hiển thị _MENU_ mục",
                                            "zeroRecords": "Không tìm thấy kết quả",
                                            "sInfo": "Hiển Thị _START_ trong _END_ của _TOTAL_ mục",
                                            "sEmptyTable": "Không có dữ liệu trong bảng",
                                            "sInfoEmpty": "Hiển Thị 0 trong 0 của 0 bảng",
                                            "sInfoFiltered": "(Đã lọc từ _MAX_ tổng bảng)",
                                            "sInfoPostFix": "",
                                            "sDecimal": "",
                                            "sThousands": ",",
                                            "sLengthMenu": "Hiển thị _MENU_ mục",
                                            "sLoadingRecords": "Đang tải...",
                                            "sProcessing": "Processing...",
                                            "sSearch": "Tiềm kiếm:",
                                            "sZeroRecords": "Không tìm thấy kết quả",
                                            "sSearchPlaceholder": "Nhập từ cần tìm...",
                                            "oPaginate": {
                                                "sFirst": "ĐẦU",
                                                "sLast": "Cuối",
                                                "sNext": "Tiếp",
                                                "sPrevious": "Trước"
                                            },
                                            "oAria": {
                                                "sSortAscending": ": ASC Tăng Dần",
                                                "sSortDescending": ": DESC Giảm Dần"
                                            }
                                        }
                                    });
                                    table.buttons().container().appendTo('#example_wrapper .col-md-6:eq(0)');
                                })

                                function remove(id) {
                                    const swalWithBootstrapButtons = Swal.mixin({
                                        customClass: {
                                            confirmButton: 'm-1 btn-sm btn-success',
                                            cancelButton: 'm-1 btn-sm btn-danger'
                                        },
                                        buttonsStyling: true
                                    })
                                    swalWithBootstrapButtons.fire({
                                        title: 'Xóa user BOT?',
                                        text: "Việc này không thể hoàn tác!",
                                        icon: '',
                                        showCancelButton: true,
                                        confirmButtonText: 'Đồng ý',
                                        cancelButtonText: 'Hoàn Tác',
                                        reverseButtons: false
                                    }).then((result) => {
                                        if (result.value) {
                                            $.post('API/setting-bot-like.php', {
                                                type: 'remove',
                                                id: id
                                            }, function (data) {
                                                Data = JSON.parse(data);
                                                if (Data.reload) {
                                                    setTimeout(() => {
                                                        location.reload()
                                                    }, Data.time)
                                                }
                                                Swal.fire(Data.title, Data.text, Data.type);
                                            })
                                        }
                                    })
                                    return false;
                                }

                                function active(id) {
                                    const swalWithBootstrapButtons = Swal.mixin({
                                        customClass: {
                                            confirmButton: 'm-1 btn-sm btn-success',
                                            cancelButton: 'm-1 btn-sm btn-danger'
                                        },
                                        buttonsStyling: true
                                    })
                                    swalWithBootstrapButtons.fire({
                                        title: 'Bật - Tắt BOT?',
                                        text: "Bạn có muốn Bật hoặc Tắt id: " + id + "!",
                                        icon: '',
                                        showCancelButton: true,
                                        confirmButtonText: 'Đồng ý',
                                        cancelButtonText: 'Hủy',
                                        reverseButtons: false
                                    }).then((result) => {
                                        if (result.value) {
                                            $.post('API/setting-bot-like.php', {
                                                type: 'active',
                                                id: id
                                            }, function (data) {
                                                Data = JSON.parse(data);
                                                if (Data.loading) {
                                                    setTimeout(() => {
                                                        location.reload()
                                                    }, Data.time)
                                                }
                                                Swal.fire(Data.title, Data.text, Data.type);
                                            })
                                        }
                                    })
                                    return false;
                                }
                            </script>
                            <!-- /./ -->
                        </div>
                        <div class="tab-pane" id="log-like" role="tabpanel" aria-labelledby="LICH-SU-BOT-LIKE">
                            <!-- /./ -->
                            <div class="table-responsive">
                                <table id="lich-su-like"
                                       class="table table-bordered dataTable nowrap scroll-horizontal-vertical">
                                    <thead>
                                    <tr>
                                        <th>STT</th>
                                        <th>Account</th>
                                        <th>Bài viết đã TT</th>
                                        <th>Loại cảm xúc</th>
                                        <th>Ngày TT</th>
                                    </tr>
                                    <tbody>
                                    <?php
                                    $SQL_cookie = mysqli_query($kunloc, "SELECT * FROM log_like WHERE username= '$username'");
                                    while ($echo = mysqli_fetch_object($SQL_cookie)) {
                                        ?>
                                        <tr class="table">
                                            <td><?= $echo->id; ?></td>
                                            <td><?= $echo->username; ?></td>
                                            <td>
                                                <h style="color:black"><a target="_blank"
                                                                          href="https://facebook.com/<?= $echo->post ?>"><?= $echo->post ?>
                                                </h>
                                            </td>
                                            <td>
                                                <h style="color:green">
                                                    <?php
                                                    if ($echo->type == 'LIKE') {
                                                        echo 'LIKE <img src="../img/icon/LIKE.gif" width="20" height="20" data-toggle="tooltip" title="" data-original-title="LIKE">';
                                                    }
                                                    if ($echo->type == 'LOVE') {
                                                        echo 'Thả Tim <img src="../img/icon/LOVE.gif" width="20" height="20" data-toggle="tooltip" title="" data-original-title="LOVE">';
                                                    }
                                                    if ($echo->type == 'WOW') {
                                                        echo 'Bất Ngờ <img src="../img/icon/WOW.gif" width="20" height="20" data-toggle="tooltip" title="" data-original-title="WOW">';
                                                    }
                                                    if ($echo->type == 'HAHA') {
                                                        echo 'Haha <img src="../img/icon/HAHA.gif" width="20" height="20" data-toggle="tooltip" title="" data-original-title="HaHa">';
                                                    }
                                                    if ($echo->type == 'ANRGY') {
                                                        echo 'Phẩn Nộ <img src="../img/icon/ANGRY.gif" width="20" height="20" data-toggle="tooltip" title="" data-original-title="ANGRY">';
                                                    }
                                                    if ($echo->type == 'SAD') {
                                                        echo 'Buồn <img src="../img/icon/SAD.gif" width="20" height="20" data-toggle="tooltip" title="" data-original-title="SAD">';
                                                    }
                                                    ?>
                                                </h>
                                            </td>
                                            <td>
                                                <h style="color:#333"><?= date("H:i d/m/Y", $echo->time) ?></h>
                                            </td>
                                        </tr>
                                    <?php } ?>
                                    </tbody>
                                    </thead>
                                </table>
                            </div>
                            <script type="text/javascript">
                                $(document).ready(function () {
                                    var table = $('#lich-su-like').DataTable({
                                        lengthChange: true,
                                        "aaSorting": [
                                            [0, "desc"]
                                        ],
                                        "iDisplayLength": 5,
                                        "aLengthMenu": [
                                            [5, 10, 20, 30, 40, 50, 100, 200, 500, 1000, -1],
                                            [5, 10, 20, 30, 40, 50, 100, 200, 500, 1000, "Tất cả"]
                                        ],
                                        "oLanguage": {
                                            "lengthMenu": "Hiển thị _MENU_ mục",
                                            "zeroRecords": "Không tìm thấy kết quả",
                                            "sInfo": "Hiển Thị _START_ trong _END_ của _TOTAL_ mục",
                                            "sEmptyTable": "Không có dữ liệu trong bảng",
                                            "sInfoEmpty": "Hiển Thị 0 trong 0 của 0 bảng",
                                            "sInfoFiltered": "(Đã lọc từ _MAX_ tổng bảng)",
                                            "sInfoPostFix": "",
                                            "sDecimal": "",
                                            "sThousands": ",",
                                            "sLengthMenu": "Hiển thị _MENU_ mục",
                                            "sLoadingRecords": "Đang tải...",
                                            "sProcessing": "Processing...",
                                            "sSearch": "Tiềm kiếm:",
                                            "sZeroRecords": "Không tìm thấy kết quả",
                                            "sSearchPlaceholder": "Nhập từ cần tìm...",
                                            "oPaginate": {
                                                "sFirst": "ĐẦU",
                                                "sLast": "Cuối",
                                                "sNext": "Tiếp",
                                                "sPrevious": "Trước"
                                            },
                                            "oAria": {
                                                "sSortAscending": ": ASC Tăng Dần",
                                                "sSortDescending": ": DESC Giảm Dần"
                                            }
                                        }
                                    });
                                    table.buttons().container().appendTo('#example_wrapper .col-md-6:eq(0)');
                                })
                            </script>
                        </div>

                    </div>

                </div>
            </div>
        </div>


        <!-- END BOT LIKE -->
        <!-- BOT CMT -->
        <div class="col-lg-6">
            <div class="card bg-secondary">
                <div class="card-header"><b class="header-title text-white font-weight-bold h5"><i
                                class="fa fa-heart"></i> Cấu hình bot bình luận</b></div>
                <div class="card-body bg-white">
                    <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                        <li class="nav-item ">
                            <a class="nav-link font-weight-bold active" id="BOTCMT" data-toggle="pill" href="#bot-cmt"
                               role="tab" aria-controls="pills-home" aria-selected="true">Cài đặt</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link font-weight-bold" id="QUAN-LI-BOT-CMT" data-toggle="pill"
                               href="#quan-li-cmt" role="tab" aria-controls="pills-profile" aria-selected="false">Quản
                                lí gói <span
                                        class="badge badge-success"><?= mysqli_num_rows(mysqli_query($kunloc, "SELECT id FROM botcmt WHERE username = '$username'")); ?></span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link font-weight-bold" id="LICH-SU-BOT-CMT" data-toggle="pill" href="#log-cmt"
                               role="tab" aria-controls="pills-contact" aria-selected="false">Lịch sử CMT <span
                                        class="badge badge-success"><?= mysqli_num_rows(mysqli_query($kunloc, "SELECT id FROM log_cmt WHERE username = '$username'")); ?></span></a>
                        </li>
                    </ul>
                    <div class="tab-content" id="pills-tabContent">
                        <div class="tab-pane show active" id="bot-cmt" role="tabpanel" aria-labelledby="BOTCMT">
                            <!-- /./ -->
                            <form method="post" action="#">
                                <div class="form-group">
                                    <label class="font-weight-bold">Cookie:</label>
                                    <textarea id="cookie_cmt" class="form-control"
                                              placeholder="Vui lòng điền cookie của bạn...."></textarea>
                                </div>
                                <div class="form-group">
                                    <label class="font-weight-bold">Nội dung (Mỗi cmt Xuống dòng):</label>
                                    <textarea id="noidung" class="form-control"
                                              placeholder="Vui lòng điền cmt của bạn...."></textarea>
                                </div>
                                <!-- /./ -->
                                <!-- /./ -->
                                <div class="col-sm-13 d-none">
                                    <div class="form-group">
                                        <label class="form-label" style="color:black">Chế Độ BOT</label>
                                        <select name="mode_bot_cmt" id="mode_bot_cmt" class="custom-select"
                                                style="border-radius:25px" required>
                                            <option value="none">Chặn group-page</option>
                                            <option value="like">Lấy Tất Cả</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="irow row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label class="form-label" style="color:black">Bắt Đầu 0h > 23h</label>
                                            <select class="custom-select" name="time_start_cmt" id="time_start_cmt"
                                                    style="border-radius:25px" required>
                                                <?php for ($i = 1; $i < 24; $i++): ?>
                                                    <option value="<?= $i ?>"><?= $i ?>:00</option>
                                                <?php endfor; ?>
                                            </select>

                                        </div>
                                    </div>
                                    <!-- /./ -->
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label class="form-label" style="color:black">Kết Thúc 0h > 23h</label>
                                            <select class="custom-select" name="time_end_cmt" id="time_end_cmt"
                                                    style="border-radius:25px" required>
                                                <?php for ($i = 1; $i < 24; $i++): ?>
                                                    <option value="<?= $i ?>"><?= $i ?>:00</option>
                                                <?php endfor; ?>
                                            </select>
                                        </div>
                                    </div>

                                </div>
                                <!-- /./ -->
                                <!-- /./ -->
                                <div class="irow row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label class="form-label" style="color:black">Giới hạn bài trong
                                                ngày</label>
                                            <select name="limitpost_cmt" id="limitpost_cmt" class="custom-select"
                                                    style="border-radius:25px" required>
                                                <option value="5">5 Bài</option>
                                                <option value="10">10 Bài</option>
                                                <option value="20">20 Bài</option>
                                                <option value="50">50 Bài</option>
                                                <option value="100">100 Bài</option>
                                                <option value="200">200 Bài</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label class="form-label" style="color:black">Thời Gian Cài BOT</label>
                                            <select name="time_cmt" id="time_cmt" class="custom-select"
                                                    style="border-radius:25px" required>
                                                <option value="30">1 Tháng</option>
                                                <option value="60">2 Tháng</option>
                                                <option value="90">3 Tháng</option>
                                                <option value="120">4 Tháng</option>
                                                <option value="180">6 Tháng</option>
                                            </select>
                                        </div>
                                    </div>

                                </div>
                                <!-- /./ -->
                                <div class="col-sm-13">
                                    <div class="form-group">
                                        <label class="form-label" style="color:black">Ghi chú:</label>
                                        <textarea class="form-control" rows="2" id="ghichu_cmt"
                                                  placeholder="Để lại một vài ghi chú, ví dụ như ngày hết hạn."></textarea>
                                    </div>
                                </div>
                                <!-- /./ -->
                                <div class="col-sm-13">
                                    <div class="form-group text-left">
                                        <button type="submit" id="submit_cmt" class="btn btn-outline-danger m-1"
                                                data-toggle="tooltip" title="Nhấp vào đây để cài">Tiến Hành Cài Đặt
                                        </button>
                                    </div>
                                </div>

                            </form>
                            <!-- /./-->
                            <script type="text/javascript">
                                $('#submit_cmt').click(function () {
                                    var cookie = $('#cookie_cmt').val().trim();
                                    var noidung = $('#noidung').val().trim();
                                    var limitpost = $('#limitpost_cmt').val();
                                    var mode_bot_cmt = $('#mode_bot_cmt').val();
                                    var time_start = $('#time_start_cmt').val();
                                    var time_end = $('#time_end_cmt').val();
                                    var time = $('#time_cmt').val();
                                    var ghichu = $('#ghichu_cmt').val();
                                    if (cookie == '' || noidung == '' || mode_bot_cmt == '' || limitpost == '' || time_start == '' || time_end == '' || time == '' || ghichu == '') {
                                        Swal.fire(
                                            "Yêu cầu khi cài bot!",
                                            "Bạn cần điền đầy đủ các trương ở trên để tiến hành cài bot cảm xúc",
                                            "error"
                                        );
                                        return false;
                                    }
                                    $('#submit_cmt').prop('disabled', true).html('Đang Kiểm Tra...')
                                    $.post('API/api-bot-cmt.php', {
                                        cookie: cookie,
                                        noidung: noidung,
                                        limitpost: limitpost,
                                        time_start: time_start,
                                        time_end: time_end,
                                        mode_bot: mode_bot_cmt,
                                        time: time,
                                        ghichu: ghichu
                                    }, function (data) {
                                        Data = JSON.parse(data);
                                        if (Data.reload) {
                                            setTimeout(() => {
                                                location.reload()
                                            }, Data.time)
                                        }
                                        Swal.fire(Data.title, Data.text, Data.type);
                                        $('#submit_cmt').prop('disabled', false).html('Hoàn Thành Kiểm Tra')
                                        return false;
                                    })
                                });
                            </script>
                        </div>
                        <div class="tab-pane" id="quan-li-cmt" role="tabpanel" aria-labelledby="QUAN-LI-BOT-CMT">
                            <!-- /./ -->
                            <div class="table-responsive">
                                <table id="danh-sach-bot-cmt"
                                       class="table table-bordered dataTable nowrap scroll-horizontal-vertical">
                                    <thead>
                                    <tr>
                                        <th>Status</th>
                                        <th>Cài Đặt</th>
                                        <th>Trang Cá Nhân</th>
                                        <th>Người Thêm</th>
                                        <th>Nội dung</th>
                                        <th>Limit Post</th>
                                        <th>Thời gian Cron</th>
                                        <th>Thòi Gian BOT</th>
                                        <th>Ghi Chú</th>
                                    </tr>
                                    <tbody>
                                    <?php
                                    $SQL_cookie = mysqli_query($kunloc, "SELECT * FROM botcmt WHERE username= '$username'");
                                    while ($echo = mysqli_fetch_object($SQL_cookie)) {
                                        $conlai2 = $echo->date - time();
                                        $tongtime2 = round($conlai2 / (24 * 3600));
                                        if ($tongtime2 < 1) {
                                            $het_han2 = '<b style="color:red">Gói Hết Hạn</b>';
                                        } else {
                                            $het_han2 = $tongtime2 . " Ngày";
                                        }
                                        ?>
                                        <tr class="table">
                                            <td>
                                                <?php
                                                if ($echo->mode == 'bat') {
                                                    echo '<h style="color:green">Bật</h>';
                                                } else if ($echo->mode == 'tat') {
                                                    echo '<h style="color:red">Tắt</h>';
                                                }
                                                ?>
                                                -
                                                <?php
                                                if ($echo->trangthai == 'live') {
                                                    echo '<h style="color:green">COOKIE LIVE</h>';
                                                } else if ($echo->trangthai == 'die') {
                                                    echo '<h style="color:red">COOKIE DIE</h>';
                                                }
                                                ?>
                                            </td>
                                            <td>
                                                <span type="button" onclick="active_cmt(<?= $echo->id ?>)"
                                                      class="badge badge-success m-1" data-toggle="tooltip"
                                                      title="Nhấp vào để bật BOT"><i class="fa fa-toggle-on"
                                                                                     aria-hidden="true"></i> ON - OFF</span>
                                                <span type="button" onclick="suacmt(<?= $echo->id ?>)"
                                                      class="badge badge-info m-1" data-toggle="tooltip"
                                                      title="Nhấp vào để chỉnh sửa"><h>Sửa Gói</h></span>

                                                <span type="button" onclick="remove_cmt(<?= $echo->id ?>)"
                                                      class="badge badge-danger m-1" data-toggle="tooltip"
                                                      title="Nhấp vào để xóa ID"><h>Gỡ acc<h></span>
                                            </td>

                                            <td>
                                                <div class="media">
                                                    <div class="avatar">
                                                        <img class="w-circle-icon rounded-circle ml-2 mt-2 mr-3"
                                                             src="https://graph.facebook.com/<?= $echo->idfb ?>/picture?type=large"
                                                             style="margin-left:-10px;width:50px;height:50px">
                                                    </div>
                                                    <div class="media-body">
                                                        <b class="user-title">
                                                            <span class="badge badge-success text-uppercase mt-2"><?= $echo->name ?></span>
                                                            <p>
                                                                <span class="badge badge-secondary text-uppercase mt-2"><?= $echo->idfb ?></span>
                                                            </p></b>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <h style="color:black"><?= $echo->username ?></h>
                                            </td>
                                            <td>
                                                <textarea readonly style="height:100px"
                                                          class="form-control"><?= $echo->noidung ?></textarea>
                                            </td>

                                            <td>
                                                <h data-toggle="tooltip" title="Định Dạng Like" style="color:blue">
                                                    <?= $echo->limitpost ?>
                                                    <h style="color:#333">Bài/Phút</h>
                                                </h>
                                            </td>
                                            <td>
                                                <h data-toggle="tooltip" title="Thời Gian Cron"
                                                   style="color:green"><?= $echo->time_start ?>h <i
                                                            class="fa fa-angle-right"
                                                            aria-hidden="true"></i> <?= $echo->time_end ?>h
                                                </h>
                                                Việt Nam
                                            </td>
                                            <td>
                                                <h data-toggle="tooltip" title="Tổng Thời Gian"
                                                   style="color:blue"><?= $het_han2 ?></h>
                                            </td>
                                            <td>
                                                <h style="color:#333"><?= $echo->ghichu ?></h>
                                            </td>

                                        </tr>
                                    <?php } ?>
                                    </tbody>
                                    </thead>
                                </table>
                            </div>
                            <script type="text/javascript">
                                $(document).ready(function () {
                                    var table = $('#danh-sach-bot-cmt').DataTable({
                                        lengthChange: true,
                                        "aaSorting": [
                                            [0, "desc"]
                                        ],
                                        "iDisplayLength": 5,
                                        "aLengthMenu": [
                                            [5, 10, 20, 30, 40, 50, 100, 200, 500, 1000, -1],
                                            [5, 10, 20, 30, 40, 50, 100, 200, 500, 1000, "Tất cả"]
                                        ],
                                        "oLanguage": {
                                            "lengthMenu": "Hiển thị _MENU_ mục",
                                            "zeroRecords": "Không tìm thấy kết quả",
                                            "sInfo": "Hiển Thị _START_ trong _END_ của _TOTAL_ mục",
                                            "sEmptyTable": "Không có dữ liệu trong bảng",
                                            "sInfoEmpty": "Hiển Thị 0 trong 0 của 0 bảng",
                                            "sInfoFiltered": "(Đã lọc từ _MAX_ tổng bảng)",
                                            "sInfoPostFix": "",
                                            "sDecimal": "",
                                            "sThousands": ",",
                                            "sLengthMenu": "Hiển thị _MENU_ mục",
                                            "sLoadingRecords": "Đang tải...",
                                            "sProcessing": "Processing...",
                                            "sSearch": "Tiềm kiếm:",
                                            "sZeroRecords": "Không tìm thấy kết quả",
                                            "sSearchPlaceholder": "Nhập từ cần tìm...",
                                            "oPaginate": {
                                                "sFirst": "ĐẦU",
                                                "sLast": "Cuối",
                                                "sNext": "Tiếp",
                                                "sPrevious": "Trước"
                                            },
                                            "oAria": {
                                                "sSortAscending": ": ASC Tăng Dần",
                                                "sSortDescending": ": DESC Giảm Dần"
                                            }
                                        }
                                    });
                                    table.buttons().container().appendTo('#example_wrapper .col-md-6:eq(0)');
                                })

                                function remove_cmt(id) {
                                    const swalWithBootstrapButtons = Swal.mixin({
                                        customClass: {
                                            confirmButton: 'm-1 btn-sm btn-success',
                                            cancelButton: 'm-1 btn-sm btn-danger'
                                        },
                                        buttonsStyling: true
                                    })
                                    swalWithBootstrapButtons.fire({
                                        title: 'Xóa user BOT?',
                                        text: "Việc này không thể hoàn tác!",
                                        icon: '',
                                        showCancelButton: true,
                                        confirmButtonText: 'Đồng ý',
                                        cancelButtonText: 'Hoàn Tác',
                                        reverseButtons: false
                                    }).then((result) => {
                                        if (result.value) {
                                            $.post('API/setting-bot-cmt.php', {
                                                type: 'remove',
                                                id: id
                                            }, function (data) {
                                                Data = JSON.parse(data);
                                                if (Data.reload) {
                                                    setTimeout(() => {
                                                        location.reload()
                                                    }, Data.time)
                                                }
                                                Swal.fire(Data.title, Data.text, Data.type);
                                            })
                                        }
                                    })
                                    return false;
                                }

                                function active_cmt(id) {
                                    const swalWithBootstrapButtons = Swal.mixin({
                                        customClass: {
                                            confirmButton: 'm-1 btn-sm btn-success',
                                            cancelButton: 'm-1 btn-sm btn-danger'
                                        },
                                        buttonsStyling: true
                                    })
                                    swalWithBootstrapButtons.fire({
                                        title: 'Bật - Tắt BOT?',
                                        text: "Bạn có muốn Bật hoặc Tắt id: " + id + "!",
                                        icon: '',
                                        showCancelButton: true,
                                        confirmButtonText: 'Đồng ý',
                                        cancelButtonText: 'Hủy',
                                        reverseButtons: false
                                    }).then((result) => {
                                        if (result.value) {
                                            $.post('API/setting-bot-cmt.php', {
                                                type: 'active',
                                                id: id
                                            }, function (data) {
                                                Data = JSON.parse(data);
                                                if (Data.loading) {
                                                    setTimeout(() => {
                                                        location.reload()
                                                    }, Data.time)
                                                }
                                                Swal.fire(Data.title, Data.text, Data.type);
                                            })
                                        }
                                    })
                                    return false;
                                }
                            </script>
                            <!-- /./ -->
                        </div>
                        <div class="tab-pane" id="log-cmt" role="tabpanel" aria-labelledby="LICH-SU-BOT-CMT">
                            <!-- /./ -->
                            <div class="table-responsive">
                                <table id="lich-su-cmt"
                                       class="table table-bordered dataTable nowrap scroll-horizontal-vertical">
                                    <thead>
                                    <tr>
                                        <th>STT</th>
                                        <th>Account</th>
                                        <th>Bài viết đã TT</th>
                                        <th>Nội dung</th>
                                        <th>Ngày TT</th>
                                    </tr>
                                    <tbody>
                                    <?php
                                    $SQL_cookie = mysqli_query($kunloc, "SELECT * FROM log_cmt WHERE username= '$username'");
                                    while ($echo = mysqli_fetch_object($SQL_cookie)) {
                                        ?>
                                        <tr class="table">
                                            <td><?= $echo->id; ?></td>
                                            <td><?= $echo->username; ?></td>
                                            <td>
                                                <h style="color:black"><a target="_blank"
                                                                          href="https://facebook.com/<?= $echo->post ?>"><?= $echo->post ?>
                                                </h>
                                            </td>
                                            <td>
                                                <h style="color:green">
                                                    <?= $echo->noidung ?>
                                                </h>
                                            </td>
                                            <td>
                                                <h style="color:#333"><?= date("H:i d/m/Y", $echo->time) ?></h>
                                            </td>
                                        </tr>
                                    <?php } ?>
                                    </tbody>
                                    </thead>
                                </table>
                            </div>
                            <script type="text/javascript">
                                $(document).ready(function () {
                                    var table = $('#lich-su-cmt').DataTable({
                                        lengthChange: true,
                                        "aaSorting": [
                                            [0, "desc"]
                                        ],
                                        "iDisplayLength": 5,
                                        "aLengthMenu": [
                                            [5, 10, 20, 30, 40, 50, 100, 200, 500, 1000, -1],
                                            [5, 10, 20, 30, 40, 50, 100, 200, 500, 1000, "Tất cả"]
                                        ],
                                        "oLanguage": {
                                            "lengthMenu": "Hiển thị _MENU_ mục",
                                            "zeroRecords": "Không tìm thấy kết quả",
                                            "sInfo": "Hiển Thị _START_ trong _END_ của _TOTAL_ mục",
                                            "sEmptyTable": "Không có dữ liệu trong bảng",
                                            "sInfoEmpty": "Hiển Thị 0 trong 0 của 0 bảng",
                                            "sInfoFiltered": "(Đã lọc từ _MAX_ tổng bảng)",
                                            "sInfoPostFix": "",
                                            "sDecimal": "",
                                            "sThousands": ",",
                                            "sLengthMenu": "Hiển thị _MENU_ mục",
                                            "sLoadingRecords": "Đang tải...",
                                            "sProcessing": "Processing...",
                                            "sSearch": "Tiềm kiếm:",
                                            "sZeroRecords": "Không tìm thấy kết quả",
                                            "sSearchPlaceholder": "Nhập từ cần tìm...",
                                            "oPaginate": {
                                                "sFirst": "ĐẦU",
                                                "sLast": "Cuối",
                                                "sNext": "Tiếp",
                                                "sPrevious": "Trước"
                                            },
                                            "oAria": {
                                                "sSortAscending": ": ASC Tăng Dần",
                                                "sSortDescending": ": DESC Giảm Dần"
                                            }
                                        }
                                    });
                                    table.buttons().container().appendTo('#example_wrapper .col-md-6:eq(0)');
                                })
                            </script>
                        </div>

                    </div>

                </div>
            </div>
        </div>

        <!--support-->
        <!--end support-->

    </div>
    <!-- END BOT CMT -->
    <br>
